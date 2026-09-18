`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: NUC
// Engineer: KJ
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: reset_module
// Project Name: AX7035_Template
// Target Devices: XC7A35T-2FGG484I
// Tool Versions: Vivado 2020.2
// Description: 
// 
// Dependencies: 
// 
// Revision: 2023-04-18-V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module reset_module(
    input      iw_sys_clk   ,
    input      iw_sys_rst_n ,
    output     ow_sys_rst   
    
);
(* ASYNC_REG = "TRUE" *) 
reg  r_KEY_rst_cap_r1 = 1'b0 , r_KEY_rst_cap_r2 = 1'b0 ;

assign ow_sys_rst = ~r_KEY_rst_cap_r2 ;

always@(posedge iw_sys_clk or negedge iw_sys_rst_n)begin
    if(!iw_sys_rst_n)begin
        r_KEY_rst_cap_r1 <= 1'b0 ; 
        r_KEY_rst_cap_r2 <= 1'b0 ; 
    end
    else begin
        r_KEY_rst_cap_r1 <= iw_sys_rst_n ; 
        r_KEY_rst_cap_r2 <= r_KEY_rst_cap_r1 ; 
    end
end

endmodule
