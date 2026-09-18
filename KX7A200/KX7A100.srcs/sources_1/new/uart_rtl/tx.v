`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/18 11:14:25
// Design Name: 
// Module Name: tx
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
module tx#(
    CLK_FRE   = 50_000_000 ,
    BAUD_RATE = 921600 
)
(
    input             iw_tx_clk      ,       
    input             iw_tx_rst      ,
    input             iw_tx_en       ,
    input      [ 7:0] iw_tx_data     ,
    
    output reg [ 3:0] or_tx_state    ,
    output reg [15:0] or_tx_baud_cnt ,
    output reg        or_tx          ,
    output reg        or_tx_done
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

//reg [3:0] tx_state   = START ;
reg       r_tx_valid = 1'b0 ;

//reg [15:0] r_tx_baud_cnt = 1'b0 ;
//波特率时钟分频系数，coe = 时钟频率 / 目标波特率 - 1  
localparam [15:0] BAUD_DIV_coe0 = CLK_FRE / BAUD_RATE - 1 ; 
localparam [15:0] BAUD_DIV_coe1 = BAUD_DIV_coe0 / 2       ;

always @(posedge iw_tx_clk)begin
    if(iw_tx_rst)begin
        or_tx_done <= 1'b0 ;
    end
    else if(or_tx_state == 4'd9 && or_tx_baud_cnt == BAUD_DIV_coe0 - 2'd2)begin
        or_tx_done <= 1'b1 ;
    end
    else if(or_tx_done)begin
        or_tx_done <= 1'b0 ;
    end
end

always @(posedge iw_tx_clk)begin
    if(iw_tx_rst)begin
        r_tx_valid <= 1'b0 ;
    end
    else if(iw_tx_en)begin
        r_tx_valid <= 1'b1 ;
    end
    else if(or_tx_done)begin
        r_tx_valid <= 1'b0 ;
    end
end

always@(posedge iw_tx_clk)begin
    if(iw_tx_rst)begin
        or_tx_state <= 1'b0 ;
    end
    else if(or_tx_baud_cnt == BAUD_DIV_coe0)begin
        case(or_tx_state)
           START : or_tx_state <= BIT0 ;
           BIT0  : or_tx_state <= BIT1 ;
           BIT1  : or_tx_state <= BIT2 ;
           BIT2  : or_tx_state <= BIT3 ;
           BIT3  : or_tx_state <= BIT4 ;
           BIT4  : or_tx_state <= BIT5 ;
           BIT5  : or_tx_state <= BIT6 ;
           BIT6  : or_tx_state <= BIT7 ;
           BIT7  : or_tx_state <= STOP ;
           STOP  : or_tx_state <= START;
        default  : or_tx_state <= STOP ;
        endcase
    end
end   

always@(posedge iw_tx_clk)begin
    if(iw_tx_rst)begin
        or_tx <= 1'b1 ;
    end
    else if(r_tx_valid)begin
        case(or_tx_state)
            START : or_tx <= 1'b0;
            BIT0  : or_tx <= iw_tx_data[0];
            BIT1  : or_tx <= iw_tx_data[1];
            BIT2  : or_tx <= iw_tx_data[2];
            BIT3  : or_tx <= iw_tx_data[3];
            BIT4  : or_tx <= iw_tx_data[4];
            BIT5  : or_tx <= iw_tx_data[5];
            BIT6  : or_tx <= iw_tx_data[6];
            BIT7  : or_tx <= iw_tx_data[7];
            STOP  : or_tx <= 1'b1;
        default: or_tx <= 1'b1;
        endcase
    end
end

// 波特率分频器
always@(posedge iw_tx_clk)begin
    if(iw_tx_rst)begin
        or_tx_baud_cnt <= 1'b0 ;
    end
    else begin
        if(r_tx_valid && or_tx_baud_cnt != BAUD_DIV_coe0)	
            or_tx_baud_cnt <= or_tx_baud_cnt + 1'b1;
        else 
            or_tx_baud_cnt <= 1'b0;
    end        
end

//ila_tx ila_tx_inst (
//	.clk(iw_tx_clk), // input wire clk

//	.probe0(iw_tx_en       ), // input wire [0:0]  probe0  
//	.probe1(iw_tx_data     ), // input wire [7:0]  probe1 
//	.probe2(or_tx          ), // input wire [0:0]  probe2 
//	.probe3(or_tx_done     ), // input wire [0:0]  probe3 
//	.probe4(or_tx_state    ), // input wire [0:0]  probe4 
//	.probe5(r_tx_valid     ), // input wire [0:0]  probe5
//	.probe6(or_tx_baud_cnt )  // input wire [15:0]  probe6
//);

endmodule