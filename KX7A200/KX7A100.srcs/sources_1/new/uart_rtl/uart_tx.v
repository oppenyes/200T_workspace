`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/18 11:14:25
// Design Name: 
// Module Name: uart_tx
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
module uart_tx#(
    CLK_FRE   = 50_000_000 ,
    BAUD_RATE = 921600 
)
(
	input          iw_uart_tx_clk  ,
	input          iw_uart_tx_rst  ,
	
	input [   9:0] iw_uart_tx_num  , 
	input          iw_uart_tx_en   ,
	input [4095:0] iw_uart_tx_data ,
	
	output reg     or_uart_tx_rdy  ,
	output reg     or_uart_tx_done ,     
    output         ow_uart_tx     
);
//波特率时钟分频系数，coe = 时钟频率 / 目标波特率 - 1  
localparam [15:0] BAUD_DIV_coe0 = CLK_FRE / BAUD_RATE - 1 ; 
localparam [15:0] BAUD_DIV_coe1 = BAUD_DIV_coe0 / 2       ;
wire [ 3:0] ow_tx_state    ;
wire [15:0] ow_tx_baud_cnt ;

reg [4095:0] r_uart_tx_data_cache = 1'b0 ;
reg [  7:0 ] ir_tx_data           = 8'b0 ;  //  串口单次发送数据
reg [  8:0 ] r_uart_tx_state      = 1'b0 ;  //  串口发送计数
reg          r_uart_valid         = 1'b0 ;
reg          ir_tx_en             = 1'b0 ;
reg          ir_tx_en_cache       = 1'b0 ;

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        r_uart_valid <= 1'b0 ;
    end
    else if(ir_tx_en)begin
        r_uart_valid <= 1'b1 ;
    end
    else if(ow_tx_done && r_uart_tx_state == 9'd511)begin
        r_uart_valid <= 1'b0 ;
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        ir_tx_en_cache <= 1'b0 ;
    end
    else begin
        if(iw_uart_tx_en && or_uart_tx_rdy)begin
            ir_tx_en_cache <= 1'b1 ;
        end
        else begin
            ir_tx_en_cache <= 1'b0 ;
        end
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        or_uart_tx_rdy <= 1'b1 ;
    end
    else begin
        if(iw_uart_tx_en && or_uart_tx_rdy)begin
            or_uart_tx_rdy <= 1'b0 ;
        end
        else if(ow_tx_state == 4'd9 && ow_tx_baud_cnt == BAUD_DIV_coe0 - 2'd2 && r_uart_tx_state == 9'd511)begin
            or_uart_tx_rdy <= 1'b1 ;
        end
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        ir_tx_en <= 1'b0 ;
    end
    else begin
        if(ir_tx_en_cache)begin
            ir_tx_en <= 1'b1 ;
        end
        else if(ow_tx_done && r_uart_tx_state != 9'd511)begin
            ir_tx_en <= 1'b1 ;
        end
        else begin
            ir_tx_en <= 1'b0 ;
        end
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        or_uart_tx_done <= 1'b0 ;
    end
    else begin
        if(ow_tx_state == 4'd9 && ow_tx_baud_cnt == BAUD_DIV_coe0 - 2'd3 && r_uart_tx_state == 9'd511)begin
            or_uart_tx_done <= 1'b1 ;
        end
        else begin
            or_uart_tx_done <= 1'b0 ;
        end
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        r_uart_tx_data_cache <= 1'b0 ;
    end
    else begin
        if(iw_uart_tx_en && or_uart_tx_rdy)begin
            r_uart_tx_data_cache <= iw_uart_tx_data ;
        end
    end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        r_uart_tx_state <= 1'b0 ;
    end
    else begin
        if(iw_uart_tx_en && or_uart_tx_rdy)
            r_uart_tx_state <= 10'd512 - iw_uart_tx_num ;
        else if(r_uart_valid)begin
            if(ow_tx_done)begin
                r_uart_tx_state <= r_uart_tx_state + 1'b1 ;
            end
        end
	end
end

always@(posedge iw_uart_tx_clk)begin
    if(iw_uart_tx_rst)begin
        ir_tx_data <= 1'b0 ;
    end
    else begin
        case(r_uart_tx_state)
            9'd0   : ir_tx_data <= r_uart_tx_data_cache[4095:4088] ;
            9'd1   : ir_tx_data <= r_uart_tx_data_cache[4087:4080] ;
            9'd2   : ir_tx_data <= r_uart_tx_data_cache[4079:4072] ;
            9'd3   : ir_tx_data <= r_uart_tx_data_cache[4071:4064] ;
            9'd4   : ir_tx_data <= r_uart_tx_data_cache[4063:4056] ;
            9'd5   : ir_tx_data <= r_uart_tx_data_cache[4055:4048] ;
            9'd6   : ir_tx_data <= r_uart_tx_data_cache[4047:4040] ;
            9'd7   : ir_tx_data <= r_uart_tx_data_cache[4039:4032] ;
            9'd8   : ir_tx_data <= r_uart_tx_data_cache[4031:4024] ;
            9'd9   : ir_tx_data <= r_uart_tx_data_cache[4023:4016] ;
            9'd10  : ir_tx_data <= r_uart_tx_data_cache[4015:4008] ;
            9'd11  : ir_tx_data <= r_uart_tx_data_cache[4007:4000] ;
            9'd12  : ir_tx_data <= r_uart_tx_data_cache[3999:3992] ;
            9'd13  : ir_tx_data <= r_uart_tx_data_cache[3991:3984] ;
            9'd14  : ir_tx_data <= r_uart_tx_data_cache[3983:3976] ;
            9'd15  : ir_tx_data <= r_uart_tx_data_cache[3975:3968] ;
            9'd16  : ir_tx_data <= r_uart_tx_data_cache[3967:3960] ;
            9'd17  : ir_tx_data <= r_uart_tx_data_cache[3959:3952] ;
            9'd18  : ir_tx_data <= r_uart_tx_data_cache[3951:3944] ;
            9'd19  : ir_tx_data <= r_uart_tx_data_cache[3943:3936] ;
            9'd20  : ir_tx_data <= r_uart_tx_data_cache[3935:3928] ;
            9'd21  : ir_tx_data <= r_uart_tx_data_cache[3927:3920] ;
            9'd22  : ir_tx_data <= r_uart_tx_data_cache[3919:3912] ;
            9'd23  : ir_tx_data <= r_uart_tx_data_cache[3911:3904] ;
            9'd24  : ir_tx_data <= r_uart_tx_data_cache[3903:3896] ;
            9'd25  : ir_tx_data <= r_uart_tx_data_cache[3895:3888] ;
            9'd26  : ir_tx_data <= r_uart_tx_data_cache[3887:3880] ;
            9'd27  : ir_tx_data <= r_uart_tx_data_cache[3879:3872] ;
            9'd28  : ir_tx_data <= r_uart_tx_data_cache[3871:3864] ;
            9'd29  : ir_tx_data <= r_uart_tx_data_cache[3863:3856] ;
            9'd30  : ir_tx_data <= r_uart_tx_data_cache[3855:3848] ;
            9'd31  : ir_tx_data <= r_uart_tx_data_cache[3847:3840] ;
            9'd32  : ir_tx_data <= r_uart_tx_data_cache[3839:3832] ;
            9'd33  : ir_tx_data <= r_uart_tx_data_cache[3831:3824] ;
            9'd34  : ir_tx_data <= r_uart_tx_data_cache[3823:3816] ;
            9'd35  : ir_tx_data <= r_uart_tx_data_cache[3815:3808] ;
            9'd36  : ir_tx_data <= r_uart_tx_data_cache[3807:3800] ;
            9'd37  : ir_tx_data <= r_uart_tx_data_cache[3799:3792] ;
            9'd38  : ir_tx_data <= r_uart_tx_data_cache[3791:3784] ;
            9'd39  : ir_tx_data <= r_uart_tx_data_cache[3783:3776] ;
            9'd40  : ir_tx_data <= r_uart_tx_data_cache[3775:3768] ;
            9'd41  : ir_tx_data <= r_uart_tx_data_cache[3767:3760] ;
            9'd42  : ir_tx_data <= r_uart_tx_data_cache[3759:3752] ;
            9'd43  : ir_tx_data <= r_uart_tx_data_cache[3751:3744] ;
            9'd44  : ir_tx_data <= r_uart_tx_data_cache[3743:3736] ;
            9'd45  : ir_tx_data <= r_uart_tx_data_cache[3735:3728] ;
            9'd46  : ir_tx_data <= r_uart_tx_data_cache[3727:3720] ;
            9'd47  : ir_tx_data <= r_uart_tx_data_cache[3719:3712] ;
            9'd48  : ir_tx_data <= r_uart_tx_data_cache[3711:3704] ;
            9'd49  : ir_tx_data <= r_uart_tx_data_cache[3703:3696] ;
            9'd50  : ir_tx_data <= r_uart_tx_data_cache[3695:3688] ;
            9'd51  : ir_tx_data <= r_uart_tx_data_cache[3687:3680] ;
            9'd52  : ir_tx_data <= r_uart_tx_data_cache[3679:3672] ;
            9'd53  : ir_tx_data <= r_uart_tx_data_cache[3671:3664] ;
            9'd54  : ir_tx_data <= r_uart_tx_data_cache[3663:3656] ;
            9'd55  : ir_tx_data <= r_uart_tx_data_cache[3655:3648] ;
            9'd56  : ir_tx_data <= r_uart_tx_data_cache[3647:3640] ;
            9'd57  : ir_tx_data <= r_uart_tx_data_cache[3639:3632] ;
            9'd58  : ir_tx_data <= r_uart_tx_data_cache[3631:3624] ;
            9'd59  : ir_tx_data <= r_uart_tx_data_cache[3623:3616] ;
            9'd60  : ir_tx_data <= r_uart_tx_data_cache[3615:3608] ;
            9'd61  : ir_tx_data <= r_uart_tx_data_cache[3607:3600] ;
            9'd62  : ir_tx_data <= r_uart_tx_data_cache[3599:3592] ;
            9'd63  : ir_tx_data <= r_uart_tx_data_cache[3591:3584] ;
            9'd64  : ir_tx_data <= r_uart_tx_data_cache[3583:3576] ;
            9'd65  : ir_tx_data <= r_uart_tx_data_cache[3575:3568] ;
            9'd66  : ir_tx_data <= r_uart_tx_data_cache[3567:3560] ;
            9'd67  : ir_tx_data <= r_uart_tx_data_cache[3559:3552] ;
            9'd68  : ir_tx_data <= r_uart_tx_data_cache[3551:3544] ;
            9'd69  : ir_tx_data <= r_uart_tx_data_cache[3543:3536] ;
            9'd70  : ir_tx_data <= r_uart_tx_data_cache[3535:3528] ;
            9'd71  : ir_tx_data <= r_uart_tx_data_cache[3527:3520] ;
            9'd72  : ir_tx_data <= r_uart_tx_data_cache[3519:3512] ;
            9'd73  : ir_tx_data <= r_uart_tx_data_cache[3511:3504] ;
            9'd74  : ir_tx_data <= r_uart_tx_data_cache[3503:3496] ;
            9'd75  : ir_tx_data <= r_uart_tx_data_cache[3495:3488] ;
            9'd76  : ir_tx_data <= r_uart_tx_data_cache[3487:3480] ;
            9'd77  : ir_tx_data <= r_uart_tx_data_cache[3479:3472] ;
            9'd78  : ir_tx_data <= r_uart_tx_data_cache[3471:3464] ;
            9'd79  : ir_tx_data <= r_uart_tx_data_cache[3463:3456] ;
            9'd80  : ir_tx_data <= r_uart_tx_data_cache[3455:3448] ;
            9'd81  : ir_tx_data <= r_uart_tx_data_cache[3447:3440] ;
            9'd82  : ir_tx_data <= r_uart_tx_data_cache[3439:3432] ;
            9'd83  : ir_tx_data <= r_uart_tx_data_cache[3431:3424] ;
            9'd84  : ir_tx_data <= r_uart_tx_data_cache[3423:3416] ;
            9'd85  : ir_tx_data <= r_uart_tx_data_cache[3415:3408] ;
            9'd86  : ir_tx_data <= r_uart_tx_data_cache[3407:3400] ;
            9'd87  : ir_tx_data <= r_uart_tx_data_cache[3399:3392] ;
            9'd88  : ir_tx_data <= r_uart_tx_data_cache[3391:3384] ;
            9'd89  : ir_tx_data <= r_uart_tx_data_cache[3383:3376] ;
            9'd90  : ir_tx_data <= r_uart_tx_data_cache[3375:3368] ;
            9'd91  : ir_tx_data <= r_uart_tx_data_cache[3367:3360] ;
            9'd92  : ir_tx_data <= r_uart_tx_data_cache[3359:3352] ;
            9'd93  : ir_tx_data <= r_uart_tx_data_cache[3351:3344] ;
            9'd94  : ir_tx_data <= r_uart_tx_data_cache[3343:3336] ;
            9'd95  : ir_tx_data <= r_uart_tx_data_cache[3335:3328] ;
            9'd96  : ir_tx_data <= r_uart_tx_data_cache[3327:3320] ;
            9'd97  : ir_tx_data <= r_uart_tx_data_cache[3319:3312] ;
            9'd98  : ir_tx_data <= r_uart_tx_data_cache[3311:3304] ;
            9'd99  : ir_tx_data <= r_uart_tx_data_cache[3303:3296] ;
            9'd100 : ir_tx_data <= r_uart_tx_data_cache[3295:3288] ;
            9'd101 : ir_tx_data <= r_uart_tx_data_cache[3287:3280] ;
            9'd102 : ir_tx_data <= r_uart_tx_data_cache[3279:3272] ;
            9'd103 : ir_tx_data <= r_uart_tx_data_cache[3271:3264] ;
            9'd104 : ir_tx_data <= r_uart_tx_data_cache[3263:3256] ;
            9'd105 : ir_tx_data <= r_uart_tx_data_cache[3255:3248] ;
            9'd106 : ir_tx_data <= r_uart_tx_data_cache[3247:3240] ;
            9'd107 : ir_tx_data <= r_uart_tx_data_cache[3239:3232] ;
            9'd108 : ir_tx_data <= r_uart_tx_data_cache[3231:3224] ;
            9'd109 : ir_tx_data <= r_uart_tx_data_cache[3223:3216] ;
            9'd110 : ir_tx_data <= r_uart_tx_data_cache[3215:3208] ;
            9'd111 : ir_tx_data <= r_uart_tx_data_cache[3207:3200] ;
            9'd112 : ir_tx_data <= r_uart_tx_data_cache[3199:3192] ;
            9'd113 : ir_tx_data <= r_uart_tx_data_cache[3191:3184] ;
            9'd114 : ir_tx_data <= r_uart_tx_data_cache[3183:3176] ;
            9'd115 : ir_tx_data <= r_uart_tx_data_cache[3175:3168] ;
            9'd116 : ir_tx_data <= r_uart_tx_data_cache[3167:3160] ;
            9'd117 : ir_tx_data <= r_uart_tx_data_cache[3159:3152] ;
            9'd118 : ir_tx_data <= r_uart_tx_data_cache[3151:3144] ;
            9'd119 : ir_tx_data <= r_uart_tx_data_cache[3143:3136] ;
            9'd120 : ir_tx_data <= r_uart_tx_data_cache[3135:3128] ;
            9'd121 : ir_tx_data <= r_uart_tx_data_cache[3127:3120] ;
            9'd122 : ir_tx_data <= r_uart_tx_data_cache[3119:3112] ;
            9'd123 : ir_tx_data <= r_uart_tx_data_cache[3111:3104] ;
            9'd124 : ir_tx_data <= r_uart_tx_data_cache[3103:3096] ;
            9'd125 : ir_tx_data <= r_uart_tx_data_cache[3095:3088] ;
            9'd126 : ir_tx_data <= r_uart_tx_data_cache[3087:3080] ;
            9'd127 : ir_tx_data <= r_uart_tx_data_cache[3079:3072] ;
            9'd128 : ir_tx_data <= r_uart_tx_data_cache[3071:3064] ;
            9'd129 : ir_tx_data <= r_uart_tx_data_cache[3063:3056] ;
            9'd130 : ir_tx_data <= r_uart_tx_data_cache[3055:3048] ;
            9'd131 : ir_tx_data <= r_uart_tx_data_cache[3047:3040] ;
            9'd132 : ir_tx_data <= r_uart_tx_data_cache[3039:3032] ;
            9'd133 : ir_tx_data <= r_uart_tx_data_cache[3031:3024] ;
            9'd134 : ir_tx_data <= r_uart_tx_data_cache[3023:3016] ;
            9'd135 : ir_tx_data <= r_uart_tx_data_cache[3015:3008] ;
            9'd136 : ir_tx_data <= r_uart_tx_data_cache[3007:3000] ;
            9'd137 : ir_tx_data <= r_uart_tx_data_cache[2999:2992] ;
            9'd138 : ir_tx_data <= r_uart_tx_data_cache[2991:2984] ;
            9'd139 : ir_tx_data <= r_uart_tx_data_cache[2983:2976] ;
            9'd140 : ir_tx_data <= r_uart_tx_data_cache[2975:2968] ;
            9'd141 : ir_tx_data <= r_uart_tx_data_cache[2967:2960] ;
            9'd142 : ir_tx_data <= r_uart_tx_data_cache[2959:2952] ;
            9'd143 : ir_tx_data <= r_uart_tx_data_cache[2951:2944] ;
            9'd144 : ir_tx_data <= r_uart_tx_data_cache[2943:2936] ;
            9'd145 : ir_tx_data <= r_uart_tx_data_cache[2935:2928] ;
            9'd146 : ir_tx_data <= r_uart_tx_data_cache[2927:2920] ;
            9'd147 : ir_tx_data <= r_uart_tx_data_cache[2919:2912] ;
            9'd148 : ir_tx_data <= r_uart_tx_data_cache[2911:2904] ;
            9'd149 : ir_tx_data <= r_uart_tx_data_cache[2903:2896] ;
            9'd150 : ir_tx_data <= r_uart_tx_data_cache[2895:2888] ;
            9'd151 : ir_tx_data <= r_uart_tx_data_cache[2887:2880] ;
            9'd152 : ir_tx_data <= r_uart_tx_data_cache[2879:2872] ;
            9'd153 : ir_tx_data <= r_uart_tx_data_cache[2871:2864] ;
            9'd154 : ir_tx_data <= r_uart_tx_data_cache[2863:2856] ;
            9'd155 : ir_tx_data <= r_uart_tx_data_cache[2855:2848] ;
            9'd156 : ir_tx_data <= r_uart_tx_data_cache[2847:2840] ;
            9'd157 : ir_tx_data <= r_uart_tx_data_cache[2839:2832] ;
            9'd158 : ir_tx_data <= r_uart_tx_data_cache[2831:2824] ;
            9'd159 : ir_tx_data <= r_uart_tx_data_cache[2823:2816] ;
            9'd160 : ir_tx_data <= r_uart_tx_data_cache[2815:2808] ;
            9'd161 : ir_tx_data <= r_uart_tx_data_cache[2807:2800] ;
            9'd162 : ir_tx_data <= r_uart_tx_data_cache[2799:2792] ;
            9'd163 : ir_tx_data <= r_uart_tx_data_cache[2791:2784] ;
            9'd164 : ir_tx_data <= r_uart_tx_data_cache[2783:2776] ;
            9'd165 : ir_tx_data <= r_uart_tx_data_cache[2775:2768] ;
            9'd166 : ir_tx_data <= r_uart_tx_data_cache[2767:2760] ;
            9'd167 : ir_tx_data <= r_uart_tx_data_cache[2759:2752] ;
            9'd168 : ir_tx_data <= r_uart_tx_data_cache[2751:2744] ;
            9'd169 : ir_tx_data <= r_uart_tx_data_cache[2743:2736] ;
            9'd170 : ir_tx_data <= r_uart_tx_data_cache[2735:2728] ;
            9'd171 : ir_tx_data <= r_uart_tx_data_cache[2727:2720] ;
            9'd172 : ir_tx_data <= r_uart_tx_data_cache[2719:2712] ;
            9'd173 : ir_tx_data <= r_uart_tx_data_cache[2711:2704] ;
            9'd174 : ir_tx_data <= r_uart_tx_data_cache[2703:2696] ;
            9'd175 : ir_tx_data <= r_uart_tx_data_cache[2695:2688] ;
            9'd176 : ir_tx_data <= r_uart_tx_data_cache[2687:2680] ;
            9'd177 : ir_tx_data <= r_uart_tx_data_cache[2679:2672] ;
            9'd178 : ir_tx_data <= r_uart_tx_data_cache[2671:2664] ;
            9'd179 : ir_tx_data <= r_uart_tx_data_cache[2663:2656] ;
            9'd180 : ir_tx_data <= r_uart_tx_data_cache[2655:2648] ;
            9'd181 : ir_tx_data <= r_uart_tx_data_cache[2647:2640] ;
            9'd182 : ir_tx_data <= r_uart_tx_data_cache[2639:2632] ;
            9'd183 : ir_tx_data <= r_uart_tx_data_cache[2631:2624] ;
            9'd184 : ir_tx_data <= r_uart_tx_data_cache[2623:2616] ;
            9'd185 : ir_tx_data <= r_uart_tx_data_cache[2615:2608] ;
            9'd186 : ir_tx_data <= r_uart_tx_data_cache[2607:2600] ;
            9'd187 : ir_tx_data <= r_uart_tx_data_cache[2599:2592] ;
            9'd188 : ir_tx_data <= r_uart_tx_data_cache[2591:2584] ;
            9'd189 : ir_tx_data <= r_uart_tx_data_cache[2583:2576] ;
            9'd190 : ir_tx_data <= r_uart_tx_data_cache[2575:2568] ;
            9'd191 : ir_tx_data <= r_uart_tx_data_cache[2567:2560] ;
            9'd192 : ir_tx_data <= r_uart_tx_data_cache[2559:2552] ;
            9'd193 : ir_tx_data <= r_uart_tx_data_cache[2551:2544] ;
            9'd194 : ir_tx_data <= r_uart_tx_data_cache[2543:2536] ;
            9'd195 : ir_tx_data <= r_uart_tx_data_cache[2535:2528] ;
            9'd196 : ir_tx_data <= r_uart_tx_data_cache[2527:2520] ;
            9'd197 : ir_tx_data <= r_uart_tx_data_cache[2519:2512] ;
            9'd198 : ir_tx_data <= r_uart_tx_data_cache[2511:2504] ;
            9'd199 : ir_tx_data <= r_uart_tx_data_cache[2503:2496] ;
            9'd200 : ir_tx_data <= r_uart_tx_data_cache[2495:2488] ;
            9'd201 : ir_tx_data <= r_uart_tx_data_cache[2487:2480] ;
            9'd202 : ir_tx_data <= r_uart_tx_data_cache[2479:2472] ;
            9'd203 : ir_tx_data <= r_uart_tx_data_cache[2471:2464] ;
            9'd204 : ir_tx_data <= r_uart_tx_data_cache[2463:2456] ;
            9'd205 : ir_tx_data <= r_uart_tx_data_cache[2455:2448] ;
            9'd206 : ir_tx_data <= r_uart_tx_data_cache[2447:2440] ;
            9'd207 : ir_tx_data <= r_uart_tx_data_cache[2439:2432] ;
            9'd208 : ir_tx_data <= r_uart_tx_data_cache[2431:2424] ;
            9'd209 : ir_tx_data <= r_uart_tx_data_cache[2423:2416] ;
            9'd210 : ir_tx_data <= r_uart_tx_data_cache[2415:2408] ;
            9'd211 : ir_tx_data <= r_uart_tx_data_cache[2407:2400] ;
            9'd212 : ir_tx_data <= r_uart_tx_data_cache[2399:2392] ;
            9'd213 : ir_tx_data <= r_uart_tx_data_cache[2391:2384] ;
            9'd214 : ir_tx_data <= r_uart_tx_data_cache[2383:2376] ;
            9'd215 : ir_tx_data <= r_uart_tx_data_cache[2375:2368] ;
            9'd216 : ir_tx_data <= r_uart_tx_data_cache[2367:2360] ;
            9'd217 : ir_tx_data <= r_uart_tx_data_cache[2359:2352] ;
            9'd218 : ir_tx_data <= r_uart_tx_data_cache[2351:2344] ;
            9'd219 : ir_tx_data <= r_uart_tx_data_cache[2343:2336] ;
            9'd220 : ir_tx_data <= r_uart_tx_data_cache[2335:2328] ;
            9'd221 : ir_tx_data <= r_uart_tx_data_cache[2327:2320] ;
            9'd222 : ir_tx_data <= r_uart_tx_data_cache[2319:2312] ;
            9'd223 : ir_tx_data <= r_uart_tx_data_cache[2311:2304] ;
            9'd224 : ir_tx_data <= r_uart_tx_data_cache[2303:2296] ;
            9'd225 : ir_tx_data <= r_uart_tx_data_cache[2295:2288] ;
            9'd226 : ir_tx_data <= r_uart_tx_data_cache[2287:2280] ;
            9'd227 : ir_tx_data <= r_uart_tx_data_cache[2279:2272] ;
            9'd228 : ir_tx_data <= r_uart_tx_data_cache[2271:2264] ;
            9'd229 : ir_tx_data <= r_uart_tx_data_cache[2263:2256] ;
            9'd230 : ir_tx_data <= r_uart_tx_data_cache[2255:2248] ;
            9'd231 : ir_tx_data <= r_uart_tx_data_cache[2247:2240] ;
            9'd232 : ir_tx_data <= r_uart_tx_data_cache[2239:2232] ;
            9'd233 : ir_tx_data <= r_uart_tx_data_cache[2231:2224] ;
            9'd234 : ir_tx_data <= r_uart_tx_data_cache[2223:2216] ;
            9'd235 : ir_tx_data <= r_uart_tx_data_cache[2215:2208] ;
            9'd236 : ir_tx_data <= r_uart_tx_data_cache[2207:2200] ;
            9'd237 : ir_tx_data <= r_uart_tx_data_cache[2199:2192] ;
            9'd238 : ir_tx_data <= r_uart_tx_data_cache[2191:2184] ;
            9'd239 : ir_tx_data <= r_uart_tx_data_cache[2183:2176] ;
            9'd240 : ir_tx_data <= r_uart_tx_data_cache[2175:2168] ;
            9'd241 : ir_tx_data <= r_uart_tx_data_cache[2167:2160] ;
            9'd242 : ir_tx_data <= r_uart_tx_data_cache[2159:2152] ;
            9'd243 : ir_tx_data <= r_uart_tx_data_cache[2151:2144] ;
            9'd244 : ir_tx_data <= r_uart_tx_data_cache[2143:2136] ;
            9'd245 : ir_tx_data <= r_uart_tx_data_cache[2135:2128] ;
            9'd246 : ir_tx_data <= r_uart_tx_data_cache[2127:2120] ;
            9'd247 : ir_tx_data <= r_uart_tx_data_cache[2119:2112] ;
            9'd248 : ir_tx_data <= r_uart_tx_data_cache[2111:2104] ;
            9'd249 : ir_tx_data <= r_uart_tx_data_cache[2103:2096] ;
            9'd250 : ir_tx_data <= r_uart_tx_data_cache[2095:2088] ;
            9'd251 : ir_tx_data <= r_uart_tx_data_cache[2087:2080] ;
            9'd252 : ir_tx_data <= r_uart_tx_data_cache[2079:2072] ;
            9'd253 : ir_tx_data <= r_uart_tx_data_cache[2071:2064] ;
            9'd254 : ir_tx_data <= r_uart_tx_data_cache[2063:2056] ;
            9'd255 : ir_tx_data <= r_uart_tx_data_cache[2055:2048] ;
            9'd256 : ir_tx_data <= r_uart_tx_data_cache[2047:2040] ;
            9'd257 : ir_tx_data <= r_uart_tx_data_cache[2039:2032] ;
            9'd258 : ir_tx_data <= r_uart_tx_data_cache[2031:2024] ;
            9'd259 : ir_tx_data <= r_uart_tx_data_cache[2023:2016] ;
            9'd260 : ir_tx_data <= r_uart_tx_data_cache[2015:2008] ;
            9'd261 : ir_tx_data <= r_uart_tx_data_cache[2007:2000] ;
            9'd262 : ir_tx_data <= r_uart_tx_data_cache[1999:1992] ;
            9'd263 : ir_tx_data <= r_uart_tx_data_cache[1991:1984] ;
            9'd264 : ir_tx_data <= r_uart_tx_data_cache[1983:1976] ;
            9'd265 : ir_tx_data <= r_uart_tx_data_cache[1975:1968] ;
            9'd266 : ir_tx_data <= r_uart_tx_data_cache[1967:1960] ;
            9'd267 : ir_tx_data <= r_uart_tx_data_cache[1959:1952] ;
            9'd268 : ir_tx_data <= r_uart_tx_data_cache[1951:1944] ;
            9'd269 : ir_tx_data <= r_uart_tx_data_cache[1943:1936] ;
            9'd270 : ir_tx_data <= r_uart_tx_data_cache[1935:1928] ;
            9'd271 : ir_tx_data <= r_uart_tx_data_cache[1927:1920] ;
            9'd272 : ir_tx_data <= r_uart_tx_data_cache[1919:1912] ;
            9'd273 : ir_tx_data <= r_uart_tx_data_cache[1911:1904] ;
            9'd274 : ir_tx_data <= r_uart_tx_data_cache[1903:1896] ;
            9'd275 : ir_tx_data <= r_uart_tx_data_cache[1895:1888] ;
            9'd276 : ir_tx_data <= r_uart_tx_data_cache[1887:1880] ;
            9'd277 : ir_tx_data <= r_uart_tx_data_cache[1879:1872] ;
            9'd278 : ir_tx_data <= r_uart_tx_data_cache[1871:1864] ;
            9'd279 : ir_tx_data <= r_uart_tx_data_cache[1863:1856] ;
            9'd280 : ir_tx_data <= r_uart_tx_data_cache[1855:1848] ;
            9'd281 : ir_tx_data <= r_uart_tx_data_cache[1847:1840] ;
            9'd282 : ir_tx_data <= r_uart_tx_data_cache[1839:1832] ;
            9'd283 : ir_tx_data <= r_uart_tx_data_cache[1831:1824] ;
            9'd284 : ir_tx_data <= r_uart_tx_data_cache[1823:1816] ;
            9'd285 : ir_tx_data <= r_uart_tx_data_cache[1815:1808] ;
            9'd286 : ir_tx_data <= r_uart_tx_data_cache[1807:1800] ;
            9'd287 : ir_tx_data <= r_uart_tx_data_cache[1799:1792] ;
            9'd288 : ir_tx_data <= r_uart_tx_data_cache[1791:1784] ;
            9'd289 : ir_tx_data <= r_uart_tx_data_cache[1783:1776] ;
            9'd290 : ir_tx_data <= r_uart_tx_data_cache[1775:1768] ;
            9'd291 : ir_tx_data <= r_uart_tx_data_cache[1767:1760] ;
            9'd292 : ir_tx_data <= r_uart_tx_data_cache[1759:1752] ;
            9'd293 : ir_tx_data <= r_uart_tx_data_cache[1751:1744] ;
            9'd294 : ir_tx_data <= r_uart_tx_data_cache[1743:1736] ;
            9'd295 : ir_tx_data <= r_uart_tx_data_cache[1735:1728] ;
            9'd296 : ir_tx_data <= r_uart_tx_data_cache[1727:1720] ;
            9'd297 : ir_tx_data <= r_uart_tx_data_cache[1719:1712] ;
            9'd298 : ir_tx_data <= r_uart_tx_data_cache[1711:1704] ;
            9'd299 : ir_tx_data <= r_uart_tx_data_cache[1703:1696] ;
            9'd300 : ir_tx_data <= r_uart_tx_data_cache[1695:1688] ;
            9'd301 : ir_tx_data <= r_uart_tx_data_cache[1687:1680] ;
            9'd302 : ir_tx_data <= r_uart_tx_data_cache[1679:1672] ;
            9'd303 : ir_tx_data <= r_uart_tx_data_cache[1671:1664] ;
            9'd304 : ir_tx_data <= r_uart_tx_data_cache[1663:1656] ;
            9'd305 : ir_tx_data <= r_uart_tx_data_cache[1655:1648] ;
            9'd306 : ir_tx_data <= r_uart_tx_data_cache[1647:1640] ;
            9'd307 : ir_tx_data <= r_uart_tx_data_cache[1639:1632] ;
            9'd308 : ir_tx_data <= r_uart_tx_data_cache[1631:1624] ;
            9'd309 : ir_tx_data <= r_uart_tx_data_cache[1623:1616] ;
            9'd310 : ir_tx_data <= r_uart_tx_data_cache[1615:1608] ;
            9'd311 : ir_tx_data <= r_uart_tx_data_cache[1607:1600] ;
            9'd312 : ir_tx_data <= r_uart_tx_data_cache[1599:1592] ;
            9'd313 : ir_tx_data <= r_uart_tx_data_cache[1591:1584] ;
            9'd314 : ir_tx_data <= r_uart_tx_data_cache[1583:1576] ;
            9'd315 : ir_tx_data <= r_uart_tx_data_cache[1575:1568] ;
            9'd316 : ir_tx_data <= r_uart_tx_data_cache[1567:1560] ;
            9'd317 : ir_tx_data <= r_uart_tx_data_cache[1559:1552] ;
            9'd318 : ir_tx_data <= r_uart_tx_data_cache[1551:1544] ;
            9'd319 : ir_tx_data <= r_uart_tx_data_cache[1543:1536] ;
            9'd320 : ir_tx_data <= r_uart_tx_data_cache[1535:1528] ;
            9'd321 : ir_tx_data <= r_uart_tx_data_cache[1527:1520] ;
            9'd322 : ir_tx_data <= r_uart_tx_data_cache[1519:1512] ;
            9'd323 : ir_tx_data <= r_uart_tx_data_cache[1511:1504] ;
            9'd324 : ir_tx_data <= r_uart_tx_data_cache[1503:1496] ;
            9'd325 : ir_tx_data <= r_uart_tx_data_cache[1495:1488] ;
            9'd326 : ir_tx_data <= r_uart_tx_data_cache[1487:1480] ;
            9'd327 : ir_tx_data <= r_uart_tx_data_cache[1479:1472] ;
            9'd328 : ir_tx_data <= r_uart_tx_data_cache[1471:1464] ;
            9'd329 : ir_tx_data <= r_uart_tx_data_cache[1463:1456] ;
            9'd330 : ir_tx_data <= r_uart_tx_data_cache[1455:1448] ;
            9'd331 : ir_tx_data <= r_uart_tx_data_cache[1447:1440] ;
            9'd332 : ir_tx_data <= r_uart_tx_data_cache[1439:1432] ;
            9'd333 : ir_tx_data <= r_uart_tx_data_cache[1431:1424] ;
            9'd334 : ir_tx_data <= r_uart_tx_data_cache[1423:1416] ;
            9'd335 : ir_tx_data <= r_uart_tx_data_cache[1415:1408] ;
            9'd336 : ir_tx_data <= r_uart_tx_data_cache[1407:1400] ;
            9'd337 : ir_tx_data <= r_uart_tx_data_cache[1399:1392] ;
            9'd338 : ir_tx_data <= r_uart_tx_data_cache[1391:1384] ;
            9'd339 : ir_tx_data <= r_uart_tx_data_cache[1383:1376] ;
            9'd340 : ir_tx_data <= r_uart_tx_data_cache[1375:1368] ;
            9'd341 : ir_tx_data <= r_uart_tx_data_cache[1367:1360] ;
            9'd342 : ir_tx_data <= r_uart_tx_data_cache[1359:1352] ;
            9'd343 : ir_tx_data <= r_uart_tx_data_cache[1351:1344] ;
            9'd344 : ir_tx_data <= r_uart_tx_data_cache[1343:1336] ;
            9'd345 : ir_tx_data <= r_uart_tx_data_cache[1335:1328] ;
            9'd346 : ir_tx_data <= r_uart_tx_data_cache[1327:1320] ;
            9'd347 : ir_tx_data <= r_uart_tx_data_cache[1319:1312] ;
            9'd348 : ir_tx_data <= r_uart_tx_data_cache[1311:1304] ;
            9'd349 : ir_tx_data <= r_uart_tx_data_cache[1303:1296] ;
            9'd350 : ir_tx_data <= r_uart_tx_data_cache[1295:1288] ;
            9'd351 : ir_tx_data <= r_uart_tx_data_cache[1287:1280] ;
            9'd352 : ir_tx_data <= r_uart_tx_data_cache[1279:1272] ;
            9'd353 : ir_tx_data <= r_uart_tx_data_cache[1271:1264] ;
            9'd354 : ir_tx_data <= r_uart_tx_data_cache[1263:1256] ;
            9'd355 : ir_tx_data <= r_uart_tx_data_cache[1255:1248] ;
            9'd356 : ir_tx_data <= r_uart_tx_data_cache[1247:1240] ;
            9'd357 : ir_tx_data <= r_uart_tx_data_cache[1239:1232] ;
            9'd358 : ir_tx_data <= r_uart_tx_data_cache[1231:1224] ;
            9'd359 : ir_tx_data <= r_uart_tx_data_cache[1223:1216] ;
            9'd360 : ir_tx_data <= r_uart_tx_data_cache[1215:1208] ;
            9'd361 : ir_tx_data <= r_uart_tx_data_cache[1207:1200] ;
            9'd362 : ir_tx_data <= r_uart_tx_data_cache[1199:1192] ;
            9'd363 : ir_tx_data <= r_uart_tx_data_cache[1191:1184] ;
            9'd364 : ir_tx_data <= r_uart_tx_data_cache[1183:1176] ;
            9'd365 : ir_tx_data <= r_uart_tx_data_cache[1175:1168] ;
            9'd366 : ir_tx_data <= r_uart_tx_data_cache[1167:1160] ;
            9'd367 : ir_tx_data <= r_uart_tx_data_cache[1159:1152] ;
            9'd368 : ir_tx_data <= r_uart_tx_data_cache[1151:1144] ;
            9'd369 : ir_tx_data <= r_uart_tx_data_cache[1143:1136] ;
            9'd370 : ir_tx_data <= r_uart_tx_data_cache[1135:1128] ;
            9'd371 : ir_tx_data <= r_uart_tx_data_cache[1127:1120] ;
            9'd372 : ir_tx_data <= r_uart_tx_data_cache[1119:1112] ;
            9'd373 : ir_tx_data <= r_uart_tx_data_cache[1111:1104] ;
            9'd374 : ir_tx_data <= r_uart_tx_data_cache[1103:1096] ;
            9'd375 : ir_tx_data <= r_uart_tx_data_cache[1095:1088] ;
            9'd376 : ir_tx_data <= r_uart_tx_data_cache[1087:1080] ;
            9'd377 : ir_tx_data <= r_uart_tx_data_cache[1079:1072] ;
            9'd378 : ir_tx_data <= r_uart_tx_data_cache[1071:1064] ;
            9'd379 : ir_tx_data <= r_uart_tx_data_cache[1063:1056] ;
            9'd380 : ir_tx_data <= r_uart_tx_data_cache[1055:1048] ;
            9'd381 : ir_tx_data <= r_uart_tx_data_cache[1047:1040] ;
            9'd382 : ir_tx_data <= r_uart_tx_data_cache[1039:1032] ;
            9'd383 : ir_tx_data <= r_uart_tx_data_cache[1031:1024] ;
            9'd384 : ir_tx_data <= r_uart_tx_data_cache[1023:1016] ;
            9'd385 : ir_tx_data <= r_uart_tx_data_cache[1015:1008] ;
            9'd386 : ir_tx_data <= r_uart_tx_data_cache[1007:1000] ;
            9'd387 : ir_tx_data <= r_uart_tx_data_cache[ 999: 992] ;
            9'd388 : ir_tx_data <= r_uart_tx_data_cache[ 991: 984] ;
            9'd389 : ir_tx_data <= r_uart_tx_data_cache[ 983: 976] ;
            9'd390 : ir_tx_data <= r_uart_tx_data_cache[ 975: 968] ;
            9'd391 : ir_tx_data <= r_uart_tx_data_cache[ 967: 960] ;
            9'd392 : ir_tx_data <= r_uart_tx_data_cache[ 959: 952] ;
            9'd393 : ir_tx_data <= r_uart_tx_data_cache[ 951: 944] ;
            9'd394 : ir_tx_data <= r_uart_tx_data_cache[ 943: 936] ;
            9'd395 : ir_tx_data <= r_uart_tx_data_cache[ 935: 928] ;
            9'd396 : ir_tx_data <= r_uart_tx_data_cache[ 927: 920] ;
            9'd397 : ir_tx_data <= r_uart_tx_data_cache[ 919: 912] ;
            9'd398 : ir_tx_data <= r_uart_tx_data_cache[ 911: 904] ;
            9'd399 : ir_tx_data <= r_uart_tx_data_cache[ 903: 896] ;
            9'd400 : ir_tx_data <= r_uart_tx_data_cache[ 895: 888] ;
            9'd401 : ir_tx_data <= r_uart_tx_data_cache[ 887: 880] ;
            9'd402 : ir_tx_data <= r_uart_tx_data_cache[ 879: 872] ;
            9'd403 : ir_tx_data <= r_uart_tx_data_cache[ 871: 864] ;
            9'd404 : ir_tx_data <= r_uart_tx_data_cache[ 863: 856] ;
            9'd405 : ir_tx_data <= r_uart_tx_data_cache[ 855: 848] ;
            9'd406 : ir_tx_data <= r_uart_tx_data_cache[ 847: 840] ;
            9'd407 : ir_tx_data <= r_uart_tx_data_cache[ 839: 832] ;
            9'd408 : ir_tx_data <= r_uart_tx_data_cache[ 831: 824] ;
            9'd409 : ir_tx_data <= r_uart_tx_data_cache[ 823: 816] ;
            9'd410 : ir_tx_data <= r_uart_tx_data_cache[ 815: 808] ;
            9'd411 : ir_tx_data <= r_uart_tx_data_cache[ 807: 800] ;
            9'd412 : ir_tx_data <= r_uart_tx_data_cache[ 799: 792] ;
            9'd413 : ir_tx_data <= r_uart_tx_data_cache[ 791: 784] ;
            9'd414 : ir_tx_data <= r_uart_tx_data_cache[ 783: 776] ;
            9'd415 : ir_tx_data <= r_uart_tx_data_cache[ 775: 768] ;
            9'd416 : ir_tx_data <= r_uart_tx_data_cache[ 767: 760] ;
            9'd417 : ir_tx_data <= r_uart_tx_data_cache[ 759: 752] ;
            9'd418 : ir_tx_data <= r_uart_tx_data_cache[ 751: 744] ;
            9'd419 : ir_tx_data <= r_uart_tx_data_cache[ 743: 736] ;
            9'd420 : ir_tx_data <= r_uart_tx_data_cache[ 735: 728] ;
            9'd421 : ir_tx_data <= r_uart_tx_data_cache[ 727: 720] ;
            9'd422 : ir_tx_data <= r_uart_tx_data_cache[ 719: 712] ;
            9'd423 : ir_tx_data <= r_uart_tx_data_cache[ 711: 704] ;
            9'd424 : ir_tx_data <= r_uart_tx_data_cache[ 703: 696] ;
            9'd425 : ir_tx_data <= r_uart_tx_data_cache[ 695: 688] ;
            9'd426 : ir_tx_data <= r_uart_tx_data_cache[ 687: 680] ;
            9'd427 : ir_tx_data <= r_uart_tx_data_cache[ 679: 672] ;
            9'd428 : ir_tx_data <= r_uart_tx_data_cache[ 671: 664] ;
            9'd429 : ir_tx_data <= r_uart_tx_data_cache[ 663: 656] ;
            9'd430 : ir_tx_data <= r_uart_tx_data_cache[ 655: 648] ;
            9'd431 : ir_tx_data <= r_uart_tx_data_cache[ 647: 640] ;
            9'd432 : ir_tx_data <= r_uart_tx_data_cache[ 639: 632] ;
            9'd433 : ir_tx_data <= r_uart_tx_data_cache[ 631: 624] ;
            9'd434 : ir_tx_data <= r_uart_tx_data_cache[ 623: 616] ;
            9'd435 : ir_tx_data <= r_uart_tx_data_cache[ 615: 608] ;
            9'd436 : ir_tx_data <= r_uart_tx_data_cache[ 607: 600] ;
            9'd437 : ir_tx_data <= r_uart_tx_data_cache[ 599: 592] ;
            9'd438 : ir_tx_data <= r_uart_tx_data_cache[ 591: 584] ;
            9'd439 : ir_tx_data <= r_uart_tx_data_cache[ 583: 576] ;
            9'd440 : ir_tx_data <= r_uart_tx_data_cache[ 575: 568] ;
            9'd441 : ir_tx_data <= r_uart_tx_data_cache[ 567: 560] ;
            9'd442 : ir_tx_data <= r_uart_tx_data_cache[ 559: 552] ;
            9'd443 : ir_tx_data <= r_uart_tx_data_cache[ 551: 544] ;
            9'd444 : ir_tx_data <= r_uart_tx_data_cache[ 543: 536] ;
            9'd445 : ir_tx_data <= r_uart_tx_data_cache[ 535: 528] ;
            9'd446 : ir_tx_data <= r_uart_tx_data_cache[ 527: 520] ;
            9'd447 : ir_tx_data <= r_uart_tx_data_cache[ 519: 512] ;
            9'd448 : ir_tx_data <= r_uart_tx_data_cache[ 511: 504] ;
            9'd449 : ir_tx_data <= r_uart_tx_data_cache[ 503: 496] ;
            9'd450 : ir_tx_data <= r_uart_tx_data_cache[ 495: 488] ;
            9'd451 : ir_tx_data <= r_uart_tx_data_cache[ 487: 480] ;
            9'd452 : ir_tx_data <= r_uart_tx_data_cache[ 479: 472] ;
            9'd453 : ir_tx_data <= r_uart_tx_data_cache[ 471: 464] ;
            9'd454 : ir_tx_data <= r_uart_tx_data_cache[ 463: 456] ;
            9'd455 : ir_tx_data <= r_uart_tx_data_cache[ 455: 448] ;
            9'd456 : ir_tx_data <= r_uart_tx_data_cache[ 447: 440] ;
            9'd457 : ir_tx_data <= r_uart_tx_data_cache[ 439: 432] ;
            9'd458 : ir_tx_data <= r_uart_tx_data_cache[ 431: 424] ;
            9'd459 : ir_tx_data <= r_uart_tx_data_cache[ 423: 416] ;
            9'd460 : ir_tx_data <= r_uart_tx_data_cache[ 415: 408] ;
            9'd461 : ir_tx_data <= r_uart_tx_data_cache[ 407: 400] ;
            9'd462 : ir_tx_data <= r_uart_tx_data_cache[ 399: 392] ;
            9'd463 : ir_tx_data <= r_uart_tx_data_cache[ 391: 384] ;
            9'd464 : ir_tx_data <= r_uart_tx_data_cache[ 383: 376] ;
            9'd465 : ir_tx_data <= r_uart_tx_data_cache[ 375: 368] ;
            9'd466 : ir_tx_data <= r_uart_tx_data_cache[ 367: 360] ;
            9'd467 : ir_tx_data <= r_uart_tx_data_cache[ 359: 352] ;
            9'd468 : ir_tx_data <= r_uart_tx_data_cache[ 351: 344] ;
            9'd469 : ir_tx_data <= r_uart_tx_data_cache[ 343: 336] ;
            9'd470 : ir_tx_data <= r_uart_tx_data_cache[ 335: 328] ;
            9'd471 : ir_tx_data <= r_uart_tx_data_cache[ 327: 320] ;
            9'd472 : ir_tx_data <= r_uart_tx_data_cache[ 319: 312] ;
            9'd473 : ir_tx_data <= r_uart_tx_data_cache[ 311: 304] ;
            9'd474 : ir_tx_data <= r_uart_tx_data_cache[ 303: 296] ;
            9'd475 : ir_tx_data <= r_uart_tx_data_cache[ 295: 288] ;
            9'd476 : ir_tx_data <= r_uart_tx_data_cache[ 287: 280] ;
            9'd477 : ir_tx_data <= r_uart_tx_data_cache[ 279: 272] ;
            9'd478 : ir_tx_data <= r_uart_tx_data_cache[ 271: 264] ;
            9'd479 : ir_tx_data <= r_uart_tx_data_cache[ 263: 256] ;
            9'd480 : ir_tx_data <= r_uart_tx_data_cache[ 255: 248] ;
            9'd481 : ir_tx_data <= r_uart_tx_data_cache[ 247: 240] ;
            9'd482 : ir_tx_data <= r_uart_tx_data_cache[ 239: 232] ;
            9'd483 : ir_tx_data <= r_uart_tx_data_cache[ 231: 224] ;
            9'd484 : ir_tx_data <= r_uart_tx_data_cache[ 223: 216] ;
            9'd485 : ir_tx_data <= r_uart_tx_data_cache[ 215: 208] ;
            9'd486 : ir_tx_data <= r_uart_tx_data_cache[ 207: 200] ;
            9'd487 : ir_tx_data <= r_uart_tx_data_cache[ 199: 192] ;
            9'd488 : ir_tx_data <= r_uart_tx_data_cache[ 191: 184] ;
            9'd489 : ir_tx_data <= r_uart_tx_data_cache[ 183: 176] ;
            9'd490 : ir_tx_data <= r_uart_tx_data_cache[ 175: 168] ;
            9'd491 : ir_tx_data <= r_uart_tx_data_cache[ 167: 160] ;
            9'd492 : ir_tx_data <= r_uart_tx_data_cache[ 159: 152] ;
            9'd493 : ir_tx_data <= r_uart_tx_data_cache[ 151: 144] ;
            9'd494 : ir_tx_data <= r_uart_tx_data_cache[ 143: 136] ;
            9'd495 : ir_tx_data <= r_uart_tx_data_cache[ 135: 128] ;
            9'd496 : ir_tx_data <= r_uart_tx_data_cache[ 127: 120] ;
            9'd497 : ir_tx_data <= r_uart_tx_data_cache[ 119: 112] ;
            9'd498 : ir_tx_data <= r_uart_tx_data_cache[ 111: 104] ;
            9'd499 : ir_tx_data <= r_uart_tx_data_cache[ 103:  96] ;
            9'd500 : ir_tx_data <= r_uart_tx_data_cache[  95:  88] ;
            9'd501 : ir_tx_data <= r_uart_tx_data_cache[  87:  80] ;
            9'd502 : ir_tx_data <= r_uart_tx_data_cache[  79:  72] ;
            9'd503 : ir_tx_data <= r_uart_tx_data_cache[  71:  64] ;
            9'd504 : ir_tx_data <= r_uart_tx_data_cache[  63:  56] ;
            9'd505 : ir_tx_data <= r_uart_tx_data_cache[  55:  48] ;
            9'd506 : ir_tx_data <= r_uart_tx_data_cache[  47:  40] ;
            9'd507 : ir_tx_data <= r_uart_tx_data_cache[  39:  32] ;
            9'd508 : ir_tx_data <= r_uart_tx_data_cache[  31:  24] ;
            9'd509 : ir_tx_data <= r_uart_tx_data_cache[  23:  16] ;
            9'd510 : ir_tx_data <= r_uart_tx_data_cache[  15:   8] ;
            9'd511 : ir_tx_data <= r_uart_tx_data_cache[   7:   0] ;
            default : ir_tx_data <= 8'd0 ;
        endcase
    end
end

tx#(
    .CLK_FRE         (CLK_FRE        ) ,
    .BAUD_RATE       (BAUD_RATE      )
)tx_inst(
    .iw_tx_clk       (iw_uart_tx_clk ) ,
    .iw_tx_rst       (iw_uart_tx_rst ) ,
    .iw_tx_en        (ir_tx_en       ) ,
    .iw_tx_data      (ir_tx_data     ) ,
    
    .or_tx_state    (ow_tx_state     ) ,
    .or_tx_baud_cnt (ow_tx_baud_cnt  ),
    .or_tx_done     (ow_tx_done      ) ,
    .or_tx          (ow_uart_tx      ) 
);

//ila_uart_tx ila_uart_tx_inst (
//	.clk(iw_uart_tx_clk), // input wire clk

//	.probe0(iw_uart_tx_en         ) , // input wire [0:0]  probe1 
//	.probe1(r_uart_tx_state       ) ,
//	.probe2(iw_uart_tx_num        ) ,
//	.probe3(r_uart_tx_data_cache  ) ,
//	.probe4(iw_uart_tx_data       ) , // input wire [63:0]  probe2 
//	.probe5(or_uart_tx_data_ready )  // input wire [0:0]  probe3 
//);

endmodule
