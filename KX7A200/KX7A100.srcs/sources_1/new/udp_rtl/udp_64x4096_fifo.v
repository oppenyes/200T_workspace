`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/29 21:27:53
// Design Name: 
// Module Name: udp_64x4096_fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module udp_64x4096_fifo(
    input          iw_fifo_wr_clk        ,
    input          iw_fifo_wr_rst        ,
    input          iw_fifo_wr_data_valid ,
    input   [63:0] iw_fifo_wr_data       ,
    output         ow_fifo_wr_data_rdy   ,   
    output reg     r_fifo_rd_en_wr_clk   ,
    output reg [7:0] r_fifo_wr_cnt       ,
    output reg       r_fifo_wr_delay_en  ,
    output reg [9:0] r_fifo_wr_delay_cnt ,
     
    input          iw_fifo_rd_clk        ,
    input          iw_fifo_rd_rst        ,
    output         ow_fifo_rd_data_en    ,
    input          iw_fifo_rd_data_valid ,
    input          iw_fifo_rd_rdy        ,
    output  [63:0] ow_fifo_rd_data       ,
    output  [ 7:0] ow_fifo_rd_data_num   ,
    output         ow_fifo_rd_data_rdy   
);

// 写入数据计数器
//reg [7:0] r_fifo_wr_cnt = 1'b0 ;
always@(posedge iw_fifo_wr_clk)begin
    if(iw_fifo_wr_rst)begin
        r_fifo_wr_cnt <= 1'b0 ;
    end
    else if(iw_fifo_wr_data_valid && ow_fifo_wr_data_rdy && r_fifo_wr_cnt == 8'hb7)begin
        r_fifo_wr_cnt <= 1'b0 ;
    end
    else if(iw_fifo_wr_data_valid && ow_fifo_wr_data_rdy)begin
        r_fifo_wr_cnt <= r_fifo_wr_cnt + 1'b1 ;
    end
    else if(r_fifo_wr_delay_en)begin
        r_fifo_wr_cnt <= 1'b0 ;
    end
end

// 写入数据间隔计数器 间隔
//reg [9:0] r_fifo_wr_delay_cnt = 1'b0 ;
always@(posedge iw_fifo_wr_clk)begin
    if(iw_fifo_wr_rst)begin
        r_fifo_wr_delay_cnt <= 1'b0 ;
    end
    else if(ow_fifo_wr_data_rdy && r_fifo_wr_cnt != 1'b0 && !iw_fifo_wr_data_valid)begin
        r_fifo_wr_delay_cnt <= r_fifo_wr_delay_cnt + 1'b1 ;
    end
    else begin
        r_fifo_wr_delay_cnt <= 1'b0 ;
    end
end

//reg r_fifo_wr_delay_en ;
always@(posedge iw_fifo_wr_clk)begin
    if(iw_fifo_wr_rst)begin
        r_fifo_wr_delay_en <= 1'b0 ;
    end
    else if(r_fifo_wr_delay_cnt == 10'h3ff)begin
        r_fifo_wr_delay_en <= 1'b1 ;
    end
    else begin
        r_fifo_wr_delay_en <= 1'b0 ;
    end
end

wire [7:0] w_fifo_rd_data_cnt    ;

// ETH 跨时钟域发送缓存 fifo
wire [71:0] ow_fifo_rd_cache ;
fifo_72x512 fifo_72x512_inst (
    .wr_clk (iw_fifo_wr_clk                               ) , // input wire wr_clk
    .din    ({r_fifo_wr_cnt , iw_fifo_wr_data}            ) , // input wire [64 : 0] din   
    .wr_en  (iw_fifo_wr_data_valid && ow_fifo_wr_data_rdy ) , // input wire wr_en
    .full   (ow_fifo_wr_data_full                         ) , // output wire full

    .rd_clk (iw_fifo_rd_clk         ) , // input wire rd_clk
    .dout   (ow_fifo_rd_cache       ) , // output wire [64 : 0] dout
    .rd_en  (iw_fifo_rd_data_valid  ) , // input wire rd_en
    .empty  (ow_fifo_rd_data_empty  ) , // output wire empty
    .valid  (ow_fifo_rd_data_valid  )
);
assign ow_fifo_wr_data_rdy = !ow_fifo_wr_data_full ;
assign ow_fifo_rd_data_rdy = iw_fifo_rd_data_valid && ow_fifo_rd_data_valid ;

assign ow_fifo_rd_data     =  ow_fifo_rd_data_valid ? {ow_fifo_rd_cache[ 7: 0] ,
                                                       ow_fifo_rd_cache[15: 8] , 
                                                       ow_fifo_rd_cache[23:16] ,
                                                       ow_fifo_rd_cache[31:24] ,
                                                       ow_fifo_rd_cache[39:32] , 
                                                       ow_fifo_rd_cache[47:40] ,
                                                       ow_fifo_rd_cache[55:48] ,
                                                       ow_fifo_rd_cache[63:56] }: 1'b0 ;
assign w_fifo_rd_data_cnt  =  ow_fifo_rd_data_valid ? ow_fifo_rd_cache[71:64] : 1'b0 ;
                             
//reg       r_fifo_rd_en_wr_clk  = 1'b0 ;
reg [7:0] r_fifo_rd_num_wr_clk = 1'b0 ;
always@(posedge iw_fifo_wr_clk)begin
    if(iw_fifo_wr_rst)begin
        r_fifo_rd_en_wr_clk  <= 1'b0 ;
        r_fifo_rd_num_wr_clk <= 1'b0 ;
    end
    else if(iw_fifo_wr_data_valid && ow_fifo_wr_data_rdy && r_fifo_wr_cnt == 8'hb7)begin
        r_fifo_rd_en_wr_clk  <= 1'b1  ;
        r_fifo_rd_num_wr_clk <= r_fifo_wr_cnt ;
    end
    else if(r_fifo_wr_delay_en)begin
        r_fifo_rd_en_wr_clk  <= 1'b1  ;
        r_fifo_rd_num_wr_clk <= r_fifo_wr_cnt - 1'b1 ;
    end
    else begin
        r_fifo_rd_en_wr_clk  <= 1'b0 ;
        r_fifo_rd_num_wr_clk <= 1'b0 ;
    end
end

// r_fifo_rd_en_wr_clk - r_fifo_rd_en_rd_clk 信号跨时钟域转换 (慢转快)
wire [63:0] ow_fifo_rd_en_cache ;
fifo_bits_cov fifo_rd_en_wr_clk_cov_rd_clk(
    .wr_clk        (iw_fifo_wr_clk                         ) , // input wire wr_clk
    .din           (r_fifo_rd_num_wr_clk                   ) , // input wire [0 : 0] din   
    .wr_en         (r_fifo_rd_en_wr_clk                    ) , // input wire wr_en
    .full          (ow_fifo_rd_en_wr_clk_cov_rd_clk_full   ) , // output wire full
  
    .rd_clk        (iw_fifo_rd_clk                         ) , // input wire rd_clk
    .dout          (ow_fifo_rd_en_cache                    ) , // output wire [0 : 0] dout
    .rd_en         (iw_fifo_rd_rdy && !ow_fifo_rd_data_rdy ) , // input wire rd_en
    .empty         (ow_fifo_rd_en_wr_clk_cov_rd_clk_empty  ) , // output wire empty
    .valid         (ow_fifo_rd_en_wr_clk_cov_rd_clk_valid  )
);
assign ow_fifo_rd_data_en  = iw_fifo_rd_rdy && !ow_fifo_rd_data_rdy && ow_fifo_rd_en_wr_clk_cov_rd_clk_valid ; // 阻塞
assign ow_fifo_rd_data_num = iw_fifo_rd_rdy && !ow_fifo_rd_data_rdy && ow_fifo_rd_en_wr_clk_cov_rd_clk_valid ? ow_fifo_rd_en_cache[7:0] : 1'b0 ;

endmodule
