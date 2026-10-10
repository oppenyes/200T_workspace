`timescale 1ns / 1ps

module fft_batch_ctrl(
    input wire user_clk,
    input wire user_rst,
    input wire batch_start_request,
    input wire dataset_clear_request,
    input wire writer_pending,
    input wire write_idle,
    input wire init_calib_complete,
    input wire udp_drop_sticky,
    input wire ingress_fifo_empty,
    input wire packet_ingress_idle,
    input wire packet_forward_active,
    input wire writer_partial,
    input wire input_error_sticky,
    input wire [22:0] udp_packet_count,
    input wire [26:0] write_commit_count,
    input wire frame_reader_ready,
    input wire fft_udp_frame_ready,
    input wire udp_frame_done,
    output wire dataset_write_enable,
    output reg dataset_clear,
    output reg frame_start,
    output reg [26:0] frame_base_addr,
    output wire batch_busy,
    output reg batch_done,
    output reg [19:0] frame_index,
    output reg [19:0] batch_frame_count,
    output reg start_error
);

localparam [2:0] STATE_LOAD = 3'd0;
localparam [2:0] STATE_START_DRAIN = 3'd1;
localparam [2:0] STATE_START_FRAME = 3'd2;
localparam [2:0] STATE_WAIT_FRAME = 3'd3;
localparam [2:0] STATE_DONE = 3'd4;
localparam [2:0] STATE_READY = 3'd5;
localparam [2:0] STATE_CLEAR_DRAIN = 3'd6;
localparam [2:0] STATE_CLEAR_APPLY = 3'd7;

reg [2:0] state_r;
reg [4:0] clear_count_r;
wire drain_complete_w;
wire clear_drain_complete_w;
wire [19:0] committed_frame_count_w;
wire input_count_valid_w;

// CLEAR脉冲生效的周期仍禁止接收新UDP数据，避免数据被同步清零逻辑吞掉。
assign dataset_write_enable = ((state_r == STATE_LOAD) || (state_r == STATE_START_DRAIN) ||
                               (state_r == STATE_CLEAR_DRAIN)) && !dataset_clear;
assign batch_busy = (state_r == STATE_START_DRAIN) || (state_r == STATE_START_FRAME) ||
                    (state_r == STATE_WAIT_FRAME) || (state_r == STATE_DONE);
assign drain_complete_w = !writer_pending && !writer_partial && write_idle && init_calib_complete &&
                          ingress_fifo_empty && packet_ingress_idle;
assign clear_drain_complete_w = !writer_pending && !writer_partial && write_idle && init_calib_complete &&
                                ingress_fifo_empty && !packet_forward_active;
assign committed_frame_count_w = write_commit_count[26:7];
assign input_count_valid_w = (udp_packet_count != 23'd0) && !udp_packet_count[2:0] &&
                             !write_commit_count[3:0] &&
                             (write_commit_count[26:4] == udp_packet_count);

always @(posedge user_clk) begin
    if (user_rst) begin
        state_r <= STATE_LOAD;
        dataset_clear <= 1'b0;
        frame_start <= 1'b0;
        frame_base_addr <= 27'd0;
        batch_done <= 1'b0;
        frame_index <= 20'd0;
        batch_frame_count <= 20'd0;
        start_error <= 1'b0;
        clear_count_r <= 5'd0;
    end
    else begin
        dataset_clear <= 1'b0;
        frame_start <= 1'b0;
        batch_done <= 1'b0;

        case (state_r)
            STATE_LOAD: begin
                if (dataset_clear_request) begin
                    state_r <= STATE_CLEAR_DRAIN;
                end
                else if (batch_start_request) begin
                    state_r <= STATE_START_DRAIN;
                end
            end

            STATE_START_DRAIN: begin
                if (drain_complete_w) begin
                    if (udp_drop_sticky || input_error_sticky || !input_count_valid_w ||
                        (committed_frame_count_w == 20'd0)) begin
                        start_error <= 1'b1;
                        state_r <= STATE_READY;
                    end
                    else begin
                        frame_index <= 20'd0;
                        frame_base_addr <= 27'd0;
                        batch_frame_count <= committed_frame_count_w;
                        start_error <= 1'b0;
                        state_r <= STATE_START_FRAME;
                    end
                end
            end

            STATE_START_FRAME: begin
                if (frame_reader_ready && fft_udp_frame_ready) begin
                    frame_start <= 1'b1;
                    state_r <= STATE_WAIT_FRAME;
                end
            end

            STATE_WAIT_FRAME: begin
                if (udp_frame_done) begin
                    if ((frame_index + 1'b1) >= batch_frame_count) begin
                        state_r <= STATE_DONE;
                    end
                    else begin
                        frame_index <= frame_index + 1'b1;
                        frame_base_addr <= frame_base_addr + 27'd128;
                        state_r <= STATE_START_FRAME;
                    end
                end
            end

            STATE_DONE: begin
                batch_done <= 1'b1;
                state_r <= STATE_READY;
            end

            STATE_READY: begin
                if (dataset_clear_request) begin
                    state_r <= STATE_CLEAR_DRAIN;
                end
                else if (batch_start_request) begin
                    state_r <= STATE_START_DRAIN;
                end
            end

            STATE_CLEAR_DRAIN: begin
                // 未完成的收包仅停留在暂存RAM，CLEAR时可安全丢弃；已进入DDR写路径的数据必须先排空。
                if (clear_drain_complete_w) begin
                    frame_index <= 20'd0;
                    frame_base_addr <= 27'd0;
                    batch_frame_count <= 20'd0;
                    start_error <= 1'b0;
                    clear_count_r <= 5'd0;
                    state_r <= STATE_CLEAR_APPLY;
                end
            end

            STATE_CLEAR_APPLY: begin
                dataset_clear <= 1'b1;
                if (clear_count_r == 5'd15) begin
                    clear_count_r <= 5'd0;
                    state_r <= STATE_LOAD;
                end
                else begin
                    clear_count_r <= clear_count_r + 1'b1;
                end
            end

            default: begin
                state_r <= STATE_LOAD;
            end
        endcase
    end
end

endmodule
