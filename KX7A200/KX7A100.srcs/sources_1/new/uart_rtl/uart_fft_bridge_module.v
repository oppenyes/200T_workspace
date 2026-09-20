`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// UART frame to Xilinx FFT AXI-Stream bridge.
//
// UART frames are interpreted as little-endian signed 16-bit samples.  The
// completed 4096-point frame is held internally, then sent to xfft_0.  FFT
// output is retained as raw signed real/imaginary values for simulation and
// later readout logic.  All reset behavior is synchronous to iw_sys_clk.
//////////////////////////////////////////////////////////////////////////////////

module uart_fft_bridge_module(
    input                [  11: 0]             iw_fft_rd_addr                ,
    output reg           [  15: 0]             or_fft_rd_real                ,
    output reg           [  15: 0]             or_fft_rd_imag                ,
    input                                      iw_sys_clk                    ,
    input                                      iw_sys_rst                    ,

    output [12:0] ow_debug_fft_input_count,
output [11:0] ow_debug_fft_input_index,
output [11:0] ow_debug_fft_output_index,

    input             iw_uart_rx_valid,
    input  [511:0]    iw_uart_rx_data,
    input  [  6:0]    iw_uart_rx_num,
    output            ow_uart_frame_ready,

    output reg [15:0] os_axis_config_tdata,
    output reg        os_axis_config_tvalid,
    input             iw_s_axis_config_tready,

    output reg [31:0] os_axis_data_tdata,
    output reg        os_axis_data_tvalid,
    input             iw_s_axis_data_tready,
    output reg        os_axis_data_tlast,

    input  [31:0]     iw_m_axis_data_tdata,
    input  [23:0]     iw_m_axis_data_tuser,
    input             iw_m_axis_data_tvalid,
    output            os_m_axis_data_tready,
    input             iw_m_axis_data_tlast,

    output            ow_fft_frame_done,
    output [12:0]     ow_fft_input_count,
    output [12:0]     ow_fft_output_count
);

localparam [12:0] FFT_POINTS = 13'd4096;

// Xilinx FFT v9.1 uses FWD_INV in bit 0; 1 selects forward FFT.
// TODO: Confirm the SCALE_SCH field placement and desired per-stage scaling
// schedule from the generated IP GUI/documentation before hardware use.  The
// xci confirms a 16-bit config channel but does not encode this bit mapping.
localparam [15:0] FFT_CONFIG_TDATA = 16'h1555;

localparam [2:0] ST_IDLE    = 3'd0;
localparam [2:0] ST_UNPACK  = 3'd1;
localparam [2:0] ST_CONFIG  = 3'd2;
localparam [2:0] ST_SEND    = 3'd3;
localparam [2:0] ST_RECEIVE = 3'd4;
localparam [2:0] ST_DONE    = 3'd5;

reg [2:0] r_state;
reg [2:0] r_next_state;

reg [511:0] r_uart_frame_data;
reg [  6:0] r_uart_frame_num;
reg [  5:0] r_frame_sample_index;
reg [  5:0] r_frame_sample_count;

reg signed [15:0] r_fft_input_mem [0:4095];
reg signed [15:0] r_fft_real_mem  [0:4095];
reg signed [15:0] r_fft_imag_mem  [0:4095];

reg [12:0] r_fft_input_count;
reg [12:0] r_fft_output_count;
reg [11:0] r_fft_input_index;
reg [11:0] r_fft_output_index;

wire w_uart_frame_valid = iw_uart_rx_valid && (iw_uart_rx_num != 7'd0) &&
                          !iw_uart_rx_num[0];
wire w_fft_config_fire = os_axis_config_tvalid && iw_s_axis_config_tready;
wire w_fft_in_fire     = os_axis_data_tvalid && iw_s_axis_data_tready;
wire w_fft_out_fire    = iw_m_axis_data_tvalid && os_m_axis_data_tready;

// uart_rx packs the first received byte at the most-significant byte of the
// valid portion.  For byte sequence b0,b1,..., sample 0 is {b1,b0}.
function [15:0] f_uart_sample_le;
    input [511:0] frame_data;
    input [  6:0] frame_num;
    input [  5:0] sample_index;

    integer high_byte_lsb;
    integer low_byte_lsb;

    begin
        // uart_rx 中，第一个接收字节位于有效数据区域的最高字节。
        // 每个 16-bit sample 按 little-endian：
        // byte 0 = low byte
        // byte 1 = high byte

        low_byte_lsb  = (frame_num - sample_index * 2 - 1) * 8;
        high_byte_lsb = (frame_num - sample_index * 2 - 2) * 8;

        f_uart_sample_le = {
            frame_data[high_byte_lsb +: 8],
            frame_data[low_byte_lsb  +: 8]
        };
    end
endfunction

assign ow_uart_frame_ready  = (r_state == ST_IDLE);
assign os_m_axis_data_tready = 1'b1;
assign ow_fft_frame_done    = (r_state == ST_DONE);
assign ow_fft_input_count   = r_fft_input_count;
assign ow_fft_output_count  = r_fft_output_count;

// Three-process FSM: state register, transition function, and sequential data.
always @(posedge iw_sys_clk) begin
    if (iw_sys_rst)
        r_state <= ST_IDLE;
    else
        r_state <= r_next_state;
end

always @(*) begin
    r_next_state = r_state;
    case (r_state)
        ST_IDLE: begin
            if (w_uart_frame_valid)
                r_next_state = ST_UNPACK;
        end

        ST_UNPACK: begin
            if (r_frame_sample_index == (r_frame_sample_count - 1'b1)) begin
                if (r_fft_input_count == FFT_POINTS - 1'b1)
                    r_next_state = ST_CONFIG;
                else
                    r_next_state = ST_IDLE;
            end
        end

        ST_CONFIG: begin
            if (w_fft_config_fire)
                r_next_state = ST_SEND;
        end

        ST_SEND: begin
            if (w_fft_in_fire && (r_fft_input_index == FFT_POINTS - 1'b1))
                r_next_state = ST_RECEIVE;
        end

        ST_RECEIVE: begin
            if (w_fft_out_fire && (r_fft_output_index == FFT_POINTS - 1'b1))
                r_next_state = ST_DONE;
        end

        ST_DONE: r_next_state = ST_IDLE;
        default: r_next_state = ST_IDLE;
    endcase
end

always @(*) begin
    os_axis_config_tdata  = FFT_CONFIG_TDATA;
    os_axis_config_tvalid = 1'b0;
    os_axis_data_tdata    = 32'd0;
    os_axis_data_tvalid   = 1'b0;
    os_axis_data_tlast    = 1'b0;

    if (r_state == ST_CONFIG) begin
        os_axis_config_tvalid = 1'b1;
    end

    if (r_state == ST_SEND) begin
        os_axis_data_tdata  = {16'sd0, r_fft_input_mem[r_fft_input_index]};
        os_axis_data_tvalid = 1'b1;
        os_axis_data_tlast  = (r_fft_input_index == FFT_POINTS - 1'b1);
    end
end

always @(posedge iw_sys_clk) begin
    if (iw_sys_rst) begin
        r_uart_frame_data   <= 512'd0;
        r_uart_frame_num    <= 7'd0;
        r_frame_sample_index <= 6'd0;
        r_frame_sample_count <= 6'd0;
        r_fft_input_count   <= 13'd0;
        r_fft_output_count  <= 13'd0;
        r_fft_input_index   <= 12'd0;
        r_fft_output_index  <= 12'd0;
    end
    else begin
        if ((r_state == ST_IDLE) && w_uart_frame_valid) begin
            r_uart_frame_data    <= iw_uart_rx_data;
            r_uart_frame_num     <= iw_uart_rx_num;
            r_frame_sample_index <= 6'd0;
            r_frame_sample_count <= iw_uart_rx_num >> 1;

            // A new FFT frame starts with the first accepted UART frame.
            if (r_fft_input_count == 13'd0) begin
                r_fft_output_count <= 13'd0;
                r_fft_output_index <= 12'd0;
            end
        end

        if (r_state == ST_UNPACK) begin
            r_fft_input_mem[r_fft_input_count] <=
                f_uart_sample_le(r_uart_frame_data, r_uart_frame_num,
                                 r_frame_sample_index);

            if (r_fft_input_count != FFT_POINTS)
                r_fft_input_count <= r_fft_input_count + 1'b1;

            if (r_frame_sample_index == (r_frame_sample_count - 1'b1))
                r_frame_sample_index <= 6'd0;
            else
                r_frame_sample_index <= r_frame_sample_index + 1'b1;
        end

        if ((r_state == ST_CONFIG) && w_fft_config_fire) begin
            r_fft_input_index <= 12'd0;
        end

        if ((r_state == ST_SEND) && w_fft_in_fire) begin
            if (r_fft_input_index == FFT_POINTS - 1'b1)
                r_fft_input_index <= 12'd0;
            else
                r_fft_input_index <= r_fft_input_index + 1'b1;
        end

        if ((r_state == ST_RECEIVE) && w_fft_out_fire) begin
            r_fft_real_mem[r_fft_output_index] <= iw_m_axis_data_tdata[15:0];
            r_fft_imag_mem[r_fft_output_index] <= iw_m_axis_data_tdata[31:16];

            if (r_fft_output_count != FFT_POINTS)
                r_fft_output_count <= r_fft_output_count + 1'b1;

            if (r_fft_output_index == FFT_POINTS - 1'b1)
                r_fft_output_index <= 12'd0;
            else
                r_fft_output_index <= r_fft_output_index + 1'b1;
        end

        // Clear counters only after the one-cycle completion indication.
        if (r_state == ST_DONE) begin
            r_fft_input_count  <= 13'd0;
            r_fft_output_count <= r_fft_output_count;
        end
    end
end
always @(posedge iw_sys_clk) begin
    or_fft_rd_real <= r_fft_real_mem[iw_fft_rd_addr];
    or_fft_rd_imag <= r_fft_imag_mem[iw_fft_rd_addr];
end

assign ow_debug_fft_input_count  = r_fft_input_count;
assign ow_debug_fft_input_index  = r_fft_input_index;
assign ow_debug_fft_output_index = r_fft_output_index;
endmodule
