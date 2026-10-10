`timescale 1ns / 1ps

// 固定1024 Byte UDP包校验与转发：仅完整、无错误的128个64bit beat进入DDR写打包器。
module udp_packet_ingress_module(
    input wire user_clk,
    input wire user_rst,
    input wire dataset_clear,
    input wire dataset_write_enable,
    input wire rx_valid,
    output wire rx_ready,
    input wire [63:0] rx_data,
    input wire [7:0] rx_keep,
    input wire rx_last,
    input wire [15:0] rx_length,
    input wire rx_error,
    output wire writer_valid,
    input wire writer_ready,
    output wire [63:0] writer_data,
    output reg packet_length_error,
    output reg [22:0] udp_packet_count,
    output reg [26:0] udp_word_count,
    output wire packet_ingress_idle,
    output wire packet_forward_active
);

localparam [1:0] STATE_COLLECT = 2'd0;
localparam [1:0] STATE_FORWARD = 2'd1;
localparam [1:0] STATE_DROP = 2'd2;

reg [1:0] state_r;
reg [6:0] collect_count_r;
reg [6:0] forward_count_r;
reg packet_bad_r;
(* ram_style = "block" *) reg [63:0] packet_data_mem [0:127];

wire rx_fire_w;
wire writer_fire_w;
wire packet_word_error_w;
wire final_word_good_w;

assign rx_ready = dataset_write_enable && ((state_r == STATE_COLLECT) || (state_r == STATE_DROP));
assign writer_valid = dataset_write_enable && (state_r == STATE_FORWARD);
assign writer_data = packet_data_mem[forward_count_r];
assign packet_ingress_idle = (state_r == STATE_COLLECT) && (collect_count_r == 7'd0);
assign packet_forward_active = state_r == STATE_FORWARD;
assign rx_fire_w = rx_valid && rx_ready;
assign writer_fire_w = writer_valid && writer_ready;
assign packet_word_error_w = (rx_keep != 8'hff) || (rx_length != 16'd1024) || rx_error;
assign final_word_good_w = !packet_bad_r && !packet_word_error_w;

always @(posedge user_clk) begin
    if (user_rst || dataset_clear) begin
        state_r <= STATE_COLLECT;
        collect_count_r <= 7'd0;
        forward_count_r <= 7'd0;
        packet_bad_r <= 1'b0;
        packet_length_error <= 1'b0;
        udp_packet_count <= 23'd0;
        udp_word_count <= 27'd0;
    end
    else begin
        case (state_r)
            STATE_COLLECT: begin
                if (rx_fire_w) begin
                    packet_data_mem[collect_count_r] <= rx_data;
                    if (collect_count_r == 7'd127) begin
                        collect_count_r <= 7'd0;
                        packet_bad_r <= 1'b0;
                        if (rx_last && final_word_good_w) begin
                            forward_count_r <= 7'd0;
                            udp_packet_count <= udp_packet_count + 1'b1;
                            state_r <= STATE_FORWARD;
                        end
                        else begin
                            packet_length_error <= 1'b1;
                            if (!rx_last) begin
                                state_r <= STATE_DROP;
                            end
                        end
                    end
                    else if (rx_last) begin
                        collect_count_r <= 7'd0;
                        packet_bad_r <= 1'b0;
                        packet_length_error <= 1'b1;
                    end
                    else begin
                        collect_count_r <= collect_count_r + 1'b1;
                        if (packet_word_error_w) begin
                            packet_bad_r <= 1'b1;
                        end
                    end
                end
            end

            STATE_FORWARD: begin
                if (writer_fire_w) begin
                    udp_word_count <= udp_word_count + 1'b1;
                    if (forward_count_r == 7'd127) begin
                        forward_count_r <= 7'd0;
                        state_r <= STATE_COLLECT;
                    end
                    else begin
                        forward_count_r <= forward_count_r + 1'b1;
                    end
                end
            end

            STATE_DROP: begin
                if (rx_fire_w && rx_last) begin
                    state_r <= STATE_COLLECT;
                    collect_count_r <= 7'd0;
                    packet_bad_r <= 1'b0;
                end
            end

            default: begin
                state_r <= STATE_COLLECT;
            end
        endcase
    end
end

endmodule
