`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: led_module
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

module led_module#(
    CLK_FRE = 1_000_000  //system clock 1Mhz on board
)(
    input          iw_led_clk        ,
    input          iw_led_rst        ,
    
    input          iw_user_cmd_valid ,
    input  [511:0] iw_user_cmd_data  , // [63:0]
    
    output [3:0]   ow_LED_PIN   
);

// 系统复位打一拍
reg ir_led_rst = 1'b0 ;
always@(posedge iw_led_clk)begin
    if(iw_led_rst)begin
        ir_led_rst <= 1'b1 ;
    end
    else begin
        ir_led_rst <= 1'b0 ;
    end
end

// user_cmd
reg [3:0] r_LED_CMD_PIN = 1'b0 ;
reg       r_led_run_mode     = 1'b0 ;
reg [3:0] r_led_pwm_mode     = 1'b0 ;
reg [3:0] r_led_flicker_mode = 1'b0 ;
reg [3:0] r_led_alternating_flicker_mode = 1'b0 ;
reg [3:0] r_led_valid  = 1'b0 ;
always@(posedge iw_led_clk)begin
    if(ir_led_rst)begin
        r_led_valid   <= 1'b0    ;
        r_LED_CMD_PIN <= 4'b1111 ;
    end
    else if(iw_user_cmd_valid)begin // 命令控制 优先
        case(iw_user_cmd_data[63:0])
// 4c45 : L , 4544 : E , 4430 : D , b4f2 : 打 , bfaa : 开          
            64'h4c45_44_30_b4f2_bfaa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[0] <= 1'b0 ; end // LED[0] 打开
            64'h4c45_44_31_b4f2_bfaa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[1] <= 1'b0 ; end // LED[1] 打开
            64'h4c45_44_32_b4f2_bfaa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[2] <= 1'b0 ; end // LED[2] 打开
            64'h4c45_44_33_b4f2_bfaa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[3] <= 1'b0 ; end // LED[3] 打开
            64'h4c45_44_3f_b4f2_bfaa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN <= 4'b1111 ; end // LED    打开
// 4c45 : L , 4544 : E , 4430 : D , b9d8 : 关 , b1d5 : 闭
            64'h4c45_44_30_b9d8_b1d5 : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[0] <= 1'b1 ; end// LED[0] 关闭
            64'h4c45_44_31_b9d8_b1d5 : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[1] <= 1'b1 ; end// LED[1] 关闭
            64'h4c45_44_32_b9d8_b1d5 : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[2] <= 1'b1 ; end// LED[2] 关闭
            64'h4c45_44_33_b9d8_b1d5 : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[3] <= 1'b1 ; end// LED[3] 关闭
            64'h4c45_44_3f_b9d8_b1d5 : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN <= 4'b1111 ; end// LED    关闭
// 4c45 : L , 4544 : E , 4430 : D , b7ad : 翻 , d7aa : 转
            64'h4c45_44_30_b7ad_d7aa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[0] <= ~r_LED_CMD_PIN[0] ; end// LED[0] 翻转
            64'h4c45_44_31_b7ad_d7aa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[1] <= ~r_LED_CMD_PIN[1] ; end// LED[1] 翻转
            64'h4c45_44_32_b7ad_d7aa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[2] <= ~r_LED_CMD_PIN[2] ; end// LED[2] 翻转
            64'h4c45_44_33_b7ad_d7aa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN[3] <= ~r_LED_CMD_PIN[3] ; end// LED[3] 翻转
            64'h4c45_44_3f_b7ad_d7aa : begin r_led_valid <= 4'd1 ; r_LED_CMD_PIN    <= ~r_LED_CMD_PIN    ; end// LED    翻转
// 4c45 : L , 4544 : E , 4430 : D , c1f7 : 流 , cbae : 水
            64'h4c45_44_3f_c1f7_cbae : begin r_led_valid <= 4'd2 ; r_led_run_mode <= 4'hf ; end// LED    流水
// 4c45 : L , 4544 : E , 4430 : D , c9c1 : 闪 , cbb8 : 烁
            64'h4c45_44_30_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_31_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_32_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_33_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_34_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_35_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_36_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_37_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_38_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_39_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3a_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3b_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3c_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3d_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3e_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3f_c9c1_cbb8 : begin r_led_valid <= 4'd3 ; r_led_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
// 4c45 : L , 4544 : E , 4430 : D , bdbb : 交 , cce6 : 替
            64'h4c45_44_30_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_31_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_32_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_33_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_34_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_35_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_36_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_37_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_38_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_39_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3a_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3b_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3c_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3d_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3e_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
            64'h4c45_44_3f_bdbb_cce6 : begin r_led_valid <= 4'd4 ; r_led_alternating_flicker_mode <= iw_user_cmd_data[35:32] ; end// LED 闪烁
// 4c45 : L , 4544 : E , 4430 : D , baf4 : 呼 , cefc : 吸 
            64'h4c45_44_30_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_31_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_32_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_33_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_34_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_35_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_36_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_37_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_38_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_39_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3a_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3b_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3c_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3d_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3e_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            64'h4c45_44_3f_baf4_cefc : begin r_led_valid <= 4'd5 ; r_led_pwm_mode <= iw_user_cmd_data[35:32] ; end// LED 呼吸
            default : begin
//                r_AX7035_LED_en      <= 1'b0 ;
            end
        endcase
    end
end

wire [3:0] ow_LED_PWM_PIN     ;
wire [3:0] ow_LED_FLICKER_PIN ;
wire [3:0] ow_LED_ALTERNATING_FLICKER_PIN ;
wire [3:0] ow_LED_RUN_PIN     ;
assign ow_LED_PIN = r_led_valid == 4'd1 ? r_LED_CMD_PIN      :
                    r_led_valid == 4'd2 ? ow_LED_RUN_PIN     :
                    r_led_valid == 4'd3 ? ow_LED_FLICKER_PIN :
                    r_led_valid == 4'd4 ? ow_LED_ALTERNATING_FLICKER_PIN :
                    r_led_valid == 4'd5 ? ow_LED_PWM_PIN     : 4'b1111 ;

led_pwm_drive#(
    .CLK_FRE        (CLK_FRE    )  //system clock 1Mhz on board
)led_pwm_drive_inst(
    .iw_led_clk     (iw_led_clk     ) ,
    .iw_led_rst     (ir_led_rst     ) ,

    .iw_led_pwm_mode (r_led_pwm_mode ) ,
    .ow_LED_PWM_PIN  (ow_LED_PWM_PIN )   
);

led_flicker_drive#(
    .CLK_FRE        (CLK_FRE    )  //system clock 1Mhz on board
)led_flicker_drive_inst(
    .iw_led_clk     (iw_led_clk     ) ,
    .iw_led_rst     (ir_led_rst     ) ,

    .iw_led_flicker_mode (r_led_flicker_mode ) ,
    .ow_LED_FLICKER_PIN  (ow_LED_FLICKER_PIN )   
);

led_alternating_flicker_drive#(
    .CLK_FRE        (CLK_FRE    )  //system clock 1Mhz on board
)led_alternating_flicker_drive_inst(
    .iw_led_clk     (iw_led_clk     ) ,
    .iw_led_rst     (ir_led_rst     ) ,

    .iw_led_alternating_flicker_mode (r_led_alternating_flicker_mode ) ,
    .ow_LED_ALTERNATING_FLICKER_PIN  (ow_LED_ALTERNATING_FLICKER_PIN )   
);

led_run_drive#(
    .CLK_FRE        (CLK_FRE    )  //system clock 1Mhz on board
)led_run_drive_inst(
    .iw_led_clk     (iw_led_clk     ) ,
    .iw_led_rst     (ir_led_rst     ) ,

    .ow_LED_RUN_PIN (ow_LED_RUN_PIN )   
);

endmodule
