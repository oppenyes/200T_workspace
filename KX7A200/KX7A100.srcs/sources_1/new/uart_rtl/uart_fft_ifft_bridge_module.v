`timescale 1ns / 1ps

// Simulation-stage, two-core FFT/IFFT chain. The UART unpacking and forward
// FFT data path below follow the verified uart_fft_bridge_module.
module uart_fft_ifft_bridge_module (
    input           iw_sys_clk,
    input           iw_sys_rst,
    input           iw_uart_rx_valid,
    input  [511:0]  iw_uart_rx_data,
    input  [6:0]    iw_uart_rx_num,
    output          ow_uart_frame_ready,
    output          ow_ifft_frame_done,
    output [12:0]   ow_fft_input_count,
    output [12:0]   ow_fft_output_count,
    output [12:0]   ow_ifft_input_count,
    output [12:0]   ow_ifft_output_count
);

localparam [12:0] FFT_POINTS = 13'd4096;
// Verified forward config: FWD_INV bit 0 = 1, SCALE_SCH[12:1] = 12'hAAA.
localparam [15:0] FFT_CONFIG_TDATA  = 16'h1555;
// Generated xfft_0 demo TB: FWD_INV is bit 0, SCALE_SCH is [12:1].
// Inverse = 0, zero shifts = 0. Xilinx IFFT has no implicit 1/N.
// Forward 1/4096 * unnormalized inverse 4096 = unity overall gain.
localparam [15:0] IFFT_CONFIG_TDATA = 16'h0000;

localparam [3:0] ST_IDLE         = 4'd0;
localparam [3:0] ST_UNPACK       = 4'd1;
localparam [3:0] ST_FFT_CONFIG   = 4'd2;
localparam [3:0] ST_FFT_SEND     = 4'd3;
localparam [3:0] ST_FFT_RECEIVE  = 4'd4;
localparam [3:0] ST_IFFT_CONFIG  = 4'd5;
localparam [3:0] ST_IFFT_SEND    = 4'd6;
localparam [3:0] ST_IFFT_RECEIVE = 4'd7;
localparam [3:0] ST_DONE         = 4'd8;

reg [3:0] r_state, r_next_state;
reg [511:0] r_uart_frame_data;
reg [6:0] r_uart_frame_num;
reg [5:0] r_frame_sample_index;
reg [5:0] r_frame_sample_count;

reg signed [15:0] r_fft_input_mem [0:4095];
reg signed [15:0] r_fft_real_mem  [0:4095];
reg signed [15:0] r_fft_imag_mem  [0:4095];
reg signed [15:0] r_ifft_real_mem [0:4095];
reg signed [15:0] r_ifft_imag_mem [0:4095];

reg [12:0] r_fft_input_count, r_fft_output_count;
reg [12:0] r_ifft_input_count, r_ifft_output_count;
reg [11:0] r_fft_input_index, r_fft_output_index;
reg [11:0] r_ifft_input_index, r_ifft_output_index;

wire [15:0] fft_config_tdata;
wire fft_config_tvalid, fft_config_tready;
wire [31:0] fft_in_tdata, fft_out_tdata;
wire [23:0] fft_out_tuser;
wire fft_in_tvalid, fft_in_tready, fft_in_tlast;
wire fft_out_tvalid, fft_out_tready, fft_out_tlast;
wire [7:0] fft_status_tdata;
wire fft_status_tvalid;
wire fft_event_frame_started, fft_event_tlast_unexpected;
wire fft_event_tlast_missing, fft_event_fft_overflow;
wire fft_event_status_channel_halt, fft_event_data_in_channel_halt;
wire fft_event_data_out_channel_halt;

wire [15:0] ifft_config_tdata;
wire ifft_config_tvalid, ifft_config_tready;
wire [31:0] ifft_in_tdata, ifft_out_tdata;
wire [23:0] ifft_out_tuser;
wire ifft_in_tvalid, ifft_in_tready, ifft_in_tlast;
wire ifft_out_tvalid, ifft_out_tready, ifft_out_tlast;
wire [7:0] ifft_status_tdata;
wire ifft_status_tvalid;
wire ifft_event_frame_started, ifft_event_tlast_unexpected;
wire ifft_event_tlast_missing, ifft_event_fft_overflow;
wire ifft_event_status_channel_halt, ifft_event_data_in_channel_halt;
wire ifft_event_data_out_channel_halt;

wire w_uart_frame_valid = iw_uart_rx_valid && (iw_uart_rx_num != 7'd0) &&
                          !iw_uart_rx_num[0];
wire w_fft_config_fire  = fft_config_tvalid && fft_config_tready;
wire w_fft_in_fire      = fft_in_tvalid && fft_in_tready;
wire w_fft_out_fire     = fft_out_tvalid && fft_out_tready;
wire w_ifft_config_fire = ifft_config_tvalid && ifft_config_tready;
wire w_ifft_in_fire     = ifft_in_tvalid && ifft_in_tready;
wire w_ifft_out_fire    = ifft_out_tvalid && ifft_out_tready;

// Identical little-endian unpacking to the verified forward FFT bridge.
function [15:0] f_uart_sample_le;
    input [511:0] frame_data;
    input [6:0] frame_num;
    input [5:0] sample_index;
    integer high_byte_lsb;
    integer low_byte_lsb;
    begin
        low_byte_lsb  = (frame_num - sample_index * 2 - 1) * 8;
        high_byte_lsb = (frame_num - sample_index * 2 - 2) * 8;
        f_uart_sample_le = {
            frame_data[high_byte_lsb +: 8],
            frame_data[low_byte_lsb  +: 8]
        };
    end
endfunction

assign ow_uart_frame_ready = (r_state == ST_IDLE);
assign ow_ifft_frame_done   = (r_state == ST_DONE);
assign ow_fft_input_count   = r_fft_input_count;
assign ow_fft_output_count  = r_fft_output_count;
assign ow_ifft_input_count  = r_ifft_input_count;
assign ow_ifft_output_count = r_ifft_output_count;

assign fft_config_tdata  = FFT_CONFIG_TDATA;
assign fft_config_tvalid = (r_state == ST_FFT_CONFIG);
assign fft_in_tdata      = {16'sd0, r_fft_input_mem[r_fft_input_index]};
assign fft_in_tvalid     = (r_state == ST_FFT_SEND);
assign fft_in_tlast      = (r_state == ST_FFT_SEND) &&
                            (r_fft_input_index == 12'd4095);
assign fft_out_tready    = 1'b1;

assign ifft_config_tdata  = IFFT_CONFIG_TDATA;
assign ifft_config_tvalid = (r_state == ST_IFFT_CONFIG);
assign ifft_in_tdata      = {r_fft_imag_mem[r_ifft_input_index],
                             r_fft_real_mem[r_ifft_input_index]};
assign ifft_in_tvalid     = (r_state == ST_IFFT_SEND);
assign ifft_in_tlast      = (r_state == ST_IFFT_SEND) &&
                             (r_ifft_input_index == 12'd4095);
assign ifft_out_tready    = 1'b1;

// 1. State register: synchronous reset only.
always @(posedge iw_sys_clk) begin
    if (iw_sys_rst)
        r_state <= ST_IDLE;
    else
        r_state <= r_next_state;
end

// 2. Next-state logic. Only ready/valid handshakes complete AXI states.
always @(*) begin
    r_next_state = r_state;
    case (r_state)
        ST_IDLE: if (w_uart_frame_valid) r_next_state = ST_UNPACK;
        ST_UNPACK: if (r_frame_sample_index == r_frame_sample_count - 1'b1) begin
            if (r_fft_input_count == FFT_POINTS - 1'b1)
                r_next_state = ST_FFT_CONFIG;
            else
                r_next_state = ST_IDLE;
        end
        ST_FFT_CONFIG: if (w_fft_config_fire) r_next_state = ST_FFT_SEND;
        ST_FFT_SEND: if (w_fft_in_fire && r_fft_input_index == 12'd4095)
            r_next_state = ST_FFT_RECEIVE;
        ST_FFT_RECEIVE: if (w_fft_out_fire && r_fft_output_index == 12'd4095)
            r_next_state = ST_IFFT_CONFIG;
        ST_IFFT_CONFIG: if (w_ifft_config_fire) r_next_state = ST_IFFT_SEND;
        ST_IFFT_SEND: if (w_ifft_in_fire && r_ifft_input_index == 12'd4095)
            r_next_state = ST_IFFT_RECEIVE;
        ST_IFFT_RECEIVE: if (w_ifft_out_fire && r_ifft_output_index == 12'd4095)
            r_next_state = ST_DONE;
        ST_DONE: r_next_state = ST_IDLE;
        default: r_next_state = ST_IDLE;
    endcase
end

// 3. Datapath registers and result memories.
always @(posedge iw_sys_clk) begin
    if (iw_sys_rst) begin
        r_uart_frame_data    <= 512'd0;
        r_uart_frame_num     <= 7'd0;
        r_frame_sample_index <= 6'd0;
        r_frame_sample_count <= 6'd0;
        r_fft_input_count    <= 13'd0;
        r_fft_output_count   <= 13'd0;
        r_ifft_input_count   <= 13'd0;
        r_ifft_output_count  <= 13'd0;
        r_fft_input_index    <= 12'd0;
        r_fft_output_index   <= 12'd0;
        r_ifft_input_index   <= 12'd0;
        r_ifft_output_index  <= 12'd0;
    end else begin
        if (r_state == ST_IDLE && w_uart_frame_valid) begin
            r_uart_frame_data    <= iw_uart_rx_data;
            r_uart_frame_num     <= iw_uart_rx_num;
            r_frame_sample_index <= 6'd0;
            r_frame_sample_count <= iw_uart_rx_num >> 1;
            if (r_fft_input_count == 13'd0) begin
                r_fft_output_count  <= 13'd0;
                r_fft_output_index  <= 12'd0;
                r_ifft_input_count  <= 13'd0;
                r_ifft_output_count <= 13'd0;
                r_ifft_input_index  <= 12'd0;
                r_ifft_output_index <= 12'd0;
            end
        end

        if (r_state == ST_UNPACK) begin
            r_fft_input_mem[r_fft_input_count] <=
                f_uart_sample_le(r_uart_frame_data, r_uart_frame_num,
                                 r_frame_sample_index);
            if (r_fft_input_count != FFT_POINTS)
                r_fft_input_count <= r_fft_input_count + 1'b1;
            if (r_frame_sample_index == r_frame_sample_count - 1'b1)
                r_frame_sample_index <= 6'd0;
            else
                r_frame_sample_index <= r_frame_sample_index + 1'b1;
        end

        if (w_fft_config_fire) r_fft_input_index <= 12'd0;
        if (w_fft_in_fire) begin
            if (r_fft_input_index == 12'd4095)
                r_fft_input_index <= 12'd0;
            else
                r_fft_input_index <= r_fft_input_index + 1'b1;
        end
        if (w_fft_out_fire && r_state == ST_FFT_RECEIVE) begin
            r_fft_real_mem[r_fft_output_index] <= fft_out_tdata[15:0];
            r_fft_imag_mem[r_fft_output_index] <= fft_out_tdata[31:16];
            if (r_fft_output_count != FFT_POINTS)
                r_fft_output_count <= r_fft_output_count + 1'b1;
            if (r_fft_output_index == 12'd4095)
                r_fft_output_index <= 12'd0;
            else
                r_fft_output_index <= r_fft_output_index + 1'b1;
        end

        if (w_ifft_config_fire) r_ifft_input_index <= 12'd0;
        if (w_ifft_in_fire) begin
            if (r_ifft_input_count != FFT_POINTS)
                r_ifft_input_count <= r_ifft_input_count + 1'b1;
            if (r_ifft_input_index == 12'd4095)
                r_ifft_input_index <= 12'd0;
            else
                r_ifft_input_index <= r_ifft_input_index + 1'b1;
        end
        if (w_ifft_out_fire && r_state == ST_IFFT_RECEIVE) begin
            r_ifft_real_mem[r_ifft_output_index] <= ifft_out_tdata[15:0];
            r_ifft_imag_mem[r_ifft_output_index] <= ifft_out_tdata[31:16];
            if (r_ifft_output_count != FFT_POINTS)
                r_ifft_output_count <= r_ifft_output_count + 1'b1;
            if (r_ifft_output_index == 12'd4095)
                r_ifft_output_index <= 12'd0;
            else
                r_ifft_output_index <= r_ifft_output_index + 1'b1;
        end
        // Preserve final counts for the completion pulse and TB summary.
        if (r_state == ST_DONE)
            r_fft_input_count <= 13'd0;
    end
end

xfft_0 u_fft (
    .aclk(iw_sys_clk),
    .s_axis_config_tdata(fft_config_tdata),
    .s_axis_config_tvalid(fft_config_tvalid),
    .s_axis_config_tready(fft_config_tready),
    .s_axis_data_tdata(fft_in_tdata),
    .s_axis_data_tvalid(fft_in_tvalid),
    .s_axis_data_tready(fft_in_tready),
    .s_axis_data_tlast(fft_in_tlast),
    .m_axis_data_tdata(fft_out_tdata),
    .m_axis_data_tuser(fft_out_tuser),
    .m_axis_data_tvalid(fft_out_tvalid),
    .m_axis_data_tready(fft_out_tready),
    .m_axis_data_tlast(fft_out_tlast),
    .m_axis_status_tdata(fft_status_tdata),
    .m_axis_status_tvalid(fft_status_tvalid),
    .m_axis_status_tready(1'b1),
    .event_frame_started(fft_event_frame_started),
    .event_tlast_unexpected(fft_event_tlast_unexpected),
    .event_tlast_missing(fft_event_tlast_missing),
    .event_fft_overflow(fft_event_fft_overflow),
    .event_status_channel_halt(fft_event_status_channel_halt),
    .event_data_in_channel_halt(fft_event_data_in_channel_halt),
    .event_data_out_channel_halt(fft_event_data_out_channel_halt)
);

xfft_0 u_ifft (
    .aclk(iw_sys_clk),
    .s_axis_config_tdata(ifft_config_tdata),
    .s_axis_config_tvalid(ifft_config_tvalid),
    .s_axis_config_tready(ifft_config_tready),
    .s_axis_data_tdata(ifft_in_tdata),
    .s_axis_data_tvalid(ifft_in_tvalid),
    .s_axis_data_tready(ifft_in_tready),
    .s_axis_data_tlast(ifft_in_tlast),
    .m_axis_data_tdata(ifft_out_tdata),
    .m_axis_data_tuser(ifft_out_tuser),
    .m_axis_data_tvalid(ifft_out_tvalid),
    .m_axis_data_tready(ifft_out_tready),
    .m_axis_data_tlast(ifft_out_tlast),
    .m_axis_status_tdata(ifft_status_tdata),
    .m_axis_status_tvalid(ifft_status_tvalid),
    .m_axis_status_tready(1'b1),
    .event_frame_started(ifft_event_frame_started),
    .event_tlast_unexpected(ifft_event_tlast_unexpected),
    .event_tlast_missing(ifft_event_tlast_missing),
    .event_fft_overflow(ifft_event_fft_overflow),
    .event_status_channel_halt(ifft_event_status_channel_halt),
    .event_data_in_channel_halt(ifft_event_data_in_channel_halt),
    .event_data_out_channel_halt(ifft_event_data_out_channel_halt)
);

endmodule
