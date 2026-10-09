`timescale 1ns / 1ps

module ddr_fft_frame_reader(
    input wire user_clk,
    input wire user_rst,
    input wire frame_start,
    input wire [26:0] frame_base_addr,
    output wire frame_ready,
    output wire frame_busy,
    output reg frame_input_done,
    output reg rd_req_valid,
    input wire rd_req_ready,
    output reg [26:0] rd_req_addr,
    input wire rd_data_valid,
    output wire rd_data_ready,
    input wire [511:0] rd_data,
    output wire [15:0] fft_config_data,
    output wire fft_config_valid,
    input wire fft_config_ready,
    output wire [31:0] fft_data,
    output wire fft_valid,
    input wire fft_ready,
    output wire fft_last,
    output wire [12:0] fft_input_count
);

localparam [2:0] STATE_IDLE = 3'd0;
localparam [2:0] STATE_READ_REQ = 3'd1;
localparam [2:0] STATE_WAIT_DATA = 3'd2;
localparam [2:0] STATE_SEND_WORD = 3'd3;
localparam [2:0] STATE_DONE = 3'd4;

reg [2:0] state_r;
reg config_done_r;
reg [26:0] frame_base_addr_r;
reg [6:0] word_index_r;
reg [4:0] sample_index_r;
reg [12:0] fft_input_count_r;
reg [511:0] word_data_r;

wire [15:0] current_sample_w;
wire fft_fire_w;

assign fft_config_data = 16'h1555;
assign fft_config_valid = !config_done_r;
assign frame_ready = (state_r == STATE_IDLE) && config_done_r;
assign frame_busy = (state_r != STATE_IDLE);
assign rd_data_ready = (state_r == STATE_WAIT_DATA);
assign current_sample_w = word_data_r[511 - ({4'd0, sample_index_r} << 4) -: 16];
assign fft_data = {16'd0, current_sample_w};
assign fft_valid = (state_r == STATE_SEND_WORD);
assign fft_last = fft_valid && (word_index_r == 7'd127) && (sample_index_r == 5'd31);
assign fft_fire_w = fft_valid && fft_ready;
assign fft_input_count = fft_input_count_r;

always @(posedge user_clk) begin
    if (user_rst) begin
        state_r <= STATE_IDLE;
        config_done_r <= 1'b0;
        frame_base_addr_r <= 27'd0;
        word_index_r <= 7'd0;
        sample_index_r <= 5'd0;
        fft_input_count_r <= 13'd0;
        word_data_r <= 512'd0;
        rd_req_valid <= 1'b0;
        rd_req_addr <= 27'd0;
        frame_input_done <= 1'b0;
    end
    else begin
        frame_input_done <= 1'b0;
        if (fft_config_valid && fft_config_ready) begin
            config_done_r <= 1'b1;
        end

        case (state_r)
            STATE_IDLE: begin
                rd_req_valid <= 1'b0;
                if (frame_start && frame_ready) begin
                    frame_base_addr_r <= frame_base_addr;
                    word_index_r <= 7'd0;
                    sample_index_r <= 5'd0;
                    fft_input_count_r <= 13'd0;
                    rd_req_addr <= frame_base_addr;
                    rd_req_valid <= 1'b1;
                    state_r <= STATE_READ_REQ;
                end
            end

            STATE_READ_REQ: begin
                if (rd_req_valid && rd_req_ready) begin
                    rd_req_valid <= 1'b0;
                    state_r <= STATE_WAIT_DATA;
                end
            end

            STATE_WAIT_DATA: begin
                if (rd_data_valid && rd_data_ready) begin
                    word_data_r <= rd_data;
                    sample_index_r <= 5'd0;
                    state_r <= STATE_SEND_WORD;
                end
            end

            STATE_SEND_WORD: begin
                if (fft_fire_w) begin
                    fft_input_count_r <= fft_input_count_r + 1'b1;
                    if (sample_index_r == 5'd31) begin
                        sample_index_r <= 5'd0;
                        if (word_index_r == 7'd127) begin
                            frame_input_done <= 1'b1;
                            state_r <= STATE_DONE;
                        end
                        else begin
                            word_index_r <= word_index_r + 1'b1;
                            rd_req_addr <= frame_base_addr_r + word_index_r + 1'b1;
                            rd_req_valid <= 1'b1;
                            state_r <= STATE_READ_REQ;
                        end
                    end
                    else begin
                        sample_index_r <= sample_index_r + 1'b1;
                    end
                end
            end

            STATE_DONE: begin
                state_r <= STATE_IDLE;
            end

            default: begin
                state_r <= STATE_IDLE;
            end
        endcase
    end
end

endmodule
