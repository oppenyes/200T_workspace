`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/29 00:37:29
// Design Name: 
// Module Name: led_run_drive
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

module led_run_drive#(
    CLK_FRE = 1_000_000  //system clock 1Mhz on board
)(
    input      iw_led_clk   ,
    input      iw_led_rst   ,

    output [3:0] ow_LED_RUN_PIN   
);

localparam RUN_RATE = CLK_FRE / 10 - 1'b1 ;

reg [15:0] r_cnt_1 ;
reg [15:0] r_cnt_0 ;

wire [31:0] w_cnt = { r_cnt_1 , r_cnt_0 } ;

always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_cnt_1 <= 1'b0 ;
        r_cnt_0 <= 1'b0 ;
    end
    else if(w_cnt == RUN_RATE)begin
        r_cnt_1 <= 1'b0 ;
        r_cnt_0 <= 1'b0 ;
    end
    else begin
        r_cnt_0 <= r_cnt_0 + 1'b1 ;
        if(r_cnt_0 == 16'hffff)r_cnt_1 <= r_cnt_1 + 1'b1 ;
    end
end

assign w_led_en = w_cnt == RUN_RATE ;

reg [3:0] r_LED_RUN_PIN = 1'b0 ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_LED_RUN_PIN <= 1'b0 ;
    end
    else if(w_led_en)begin
        if(!r_LED_RUN_PIN)
            r_LED_RUN_PIN <= 1'b1 ;
        else
            r_LED_RUN_PIN <= r_LED_RUN_PIN << 1 ;
    end
end

assign ow_LED_RUN_PIN = r_LED_RUN_PIN ;

endmodule
