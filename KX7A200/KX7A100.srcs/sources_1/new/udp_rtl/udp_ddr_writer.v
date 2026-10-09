`timescale 1ns / 1ps

module udp_ddr_writer(
    input wire user_clk,
    input wire user_rst,
    input wire dataset_clear,
    input wire dataset_write_enable,
    input wire udp_valid,
    input wire [63:0] udp_data,
    output wire udp_ready,
    output wire drop_pulse,
    output wire wr_req_valid,
    input wire wr_req_ready,
    output wire [26:0] wr_req_addr,
    output wire [511:0] wr_req_data,
    output wire writer_pending,
    output wire partial_word,
    output wire [26:0] write_word_count,
    output wire [2:0] pack_count
);

reg [511:0] pack_data_r;
reg [2:0] pack_count_r;
reg pending_valid_r;
reg [511:0] pending_data_r;
reg [26:0] pending_addr_r;
reg [26:0] write_word_count_r;

wire udp_fire_w;
wire wr_fire_w;

assign wr_req_valid = pending_valid_r;
assign wr_req_addr = pending_addr_r;
assign wr_req_data = pending_data_r;
assign writer_pending = pending_valid_r;
assign partial_word = (pack_count_r != 3'd0);
assign write_word_count = write_word_count_r;
assign pack_count = pack_count_r;

// pending可在旧请求被接受的同周期装入新的完整512bit字。
assign udp_ready = dataset_write_enable && ((pack_count_r != 3'd7) || !pending_valid_r || wr_req_ready);
assign udp_fire_w = udp_valid && udp_ready;
assign wr_fire_w = wr_req_valid && wr_req_ready;
assign drop_pulse = udp_valid && !udp_ready;

always @(posedge user_clk) begin
    if (user_rst || dataset_clear) begin
        pack_data_r <= 512'd0;
        pack_count_r <= 3'd0;
        pending_valid_r <= 1'b0;
        pending_data_r <= 512'd0;
        pending_addr_r <= 27'd0;
        write_word_count_r <= 27'd0;
    end
    else begin
        if (wr_fire_w) begin
            pending_valid_r <= 1'b0;
        end

        if (udp_fire_w) begin
            if (pack_count_r == 3'd7) begin
                pending_data_r <= {pack_data_r[447:0], udp_data};
                pending_addr_r <= write_word_count_r;
                pending_valid_r <= 1'b1;
                write_word_count_r <= write_word_count_r + 1'b1;
                pack_data_r <= 512'd0;
                pack_count_r <= 3'd0;
            end
            else begin
                pack_data_r <= {pack_data_r[447:0], udp_data};
                pack_count_r <= pack_count_r + 1'b1;
            end
        end
    end
end

endmodule
