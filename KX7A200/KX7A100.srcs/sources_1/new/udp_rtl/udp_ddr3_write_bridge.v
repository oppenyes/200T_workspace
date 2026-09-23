`timescale 1ns / 1ps

module udp_ddr3_write_bridge(
    input  wire         sys_clk         , // 系统时钟
    input  wire         rst_n           , // 同步低有效复位
    input  wire         udp_valid_i     , // UDP 64bit 数据有效
    input  wire [63:0]  udp_data_i      , // UDP 64bit 数据
    
    input  wire         ddr_ready_i     , // DDR3 写FIFO可接收
    output reg          ddr_valid_o     , // DDR3 512bit写数据有效
    output reg  [511:0] ddr_data_o      , // DDR3 512bit写数据
    output reg          overflow_o      , // 数据溢出标志
    output wire [2:0]   pack_count_o      // 当前64bit数据计数
);

reg [511:0] data_buffer_r;                // 64bit数据拼接缓存
reg [2:0]   pack_count_r;                 // 64bit数据计数0~7

assign pack_count_o = pack_count_r;

// 8个64bit数据拼接为1个512bit数据
// 第1个64bit -> [511:448]
// 第2个64bit -> [447:384]
// ...
// 第8个64bit -> [63:0]
always @(posedge sys_clk) begin
    if (!rst_n) begin
        data_buffer_r <= 512'd0;
        pack_count_r  <= 3'd0;
        ddr_valid_o   <= 1'b0;
        ddr_data_o    <= 512'd0;
        overflow_o    <= 1'b0;
    end
    else begin
        overflow_o <= 1'b0;

        // DDR接收当前512bit数据
        if (ddr_valid_o && ddr_ready_i)
            ddr_valid_o <= 1'b0;

        // 接收UDP 64bit数据
        if (udp_valid_i) begin
            if (!ddr_valid_o) begin
                if (pack_count_r != 3'd7) begin
                    data_buffer_r <= {data_buffer_r[447:0], udp_data_i};
                    pack_count_r  <= pack_count_r + 1'b1;
                end
                else begin
                    ddr_data_o    <= {data_buffer_r[447:0], udp_data_i};
                    ddr_valid_o   <= 1'b1;
                    data_buffer_r <= 512'd0;
                    pack_count_r  <= 3'd0;
                end
            end
            else begin
                overflow_o <= 1'b1;
            end
        end
    end
end

endmodule