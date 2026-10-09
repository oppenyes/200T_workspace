`timescale 1ns / 1ps

module usr_cmd_ctrl_module(
    input wire user_clk,
    input wire user_rst,
    input wire user_cmd_valid,
    input wire [511:0] user_cmd_data,
    input wire [6:0] user_cmd_num,
    output reg batch_start,
    output reg dataset_clear
);

localparam [15:0] CMD_HEADER = 16'hFD_F0;
localparam [7:0] MODULE_FFT = 8'h01;
localparam [7:0] CMD_START = 8'h01;
localparam [7:0] CMD_CLEAR = 8'h02;

always @(posedge user_clk) begin
    if (user_rst) begin
        batch_start <= 1'b0;
        dataset_clear <= 1'b0;
    end
    else begin
        batch_start <= 1'b0;
        dataset_clear <= 1'b0;
        if (user_cmd_valid && (user_cmd_num == 7'd8) &&
            (user_cmd_data[63:48] == CMD_HEADER) &&
            (user_cmd_data[47:40] == MODULE_FFT)) begin
            if (user_cmd_data[39:32] == CMD_START) begin
                batch_start <= 1'b1;
            end
            else if (user_cmd_data[39:32] == CMD_CLEAR) begin
                dataset_clear <= 1'b1;
            end
        end
    end
end

endmodule
