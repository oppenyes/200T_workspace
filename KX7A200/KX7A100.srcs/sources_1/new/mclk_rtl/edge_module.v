`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: NUC
// Engineer: KJ
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: edge_module
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
module edge_module(
    input  edge_clk  ,
    input  edge_rst  ,
    input  edge_case ,
    output edge_up   ,
    output edge_down ,
    output edge_en  

);
// ±ßÔµ¼ì²â

(* ASYNC_REG = "TRUE" *) 
reg  r1 = 1'b1 , r2 = 1'b1 ;   
                         
assign edge_up   =  r1 && !r2 ;    
assign edge_down = !r1 &&  r2 ;   
assign edge_en   = edge_up || edge_down ;
always@(posedge edge_clk)begin            
    if(edge_rst)begin                           
        r1 <= 1'b1 ;                         
        r2 <= 1'b1 ;                         
    end                                             
    else begin                                      
        r1 <= edge_case ;                       
        r2 <= r1 ;                    
    end                                             
end    

endmodule
