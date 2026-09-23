`timescale 1ns / 1ps

module ddr3_udp_read_bridge(
    input  wire         sys_clk         , // 系统时钟
    input  wire         rst_n           , // 同步低有效复位

    input  wire         ddr_valid_i     , // DDR3 512bit读数据有效
    input  wire [511:0] ddr_data_i      , // DDR3 512bit读数据
    output wire         ddr_ready_o     , // DDR3读数据接收使能

    input  wire         udp_ready_i     , // UDP发送FIFO可接收
    output wire         udp_valid_o     , // UDP 64bit数据有效
    output wire [63:0]  udp_data_o      , // UDP 64bit数据

    output wire [2:0]   unpack_count_o    // 当前64bit发送序号
);

reg [511:0] data_buffer_r;
reg [2:0]   unpack_count_r;
reg         data_valid_r;

assign ddr_ready_o     = !data_valid_r;
assign udp_valid_o     = data_valid_r;
assign udp_data_o      = data_buffer_r[511:448];
assign unpack_count_o  = unpack_count_r;

always @(posedge sys_clk) begin
    if (!rst_n) begin
        data_buffer_r <= 512'd0;
        unpack_count_r <= 3'd0;
        data_valid_r <= 1'b0;
    end
    else begin
        // 接收新的512bit DDR数据
        if (ddr_valid_i && ddr_ready_o) begin
            data_buffer_r <= ddr_data_i;
            unpack_count_r <= 3'd0;
            data_valid_r <= 1'b1;
        end
        // 当前64bit被UDP成功接收
        else if (data_valid_r && udp_ready_i) begin
            if (unpack_count_r == 3'd7) begin
                data_buffer_r <= 512'd0;
                unpack_count_r <= 3'd0;
                data_valid_r <= 1'b0;
            end
            else begin
                data_buffer_r <= {data_buffer_r[447:0], 64'd0};
                unpack_count_r <= unpack_count_r + 1'b1;
            end
        end
    end
end

endmodule