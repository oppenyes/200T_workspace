`timescale 1ns / 1ps

// DDR3 512-bit 读数据到 XFFT AXI-Stream 的拆包桥。
// 每个 512-bit 字按 [511:496] 到 [15:0] 的顺序输出 32 个 signed 16-bit 实数样本。
module ddr3_fft_bridge_module(
    input  wire         clk_i,
    input  wire         rst_n_i,

    input  wire         ddr_valid_i,
    input  wire [511:0] ddr_data_i,
    output wire         ddr_ready_o,

    output wire [15:0]  fft_config_tdata_o,
    output wire         fft_config_tvalid_o,
    input  wire         fft_config_tready_i,

    output wire [31:0]  fft_s_tdata_o,
    output wire         fft_s_tvalid_o,
    input  wire         fft_s_tready_i,
    output wire         fft_s_tlast_o,

    input  wire [31:0]  fft_m_tdata_i,
    input  wire         fft_m_tvalid_i,
    output wire         fft_m_tready_o,
    input  wire         fft_m_tlast_i,

    output wire [12:0]  fft_input_count_o,
    output wire [12:0]  fft_output_count_o
);

localparam [12:0] FFT_POINT_NUM = 13'd4096;
localparam [15:0] FFT_CONFIG_TDATA = 16'h1555;

reg         config_done_r;
reg [511:0] ddr_data_buffer_r;
reg         ddr_data_valid_r;
reg [4:0]   sample_index_r;
reg [12:0]  fft_input_count_r;
reg [12:0]  fft_output_count_r;

wire fft_config_fire_w;
wire fft_input_fire_w;
wire fft_output_fire_w;
wire [15:0] fft_sample_data_w;

assign fft_config_tdata_o  = FFT_CONFIG_TDATA;
assign fft_config_tvalid_o = !config_done_r;
assign fft_config_fire_w   = fft_config_tvalid_o && fft_config_tready_i;

// 仅在配置完成、缓存为空且本帧未满 4096 点时接收新的 DDR 数据。
assign ddr_ready_o = config_done_r && !ddr_data_valid_r &&
                     (fft_input_count_r < FFT_POINT_NUM);

// Python 发送格式：sample0 位于 64-bit 字高位；DDR 打包后 sample0 位于 [511:496]。
assign fft_sample_data_w = ddr_data_buffer_r[511 - ({4'd0, sample_index_r} << 4) -: 16];
assign fft_s_tdata_o     = {16'sd0, fft_sample_data_w};
assign fft_s_tvalid_o    = config_done_r && ddr_data_valid_r &&
                            (fft_input_count_r < FFT_POINT_NUM);
assign fft_s_tlast_o     = (fft_input_count_r == FFT_POINT_NUM - 1'b1);
assign fft_input_fire_w  = fft_s_tvalid_o && fft_s_tready_i;

// 本阶段始终接收 FFT 输出，输出计数只依据实际 AXI-Stream 握手更新。
assign fft_m_tready_o    = 1'b1;
assign fft_output_fire_w = fft_m_tvalid_i && fft_m_tready_o;

assign fft_input_count_o  = fft_input_count_r;
assign fft_output_count_o = fft_output_count_r;

always @(posedge clk_i) begin
    if (!rst_n_i) begin
        config_done_r      <= 1'b0;
        ddr_data_buffer_r  <= 512'd0;
        ddr_data_valid_r   <= 1'b0;
        sample_index_r     <= 5'd0;
        fft_input_count_r  <= 13'd0;
        fft_output_count_r <= 13'd0;
    end
    else begin
        if (fft_config_fire_w)
            config_done_r <= 1'b1;

        if (ddr_valid_i && ddr_ready_o) begin
            ddr_data_buffer_r <= ddr_data_i;
            ddr_data_valid_r  <= 1'b1;
            sample_index_r    <= 5'd0;
        end
        else if (fft_input_fire_w) begin
            fft_input_count_r <= fft_input_count_r + 1'b1;

            if (sample_index_r == 5'd31) begin
                ddr_data_valid_r <= 1'b0;
                sample_index_r   <= 5'd0;
            end
            else begin
                sample_index_r <= sample_index_r + 1'b1;
            end
        end

        if (fft_output_fire_w && (fft_output_count_r < FFT_POINT_NUM))
            fft_output_count_r <= fft_output_count_r + 1'b1;
    end
end

endmodule
