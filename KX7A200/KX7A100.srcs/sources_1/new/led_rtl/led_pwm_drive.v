`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: led_pwm_drive
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

module led_pwm_drive#(
    CLK_FRE = 1_000_000  //system clock 1Mhz on board
)(
    input      iw_led_clk   ,
    input      iw_led_rst   ,

    input  [3:0] iw_led_pwm_mode ,
    output [3:0] ow_LED_PWM_PIN  
);

// cnt_1us
localparam P_CNT_1US = CLK_FRE / 1_000_000 - 1'b1 ;

reg [9:0] r_cnt_1us    = 1'b0 ;
wire      w_cnt_1us_en = r_cnt_1us == P_CNT_1US ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_cnt_1us    <= 1'b0 ;
    end
    else begin
        if(r_cnt_1us == P_CNT_1US)begin
            r_cnt_1us <= 1'b0 ;
        end
        else begin
            r_cnt_1us <= r_cnt_1us + 1'b1 ;
        end
    end
end

// cnt_1MS
localparam P_CNT_1MS = 10'd1_000 - 1'b1 ;
//parameter P_CNT_1MS = 10'd10 - 1'b1 ;

reg [15:0] r_cnt_1ms    = 1'b0 ;
wire       w_cnt_1ms_en = r_cnt_1ms == P_CNT_1MS ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_cnt_1ms <= 1'b0 ;
    end
    else if(w_cnt_1us_en)begin
        if(r_cnt_1ms == P_CNT_1MS)begin
            r_cnt_1ms <= 1'b0 ;
        end
        else begin
            r_cnt_1ms <= r_cnt_1ms + 1'b1 ;
        end
    end
end

// cnt_pwm
localparam P_CNT_1MS_1000 = 10'd1_000 - 1'b1 ;
//parameter P_CNT_1MS_1000 = 10'd10 - 1'b1 ;

reg [9:0] r_cnt_1ms_1000    = 1'b0 ;
wire      w_cnt_1ms_1000_en = (r_cnt_1ms_1000 == P_CNT_1MS_1000) && w_cnt_1ms_en && w_cnt_1us_en ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_cnt_1ms_1000    <= 1'b0 ;
    end
    else if(w_cnt_1ms_en && w_cnt_1us_en)begin
        if(r_cnt_1ms_1000 == P_CNT_1MS_1000)begin
            r_cnt_1ms_1000 <= 1'b0 ;
        end
        else begin
            r_cnt_1ms_1000 <= r_cnt_1ms_1000 + 1'b1 ;
        end
    end
end

reg r_pwm_s = 1'b0 ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        r_pwm_s <= 1'b0 ;
    end
    else if(w_cnt_1ms_1000_en && w_cnt_1ms_en && w_cnt_1us_en)begin
        r_pwm_s <= ~r_pwm_s ;
    end
end

assign w_pwm_o = r_pwm_s ? (r_cnt_1ms_1000 >= r_cnt_1ms) : (r_cnt_1ms_1000 < r_cnt_1ms);
assign ow_LED_PWM_PIN = {iw_led_pwm_mode[0] ? w_pwm_o : 1'b1 , 
                         iw_led_pwm_mode[1] ? w_pwm_o : 1'b1 ,
                         iw_led_pwm_mode[2] ? w_pwm_o : 1'b1 ,
                         iw_led_pwm_mode[3] ? w_pwm_o : 1'b1 };

endmodule
