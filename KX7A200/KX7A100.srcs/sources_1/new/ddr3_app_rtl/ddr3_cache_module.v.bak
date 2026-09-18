`timescale 1ns / 1ps
//----------------- 2023.10.30 V1.0 ---------------//
// 这是一个超大号 FIFO ? 哈哈O(∩_∩)O哈哈~
module ddr3_cache_module(
    input          iw_ddr3_fifo_wr_clk   ,
    input          iw_ddr3_fifo_wr_rst   ,
    output         ow_ddr3_fifo_wr_rdy   ,
    input          iw_ddr3_fifo_wr_valid ,
    input  [511:0] iw_ddr3_fifo_wr_data  ,
// tx     
    input          iw_ddr3_fifo_rd_clk        ,
    input          iw_ddr3_fifo_rd_rst        ,
    input          iw_ddr3_fifo_rd_pre_en     ,
    input          iw_ddr3_fifo_rd_data_valid ,
    output [511:0] ow_ddr3_fifo_rd_data       ,
    output         ow_ddr3_fifo_rd_data_rdy   ,
//********** DDR MIG APP interface***********//
    input          iw_clk_200M  ,
    input          iw_200M_rst  ,
    input          iw_ddr3_rst  ,
    
    output         ow_ddr3_clk  ,
    output         ow_ddr3_clk_sync_rst ,
    output         ow_init_calib_complete ,
//***************** DDR *********************//
    inout   [63:0] ddr3_dq      , // DDR3 数据
    inout   [7:0]  ddr3_dqs_n   , // DDR3 dqs负
    inout   [7:0]  ddr3_dqs_p   , // DDR3 dqs正  
    output  [15:0] ddr3_addr    , // DDR3 地址   
    output  [2:0]  ddr3_ba      , // DDR3 banck 选择
    output         ddr3_ras_n   , // DDR3 行选择
    output         ddr3_cas_n   , // DDR3 列选择
    output         ddr3_we_n    , // DDR3 读写选择
    output         ddr3_reset_n , // DDR3 复位
    output  [1:0]  ddr3_ck_p    , // DDR3 时钟正
    output  [1:0]  ddr3_ck_n    , // DDR3 时钟负
    output  [1:0]  ddr3_cke     , // DDR3 时钟使能
    output  [1:0]  ddr3_cs_n    , // DDR3 片选
    output  [7:0]  ddr3_dm      , // DDR3_dm
    output  [1:0]  ddr3_odt       // DDR3_odt
);

wire [511:0] iw_ddr3_wr_data     ;
wire [ 31:0] ow_ddr3_wr_addr_cnt ;

wire [511:0] ow_ddr3_rd_data     ;
wire [ 31:0] ow_ddr3_rd_addr_cnt ;

wire [511:0] ow_ddr3_wr_cache ; // 高位为数据有效位
wire [511:0] w_ddr3_fifo_rd_cache      ;

// 总共写入的数据个数
reg  [31:0] r_ddr3_wr_addr_num = 1'b0 ;
// ddr3 读取使能时 ，ddr3 读取地址等于 上次写入的地址时 ， w_ddr3_rd_LSB 拉高
assign w_ddr3_rd_LSB = iw_ddr3_rd_valid && ow_ddr3_rd_rdy && ow_ddr3_rd_addr_cnt == r_ddr3_wr_addr_num ;
always@(posedge ow_ddr3_clk)begin
    if(ow_ddr3_clk_sync_rst)begin
        r_ddr3_wr_addr_num <= 1'b0 ;
    end
    else if(iw_ddr3_wr_valid && ow_ddr3_wr_rdy)begin
        r_ddr3_wr_addr_num <= ow_ddr3_wr_addr_cnt ;
    end
end

// ****************************************** ddr3 读写使能和中断 *********************************************** //
// iw_ddr3_fifo_rd_pre_en 信号跨时钟域转换 (慢转快)
fifo_bit_cov iw_ddr3_fifo_rd_pre_en_cov_ddr3_clk (
    .wr_clk        (iw_ddr3_fifo_rd_clk                  ) , // input wire wr_clk
    .din           (iw_ddr3_fifo_rd_pre_en               ) , // input wire [0 : 0] din   
    .wr_en         (r_ddr3_wr_addr_num != 1'b0           ) , // input wire wr_en
    .full          (ow_ddr3_fifo_rd_en_cov_ddr3_clk_full ) , // output wire full

    .rd_clk        (ow_ddr3_clk                           ) , // input wire rd_clk
    .dout          (w_ddr3_fifo_rd_en_ddr3_clk_cache      ) , // output wire [0 : 0] dout
    .rd_en         (1'b1                                  ) , // input wire rd_en
    .empty         (ow_ddr3_fifo_rd_en_cov_ddr3_clk_empty ) , // output wire empty
    .valid         (ow_ddr3_fifo_rd_en_cov_ddr3_clk_valid )
);
assign w_ddr3_fifo_rd_en_ddr3_clk = w_ddr3_fifo_rd_en_ddr3_clk_cache && ow_ddr3_fifo_rd_en_cov_ddr3_clk_valid ;
// ow_ddr3_fifo_wr_ddr3_rd_en 脉冲信号拉高 r_ddr3_rd_valid
// w_ddr3_rd_LSB         脉冲信号拉低 r_ddr3_rd_valid
reg r_ddr3_rd_valid = 1'b0 ;
always@(posedge ow_ddr3_clk)begin
    if(ow_ddr3_clk_sync_rst)begin
        r_ddr3_rd_valid <= 1'b0 ;
    end
    else if(w_ddr3_fifo_rd_en_ddr3_clk)begin
        r_ddr3_rd_valid <= 1'b1 ;
    end
    else if(w_ddr3_rd_LSB)begin
        r_ddr3_rd_valid <= 1'b0 ;
    end
end

reg ir_ddr3_addr_clear = 1'b0 ;
always@(posedge ow_ddr3_clk)begin
    if(ow_ddr3_clk_sync_rst)begin
        ir_ddr3_addr_clear <= 1'b0 ;
    end
    else if(w_ddr3_rd_LSB)begin
        ir_ddr3_addr_clear <= 1'b1 ;
    end
    else ir_ddr3_addr_clear <= 1'b0 ;
end

// 自定义 "fifo将满"深度为192 信号跨时钟域转换 (慢转快)
fifo_bit_cov w_ddr3_fifo_rd_cache_prog_empty_cov_ddr3_clk (
    .wr_clk        (iw_ddr3_fifo_rd_clk                                ) , // input wire wr_clk
    .din           (w_ddr3_fifo_rd_cache_prog_empty                    ) , // input wire [0 : 0] din   
    .wr_en         (w_ddr3_fifo_rd_cache_prog_empty                    ) , // input wire wr_en
    .full          (ow_ddr3_fifo_rd_cache_prog_empty_cov_ddr3_clk_full ) , // output wire full
  
    .rd_clk        (ow_ddr3_clk                                         ) , // input wire rd_clk
    .dout          (w_ddr3_fifo_rd_cache_prog_empty_ddr3_clk_cache      ) , // output wire [0 : 0] dout
    .rd_en         (1'b1                                                ) , // input wire rd_en
    .empty         (ow_ddr3_fifo_rd_cache_prog_empty_cov_ddr3_clk_empty ) ,  // output wire empty
    .valid         (ow_ddr3_fifo_rd_cache_prog_empty_cov_ddr3_clk_valid )
);
assign w_ddr3_fifo_rd_cache_prog_empty_ddr3_clk = ow_ddr3_fifo_rd_cache_prog_empty_cov_ddr3_clk_valid ;
// 自定义 "fifo将满将空" 信号控制ddr3读写使能
reg r_fifo_cache_tx_rdy = 1'b0 ;
always@(posedge ow_ddr3_clk)begin
    if(w_ddr3_fifo_rd_cache_prog_full)r_fifo_cache_tx_rdy <= 1'b0 ;
    else if(w_ddr3_fifo_rd_cache_prog_empty_ddr3_clk)r_fifo_cache_tx_rdy <= 1'b1 ;
end

// ddr3 读取使能 ，用户 en 信号拉高 valid 读取地址等于写入地址后拉低 valid ; 自定义 "fifo将满将空" 信号控制ddr3读写使能
assign iw_ddr3_rd_valid = r_ddr3_rd_valid && r_fifo_cache_tx_rdy  ; 

// ddr3 前级跨时钟域接收缓存 fifo
fifo_ddr3_wr fifo_ddr3_wr_inst (
    .wr_clk        (iw_ddr3_fifo_wr_clk                             ) , // input wire wr_clk
    .din           (iw_ddr3_fifo_wr_data                            ) , // input wire [63 : 0] din   
    .wr_en         (iw_ddr3_fifo_wr_valid && ow_ddr3_fifo_wr_rdy    ) , // input wire wr_en
    .full          (w_ddr3_fifo_wr_cache_full                       ) , // output wire full
  
    .rd_clk        (ow_ddr3_clk                ) , // input wire rd_clk
    .dout          (ow_ddr3_wr_cache           ) , // output wire [63 : 0] dout
    .rd_en         (ow_ddr3_wr_rdy             ) , // input wire rd_en
    .empty         (ow_ddr3_fifo_wr_cache_empty ) , // output wire empty
    .valid         (ow_ddr3_fifo_wr_cache_valid )
);
assign ow_ddr3_fifo_wr_rdy   = !w_ddr3_fifo_wr_cache_full ;
assign iw_ddr3_wr_valid = ow_ddr3_fifo_wr_cache_valid ;
assign iw_ddr3_wr_data  = ow_ddr3_wr_cache ;

// ddr3 后级跨时钟域发送缓存 fifo
fifo_ddr3_rd fifo_ddr3_rd_inst (
    .wr_clk        (ow_ddr3_clk                             ) , // input wire wr_clk
    .din           (ow_ddr3_rd_data                         ) , // input wire [64 : 0] din   
    .wr_en         (ow_ddr3_rd_data_rdy                     ) , // input wire wr_en
	.prog_full     (w_ddr3_fifo_rd_cache_prog_full          ) ,  // output wire prog_full
    .full          (w_ddr3_fifo_rd_cache_full               ) , // output wire full
    
    .rd_clk        (iw_ddr3_fifo_rd_clk             ) , // input wire rd_clk
    .dout          (w_ddr3_fifo_rd_cache            ) , // output wire [64 : 0] dout
    .rd_en         (iw_ddr3_fifo_rd_data_valid      ) , // input wire rd_en
	.prog_empty    (w_ddr3_fifo_rd_cache_prog_empty ) , // output wire prog_empty
    .empty         (w_ddr3_fifo_rd_cache_empty      ) , // output wire empty
    .valid         (ow_ddr3_fifo_rd_cache_valid     )
);
assign ow_ddr3_fifo_rd_data_rdy = ow_ddr3_fifo_rd_cache_valid ;
assign ow_ddr3_fifo_rd_data     = w_ddr3_fifo_rd_cache ;

//ila_0 ila_inst(
//    .clk   (iw_clk_200M ) ,
    
//    .probe0 (ow_ddr3_rd_data_rdy            ) ,
//    .probe1 (ow_ddr3_rd_data                ) , // [63:0] 
//    .probe2 (w_ddr3_fifo_rd_cache_prog_full ) ,
//    .probe3 (w_ddr3_fifo_rd_cache_full      ) ,
//    .probe4 (w_ddr3_fifo_rd_cache           ) , // [64:0] 
//    .probe5 (iw_ddr3_fifo_rd_data_valid     ) ,
//    .probe6 (w_ddr3_fifo_rd_cache_prog_empty) ,
//    .probe7 (w_ddr3_fifo_rd_cache_empty     ) ,
//    .probe8 (ow_ddr3_fifo_rd_data_rdy       ) ,
//    .probe9 (ow_ddr3_fifo_rd_data           )   // [63:0] 
//);
// iw_ddr3_rst 信号跨时钟域转换 (慢转快)
fifo_bit_cov iw_ddr3_rst_cov_200M (
    .wr_clk        (iw_ddr3_fifo_wr_clk       ) , // input wire wr_clk
    .din           (iw_ddr3_rst               ) , // input wire [0 : 0] din   
    .wr_en         (iw_ddr3_rst               ) , // input wire wr_en
    .full          (ow_ddr3_rst_cov_200M_full ) , // output wire full
  
    .rd_clk        (iw_clk_200M                ) , // input wire rd_clk
    .dout          (ow_ddr3_rst_200M           ) , // output wire [0 : 0] dout
    .rd_en         (1'b1                       ) , // input wire rd_en
    .empty         (ow_ddr3_rst_cov_200M_empty ) , // output wire empty
    .valid         (ow_ddr3_rst_cov_200M_valid )
);
assign iw_ddr3_rst_200M = ow_ddr3_rst_cov_200M_valid ;

// ddr3 读写模块
ddr3_module ddr3_module_inst(
//********** DDR MIG interface***********//
    .iw_clk_200M           (iw_clk_200M          ) , // ddr3 输入时钟 Artix7 为 200MHz
    .iw_200M_rst           (iw_200M_rst          ) ,
    .iw_ddr3_rst           (iw_ddr3_rst_200M     ) , // ddr3 输入复位 设置高有效

    .ow_ddr3_clk           (ow_ddr3_clk          ) , // ddr3 模块返回用户时钟
    .ow_ddr3_clk_sync_rst  (ow_ddr3_clk_sync_rst ) , // ddr3 模块返回复位
    .ow_init_calib_complete(ow_init_calib_complete) , // ddr3 模块初始化校准完成

    .ow_ddr3_wr_rdy       (ow_ddr3_wr_rdy       ) , // 用户写反压
    .iw_ddr3_wr_valid     (iw_ddr3_wr_valid     ) , // 用户写使能
    .iw_ddr3_wr_data      (iw_ddr3_wr_data      ) , // 用户写数据          [127:0]
    .ow_ddr3_wr_addr_cnt  (ow_ddr3_wr_addr_cnt  ) , // 用户写地址计数器    [ 23:0]

    .ow_ddr3_rd_rdy       (ow_ddr3_rd_rdy       ) , // 用户读反压
    .iw_ddr3_rd_valid     (iw_ddr3_rd_valid     ) , // 用户读使能
    .ow_ddr3_rd_data_rdy  (ow_ddr3_rd_data_rdy  ) , // 用户读数据反压
    .ow_ddr3_rd_data      (ow_ddr3_rd_data      ) , // 用户读数据         [127:0]
    .ow_ddr3_rd_addr_cnt  (ow_ddr3_rd_addr_cnt  ) , // 用户读地址计数器   [ 23:0]
    
    .iw_ddr3_addr_clear   (ir_ddr3_addr_clear   ) , // ddr3_addr 复位信号
//***************** DDR *********************//
    .ddr3_dq      (ddr3_dq      ) , //DDR3 数据
    .ddr3_dqs_n   (ddr3_dqs_n   ) , //DDR3 dqs负
    .ddr3_dqs_p   (ddr3_dqs_p   ) , //DDR3 dqs正  
    .ddr3_addr    (ddr3_addr    ) , //DDR3 地址   
    .ddr3_ba      (ddr3_ba      ) , //DDR3 banck 选择
    .ddr3_ras_n   (ddr3_ras_n   ) , //DDR3 行选择
    .ddr3_cas_n   (ddr3_cas_n   ) , //DDR3 列选择
    .ddr3_we_n    (ddr3_we_n    ) , //DDR3 读写选择
    .ddr3_reset_n (ddr3_reset_n ) , //DDR3 复位
    .ddr3_ck_p    (ddr3_ck_p    ) , //DDR3 时钟正
    .ddr3_ck_n    (ddr3_ck_n    ) , //DDR3 时钟负
    .ddr3_cke     (ddr3_cke     ) , //DDR3 时钟使能
    .ddr3_cs_n    (ddr3_cs_n    ) , //DDR3 片选
    .ddr3_dm      (ddr3_dm      ) , //DDR3_dm
    .ddr3_odt     (ddr3_odt     ) , //DDR3_odt

    .ow_error_flag(ow_error_flag)   //错误标志位
);

endmodule
