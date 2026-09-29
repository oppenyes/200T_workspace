`timescale 1ns / 1ps

// 每两个FFT 32-bit复数结果按{偶数bin, 奇数bin}打包为一个UDP 64-bit数据。
module fft_udp_tx_bridge_module(
    input  wire         clk_i,
    input  wire         rst_n_i,

    input  wire         frame_start_i,
    output wire         frame_ready_o,

    input  wire [31:0]  fft_data_i,
    input  wire         fft_valid_i,
    output wire         fft_ready_o,
    input  wire         fft_last_i,

    output wire [63:0]  udp_data_o,
    output wire         udp_valid_o,
    input  wire         udp_ready_i,

    output wire [12:0]  fft_rx_count_o,
    output wire [11:0]  udp_tx_count_o,
    output wire         frame_done_o
);

localparam [12:0] FFT_POINT_NUM = 13'd4096;
localparam [11:0] UDP_WORD_NUM  = 12'd2048;

reg         frame_active_r;
reg [31:0]  first_fft_data_r;
reg         first_fft_valid_r;
reg [63:0]  udp_data_r;
reg         udp_valid_r;
reg [12:0]  fft_rx_count_r;
reg [11:0]  udp_tx_count_r;
reg         frame_done_r;

wire fft_fire_w;
wire udp_fire_w;

assign frame_ready_o = !frame_active_r && !first_fft_valid_r && !udp_valid_r;
assign fft_ready_o = frame_active_r && !udp_valid_r &&
                     (fft_rx_count_r < FFT_POINT_NUM);
assign fft_fire_w = fft_valid_i && fft_ready_o;

assign udp_data_o  = udp_data_r;
assign udp_valid_o = udp_valid_r;
assign udp_fire_w  = udp_valid_o && udp_ready_i;

assign fft_rx_count_o = fft_rx_count_r;
assign udp_tx_count_o = udp_tx_count_r;
assign frame_done_o = frame_done_r;

always @(posedge clk_i) begin
    if (!rst_n_i) begin
        frame_active_r   <= 1'b0;
        first_fft_data_r <= 32'd0;
        first_fft_valid_r <= 1'b0;
        udp_data_r       <= 64'd0;
        udp_valid_r      <= 1'b0;
        fft_rx_count_r   <= 13'd0;
        udp_tx_count_r   <= 12'd0;
        frame_done_r     <= 1'b0;
    end
    else begin
        frame_done_r <= 1'b0;

        // fft_start_accept是DDR读取、FFT输入和FFT输出打包的唯一正式帧起点。
        if (frame_start_i && frame_ready_o) begin
            frame_active_r    <= 1'b1;
            first_fft_data_r  <= 32'd0;
            first_fft_valid_r <= 1'b0;
            udp_data_r        <= 64'd0;
            udp_valid_r       <= 1'b0;
            fft_rx_count_r    <= 13'd0;
            udp_tx_count_r    <= 12'd0;
        end
        else begin
            if (fft_fire_w) begin
                fft_rx_count_r <= fft_rx_count_r + 1'b1;

                if (!first_fft_valid_r) begin
                    first_fft_data_r  <= fft_data_i;
                    first_fft_valid_r <= 1'b1;
                end
                else begin
                    udp_data_r        <= {first_fft_data_r, fft_data_i};
                    udp_valid_r       <= 1'b1;
                    first_fft_valid_r <= 1'b0;
                end
            end

            if (udp_fire_w) begin
                udp_valid_r    <= 1'b0;
                udp_tx_count_r <= udp_tx_count_r + 1'b1;

                // 仅表示最后一个64-bit结果已写入UDP TX用户接口/FIFO。
                if (udp_tx_count_r == UDP_WORD_NUM - 1'b1) begin
                    frame_active_r <= 1'b0;
                    frame_done_r   <= 1'b1;
                end
            end
        end
    end
end

endmodule
