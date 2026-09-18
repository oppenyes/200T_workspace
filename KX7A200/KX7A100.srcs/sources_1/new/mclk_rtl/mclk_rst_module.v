`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: NUC
// Engineer: KJ
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: mclk_rst_module
// Project Name: AX7035_Template
// Target Devices: XC7A35T-2FGG484I
// Tool Versions: Vivado 2020.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mclk_rst_module(
    input          iw_sys_clk   ,                         
    input          iw_sys_rst_n ,
    output         clk_100M     ,
    output         clk_15M625   ,
    output         clk_200M     ,
    output         clk_500M     ,
    output         clk_125M     ,
    output         clk_50M      ,
    output         clk_31M25    ,
    output         clk_25M      ,
    output         clk_10M      ,
    output         clk_5M       ,
    output         clk_1M       ,
    output         clk_400k     ,
    output         clk_100k     ,
    output         clk_1k       ,
    
    output         ow_locked     ,
    output         ow_100M_rst   ,
    output         ow_15M625_rst ,
    output         ow_200M_rst   ,
    output         ow_125M_rst   ,
    output         ow_50M_rst    ,
    output         ow_31M25_rst  ,
    output         ow_25M_rst    ,
    output         ow_10M_rst    ,
    output         ow_5M_rst     ,
    output         ow_1M_rst     ,
    output         ow_400k_rst   ,
    output         ow_100k_rst   ,
    output         ow_1k_rst
);

// 主时钟 IP 核
clk_wiz_mclk clk_wiz_mclk(
    .clk_in1   (iw_sys_clk ) ,
    .reset     (w_sys_rst  ) , // input resetn
    .locked    (ow_locked  ) , // output locked
    .clk_out1  (clk_100M   ) , // output clk_out1
    .clk_out2  (clk_15M625 ) , // output clk_out2
    .clk_out3  (clk_200M   ) , // output clk_out3
    .clk_out4  (clk_500M   ) , // output clk_out4
    .clk_out5  (clk_125M   ) , // output clk_out5
    .clk_out6  (clk_25M    ) , // output clk_out6
    .clk_out7  (clk_10M    )   // output clk_out7
); 

// 输入异步低电平复位信号，输出高电平同步复位信号
(*KEEP_HIERARCHY = "yes"*) 
reset_module reset_module_inst(
    .iw_sys_clk          (iw_sys_clk    ) ,
    .iw_sys_rst_n        (iw_sys_rst_n  ) , // input resetn
    .ow_sys_rst          (w_sys_rst     ) 
);

// 时钟 locked 信号（使能信号）延迟一拍上升沿检测
edge_module edge_module_mclk_rst(
    .edge_clk  (clk_100M  ),
    .edge_rst  (   ),
    .edge_case (ow_locked   ),
    .edge_up   (ow_100M_rst ),
    .edge_down ( ),
    .edge_en   ( )
);

(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(4    ))clk_div_module_inst0(.iw_sys_clk(clk_125M),.iw_sys_rst(ow_125M_rst),.clk_div(clk_31M25));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(2    ))clk_div_module_inst1(.iw_sys_clk(clk_100M),.iw_sys_rst(ow_100M_rst),.clk_div(clk_50M  ));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(20   ))clk_div_module_inst2(.iw_sys_clk(clk_100M),.iw_sys_rst(ow_100M_rst),.clk_div(clk_5M   ));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(100  ))clk_div_module_inst3(.iw_sys_clk(clk_100M),.iw_sys_rst(ow_100M_rst),.clk_div(clk_1M   ));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(250  ))clk_div_module_inst4(.iw_sys_clk(clk_100M),.iw_sys_rst(ow_100M_rst),.clk_div(clk_400k ));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(100  ))clk_div_module_inst5(.iw_sys_clk(clk_10M ),.iw_sys_rst(ow_10M_rst ),.clk_div(clk_100k ));
(*KEEP_HIERARCHY="yes"*)clk_div_module#(.P_CLK_DIV(10000))clk_div_module_inst6(.iw_sys_clk(clk_10M ),.iw_sys_rst(ow_10M_rst ),.clk_div(clk_1k   ));

// 100M_rst - 15M625_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_15M625_rst (
    .wr_clk        (clk_100M            ) , // input wire wr_clk
    .din           (ow_100M_rst         ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst         ) , // input wire wr_en
    .full          (                    ) , // output wire full
  
    .rd_clk        (clk_15M625          ) , // input wire rd_clk
    .dout          (ow_15M625_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1                ) , // input wire rd_en
    .empty         (                    ) ,  // output wire empty
    .valid         (ow_15M625_rst       )    // output wire valid
);

// 100M_rst - 200M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_200M_rst (
    .wr_clk        (clk_100M          ) , // input wire wr_clk
    .din           (ow_100M_rst       ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst       ) , // input wire wr_en
    .full          (                  ) , // output wire full
  
    .rd_clk        (clk_200M          ) , // input wire rd_clk
    .dout          (ow_200M_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1              ) , // input wire rd_en
    .empty         (                  ) ,  // output wire empty
    .valid         (ow_200M_rst       )    // output wire valid
);

// 100M_rst - 125M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_125M_rst (
    .wr_clk        (clk_100M          ) , // input wire wr_clk
    .din           (ow_100M_rst       ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst       ) , // input wire wr_en
    .full          (                  ) , // output wire full
  
    .rd_clk        (clk_125M          ) , // input wire rd_clk
    .dout          (ow_125M_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1              ) , // input wire rd_en
    .empty         (                  ) ,  // output wire empty
    .valid         (ow_125M_rst       )    // output wire valid
);

// 100M_rst - 50M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_50M_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_50M          ) , // input wire rd_clk
    .dout          (ow_50M_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_50M_rst       )    // output wire valid
);

// 100M_rst - 31M25_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_31M25_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_31M25          ) , // input wire rd_clk
    .dout          (ow_31M25_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1               ) , // input wire rd_en
    .empty         (                   ) ,  // output wire empty
    .valid         (ow_31M25_rst       )    // output wire valid
);

// 100M_rst - 25M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_25M_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_25M          ) , // input wire rd_clk
    .dout          (ow_25M_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_25M_rst       )    // output wire valid
);

// 100M_rst - 10M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_10M_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_10M          ) , // input wire rd_clk
    .dout          (ow_10M_rst_cache ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_10M_rst       )    // output wire valid
);

// 100M_rst - 5M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_5M_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_5M           ) , // input wire rd_clk
    .dout          (ow_5M_rst_cache  ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_5M_rst        )    // output wire valid
);

// 100M_rst - 1M_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_1M_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_1M           ) , // input wire rd_clk
    .dout          (ow_1M_rst_cache  ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_1M_rst        )    // output wire valid
);

// 100M_rst - 400k_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_400k_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_400k           ) , // input wire rd_clk
    .dout          (ow_400k_rst_cache  ) , // output wire [0 : 0] dout
    .rd_en         (1'b1               ) , // input wire rd_en
    .empty         (                   ) ,  // output wire empty
    .valid         (ow_400k_rst        )    // output wire valid
);

// 100M_rst - 100k_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_100k_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_100k           ) , // input wire rd_clk
    .dout          (ow_100k_rst_cache  ) , // output wire [0 : 0] dout
    .rd_en         (1'b1               ) , // input wire rd_en
    .empty         (                   ) ,  // output wire empty
    .valid         (ow_100k_rst        )    // output wire valid
);

// 100M_rst - 1k_rst 信号跨时钟域转换
fifo_bit_cov mclk_rst_cov_1k_rst (
    .wr_clk        (clk_100M         ) , // input wire wr_clk
    .din           (ow_100M_rst      ) , // input wire [0 : 0] din   
    .wr_en         (ow_100M_rst      ) , // input wire wr_en
    .full          (                 ) , // output wire full
  
    .rd_clk        (clk_1k           ) , // input wire rd_clk
    .dout          (ow_1k_rst_cache  ) , // output wire [0 : 0] dout
    .rd_en         (1'b1             ) , // input wire rd_en
    .empty         (                 ) ,  // output wire empty
    .valid         (ow_1k_rst        )    // output wire valid
);

endmodule