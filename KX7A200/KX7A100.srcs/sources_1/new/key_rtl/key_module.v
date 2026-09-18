`timescale 1ns / 1ns

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: key_module
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

module key_module(
    input      iw_key_clk   ,
    input      iw_sys_rst   ,
    
    input  [3:0] iw_KEY_PIN   ,
    output [3:0] ow_KEY_cap_n ,      
    output [3:0] ow_KEY_en    ,         
    output [3:0] ow_KEY_up    ,        
    output [3:0] ow_KEY_down  ,        
    output [3:0] ow_KEY_once
);

// 系统复位打一拍
reg ir_key_rst = 1'b0 ;
always@(posedge iw_key_clk)begin
    if(iw_sys_rst)begin
        ir_key_rst <= 1'b1 ;
    end
    else begin
        ir_key_rst <= 1'b0 ;
    end
end

// 例化多个key
genvar i;
generate
    for(i=0 ; i <= 3 ; i = i + 1)
    begin : key_i
        key key_inst(
            .iw_key_clk     (iw_key_clk     ) ,
            .iw_key_rst     (ir_key_rst     ) ,
        
            .iw_KEY_n       (iw_KEY_PIN[i]   ) ,
            .or_KEY_cap_n   (ow_KEY_cap_n[i] ) ,
            .ow_KEY_en      (ow_KEY_en[i]    ) ,
            .ow_KEY_up      (ow_KEY_up[i]    ) ,
            .ow_KEY_down    (ow_KEY_down[i]  ) ,
            .ow_KEY_once    (ow_KEY_once[i]  ) 
        );
    end
endgenerate

endmodule
