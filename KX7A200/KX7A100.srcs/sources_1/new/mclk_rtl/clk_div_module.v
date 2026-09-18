`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: NUC
// Engineer: KJ
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: clk_div_module
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
module clk_div_module#(
    P_CLK_DIV = 10 // ·ÖÆµÖµ
)(
    input      iw_sys_clk  ,                        
    input      iw_sys_rst  ,
    output reg clk_div   
);

reg        r_clk_1     = 1'b0 ;
reg [15:0] r_clk_1_cnt = 1'b0 ;

always@(posedge iw_sys_clk)begin
    if(iw_sys_rst) r_clk_1_cnt <= 1'b0 ;
    else if(r_clk_1_cnt == (P_CLK_DIV >> 1) - 1 ) r_clk_1_cnt <= 1'b0 ;
    else r_clk_1_cnt <= r_clk_1_cnt + 1'b1 ; 
end

always @(posedge iw_sys_clk)begin
    if(iw_sys_rst) clk_div <= 1'b0 ;
    else if(r_clk_1_cnt == (P_CLK_DIV >> 1) - 1 ) clk_div <= ~clk_div ;
end

endmodule
