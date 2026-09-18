`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: key
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
module key(
    input      iw_key_clk   ,
    input      iw_key_rst   ,
    
    input      iw_KEY_n     ,
    output reg or_KEY_cap_n,      
    output     ow_KEY_en  ,         
    output     ow_KEY_up  ,        
    output     ow_KEY_down  ,        
    output     ow_KEY_once
    
);
//------------------- key_cap -----------------//
localparam P_KEY_S0 = 2'd0;
localparam P_KEY_S1 = 2'd1;
localparam P_KEY_S2 = 2'd2;
localparam P_KEY_S3 = 2'd3;

reg [1:0] r_state_key   = 2'b0;

reg [15:0] r_cnt0 = 1'b0;
reg [2:0 ] r_cnt1 = 1'b0;
wire w_cnt10ms_en = r_cnt0 == 16'hffff && r_cnt1 == 3'h7 ;

always @(posedge iw_key_clk)begin
    if(iw_key_rst)begin
        r_cnt0 <= 1'b0;
        r_cnt1 <= 1'b0;
    end
    else begin
        r_cnt0 <= r_cnt0 + 1'b1;
        if(r_cnt0 == 16'hffff)r_cnt1 <= r_cnt1 + 1'b1;
    end
end

always @(posedge iw_key_clk)begin
    if(iw_key_rst)begin
        or_KEY_cap_n <= 1'b1 ;
        r_state_key  <= P_KEY_S0 ;
    end
    else if(w_cnt10ms_en)begin
        case(r_state_key)
        P_KEY_S0:begin
           if(!iw_KEY_n)begin
               r_state_key <= P_KEY_S1; 
           end
        end  
        P_KEY_S1:begin
           if(!iw_KEY_n)begin
               or_KEY_cap_n <= iw_KEY_n;
               r_state_key <= P_KEY_S2 ;
           end
           else begin
               r_state_key <= P_KEY_S0 ;
           end
        end
        P_KEY_S2:begin
            if(iw_KEY_n)begin
               r_state_key <= P_KEY_S3 ;
            end
            else begin
               r_state_key <= P_KEY_S2 ;
            end
        end
        P_KEY_S3:begin
           if(iw_KEY_n)begin
               or_KEY_cap_n <= iw_KEY_n;
               r_state_key <= P_KEY_S0 ;
           end
           else begin
               r_state_key <= P_KEY_S3 ;
           end
        end
        default:r_state_key <= P_KEY_S0;
        endcase                  
    end
end

//------------------- key_cap -----------------//

//------------------- key_edge -----------------//
reg r_KEY_cap_n_r1 = 1'b1 ; 
reg r_KEY_cap_n_r2 = 1'b1 ;

assign ow_KEY_down = (!r_KEY_cap_n_r1) & ( r_KEY_cap_n_r2) ;
assign ow_KEY_up   = ( r_KEY_cap_n_r1) & (!r_KEY_cap_n_r2) ;
assign ow_KEY_en   = ( r_KEY_cap_n_r1) ^ ( r_KEY_cap_n_r2) ;

always@(posedge iw_key_clk)begin
    if(iw_key_rst)begin
        r_KEY_cap_n_r1 <= 1'b1 ; 
        r_KEY_cap_n_r2 <= 1'b1 ;
    end
    else begin
        r_KEY_cap_n_r1 <= or_KEY_cap_n ; 
        r_KEY_cap_n_r2 <= r_KEY_cap_n_r1 ;
    end
end

//------------------- key_edge -----------------//

//------------------- key_once -----------------//
reg r_KEY_oe = 1'b1 ;
assign ow_KEY_once = r_KEY_oe ;

always@(posedge iw_key_clk)begin
    if(iw_key_rst)begin
        r_KEY_oe <= 1'b1 ;
    end
    else begin
        if(ow_KEY_down)r_KEY_oe <= ~r_KEY_oe ;
    end
end
//------------------- key_once -----------------//
endmodule
