`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/18 11:14:25
// Design Name: 
// Module Name: rx
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
module rx#(
    CLK_FRE   = 50_000_000 ,
    BAUD_RATE = 921600 
)
(
    input            iw_rx_clk   ,       
    input            iw_rx_rst   ,
    input            iw_rx       ,

    output reg [7:0] or_rx_data       ,
    output           ow_rx_data_ready
);

localparam START = 4'd0;
localparam BIT0  = 4'd1;
localparam BIT1  = 4'd2;
localparam BIT2  = 4'd3;
localparam BIT3  = 4'd4;
localparam BIT4  = 4'd5;
localparam BIT5  = 4'd6;
localparam BIT6  = 4'd7;
localparam BIT7  = 4'd8;
localparam STOP  = 4'd9;

//波特率时钟分频系数，coe = 时钟频率 / 目标波特率 - 1  
localparam [15:0] BAUD_DIV_coe0 = CLK_FRE / BAUD_RATE - 1 ; 
localparam [15:0] BAUD_DIV_coe1 = BAUD_DIV_coe0 / 2       ;

reg [3:0] rx_state = STOP ;

reg       band_start_en  = 1'b0 ;
reg        r_rx_valid    = 1'b0 ;

reg [15:0] r_rx_baud_cnt = 1'b0 ; // 波特率计数器
reg        r_rx_baud_clk = 1'b0 ;

reg [7:0] r_rx_data_cache = 1'b0 ;
reg       r_rx_data_ready = 1'b0 ;

assign ow_rx_data_ready = r_rx_data_ready ;
// band_start_en 控制
always@(posedge iw_rx_clk)begin
    if(r_rx_valid)begin
        band_start_en <= 1'b0 ;
    end
    else if(rx_state == STOP)begin
        band_start_en <= iw_rx_down ;
    end
end

// rx_valid 控制
always@(posedge iw_rx_clk)begin
    if(iw_rx_rst || r_rx_data_ready)begin
        r_rx_valid <= 1'b0 ;
    end
    else if(band_start_en)begin
        r_rx_valid <= 1'b1 ;
    end
end   

always@(posedge iw_rx_clk)begin
    if(band_start_en || r_rx_valid && r_rx_baud_cnt == BAUD_DIV_coe0)begin
        case(rx_state)
            STOP    : if(band_start_en)rx_state <= START ; 
            START   : rx_state <= BIT0  ; //RX bit0
            BIT0    : rx_state <= BIT1  ; //RX bit1
            BIT1    : rx_state <= BIT2  ; //RX bit2
            BIT2    : rx_state <= BIT3  ; //RX bit3
            BIT3    : rx_state <= BIT4  ; //RX bit4
            BIT4    : rx_state <= BIT5  ; //RX bit5
            BIT5    : rx_state <= BIT6  ; //RX bit6
            BIT6    : rx_state <= BIT7  ; //RX bit7
            BIT7    : rx_state <= STOP  ; //RX STOP
            default : rx_state <= STOP  ;
        endcase  
    end    
end    

//以下状态机里面保存好数据
always@(posedge iw_rx_clk)begin
    if(r_rx_baud_cnt == BAUD_DIV_coe1)begin
        case(rx_state)
            BIT0   : r_rx_data_cache[0] <= iw_rx ;
            BIT1   : r_rx_data_cache[1] <= iw_rx ;
            BIT2   : r_rx_data_cache[2] <= iw_rx ;
            BIT3   : r_rx_data_cache[3] <= iw_rx ;
            BIT4   : r_rx_data_cache[4] <= iw_rx ;
            BIT5   : r_rx_data_cache[5] <= iw_rx ;
            BIT6   : r_rx_data_cache[6] <= iw_rx ;
            BIT7   : r_rx_data_cache[7] <= iw_rx ;
            default:   ; 
        endcase
    end
end

always@(posedge iw_rx_clk)begin
    if(r_rx_valid && r_rx_baud_cnt == BAUD_DIV_coe1 && rx_state == STOP)begin
        or_rx_data      <= r_rx_data_cache ;
        r_rx_data_ready <= 1'b1            ;
    end
    else begin
        or_rx_data      <= 1'b0 ;
        r_rx_data_ready <= 1'b0 ;
    end
end

// 波特率分频器
always@(posedge iw_rx_clk)begin
    if(iw_rx_rst)begin
        r_rx_baud_cnt <= 1'b0 ;
    end
    else begin
        if(band_start_en)
            r_rx_baud_cnt <= 1'b0;
        else
        if(r_rx_valid && r_rx_baud_cnt != BAUD_DIV_coe0)	
            r_rx_baud_cnt <= r_rx_baud_cnt + 1'b1;
        else 
            r_rx_baud_cnt <= 1'b0;
    end        
end

always@(posedge iw_rx_clk)begin
    if(iw_rx_rst)begin
        r_rx_baud_clk <= 1'b0 ;
    end
    else begin
        if(r_rx_baud_cnt == BAUD_DIV_coe0)	
            r_rx_baud_clk <= 1'b1;
        else if(r_rx_baud_cnt == BAUD_DIV_coe1)
            r_rx_baud_clk <= 1'b0;
        else if(!r_rx_baud_cnt)
            r_rx_baud_clk <= 1'b1;
    end        
end

edge_module edge_module_iw_rx(
    .edge_clk  (iw_rx_clk  ),
    .edge_rst  ( ),
    .edge_case (iw_rx      ),
    .edge_up   ( ),
    .edge_down (iw_rx_down ),
    .edge_en   ( )
);

//ila_rx ila_rx_inst (
//	.clk(iw_rx_clk), // input wire clk

//	.probe0(r_rx_baud_clk   ), // input wire [0:0]  probe0  
//	.probe1(iw_rx            ), // input wire [0:0]  probe1 
//	.probe2(r_rx_data_cache  ), // input wire [7:0]  probe2 
//	.probe3(or_rx_data       ), // input wire [7:0]  probe3 
//	.probe4(r_rx_data_ready  ), // input wire [0:0]  probe4 
//	.probe5(r_rx_valid       ),// input wire [0:0]  probe5
//	.probe6(r_rx_baud_cnt    ), // input wire [15:0]  probe6
//	.probe7(rx_state         ), // input wire [3:0]  probe7
//	.probe8(band_start_en    )  // input wire [0:0]  probe8
//);

endmodule
