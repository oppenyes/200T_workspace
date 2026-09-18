`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/05 22:50:11
// Design Name: 
// Module Name: led_alternating_flicker_drive
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

module led_alternating_flicker_drive#(
    CLK_FRE = 1_000_000  //system clock 1Mhz on board
)(
    input      iw_led_clk   ,
    input      iw_led_rst   ,
    input  [3:0] iw_led_alternating_flicker_mode ,
    output [3:0] ow_LED_ALTERNATING_FLICKER_PIN
);

localparam FLICKER_RATE = CLK_FRE / 10 - 1'b1 ; // 10Hz

reg [15:0] r_cnt_1 ;
reg [15:0] r_cnt_0 ;

wire [31:0] w_cnt = { r_cnt_1 , r_cnt_0 } ;

always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_cnt_1 <= 1'b0 ;
        r_cnt_0 <= 1'b0 ;
    end
    else if(w_cnt == FLICKER_RATE)begin
        r_cnt_1 <= 1'b0 ;
        r_cnt_0 <= 1'b0 ;
    end
    else begin
        r_cnt_0 <= r_cnt_0 + 1'b1 ;
        if(r_cnt_0 == 16'hffff)r_cnt_1 <= r_cnt_1 + 1'b1 ;
    end
end

assign w_led_en = w_cnt == FLICKER_RATE ;

reg r_LED_ALTERNATING_FLICKER_PIN = 1'b0 ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_LED_ALTERNATING_FLICKER_PIN <= 1'b0 ;
    end
    else if(w_led_en)begin
        r_LED_ALTERNATING_FLICKER_PIN <= ~r_LED_ALTERNATING_FLICKER_PIN ;
    end
end

assign ow_LED_ALTERNATING_FLICKER_PIN = 
iw_led_alternating_flicker_mode == 4'b0011 ? {                          1'b1 ,                           1'b1 , ~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN } :
iw_led_alternating_flicker_mode == 4'b0101 ? {                          1'b1 , ~r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 ,  r_LED_ALTERNATING_FLICKER_PIN } :
iw_led_alternating_flicker_mode == 4'b1001 ? {~r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 ,                           1'b1 ,  r_LED_ALTERNATING_FLICKER_PIN } :
iw_led_alternating_flicker_mode == 4'b0110 ? {                          1'b1 , ~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 } :
iw_led_alternating_flicker_mode == 4'b1010 ? {~r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 ,  r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 } :
iw_led_alternating_flicker_mode == 4'b1100 ? {~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 ,                           1'b1 } :
iw_led_alternating_flicker_mode == 4'b0111 ? {                          1'b1 , ~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN } :
iw_led_alternating_flicker_mode == 4'b1011 ? {~r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 ,  r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN } :
iw_led_alternating_flicker_mode == 4'b1110 ? {~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,                           1'b1 } :
iw_led_alternating_flicker_mode == 4'b0000 ? {~r_LED_ALTERNATING_FLICKER_PIN , ~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN } : 
iw_led_alternating_flicker_mode == 4'b1111 ? {~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN , ~r_LED_ALTERNATING_FLICKER_PIN ,  r_LED_ALTERNATING_FLICKER_PIN } : 4'b1111 ;

endmodule
