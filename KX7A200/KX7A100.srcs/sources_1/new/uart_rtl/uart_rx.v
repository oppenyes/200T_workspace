`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/18 11:14:25
// Design Name: 
// Module Name: uart_rx
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

module uart_rx#(
    CLK_FRE      = 50_000_000 ,
    BAUD_RATE    = 921600     ,
    UART_RX_NUM  = 7
)
(
    input              iw_uart_rx_clk         ,       
    input              iw_uart_rx_rst         ,
    input              iw_uart_rx             , 
	
	output reg         or_uart_rx_data_ready  , 
	output reg [511:0] or_uart_rx_data        ,
	output reg [  6:0] or_uart_rx_num
);

//波特率时钟分频系数，coe = 时钟频率 / 目标波特率 - 1  
localparam BAUD_DIV_coe = (CLK_FRE / BAUD_RATE - 1) * 200 ;

reg r_UART_RX_RXOVR = 1'b0 ;
reg r_UART_RX_TOUT  = 1'b0 ;

reg [511:0] r_uart_rx_data_cache = 1'b0 ;

reg         r_uart_rx_ok    = 1'b0 ;

reg [ 5:0]  r_uart_rx_state   = 1'b0 ;
reg [ 6:0]  r_uart_rx_state_r = 1'b0 ;

reg        r_uart_rx_time_out       = 1'b0 ;
reg        r_uart_rx_time_out_valid = 1'b0 ;
reg [15:0] r_uart_rx_time_out_cnt   = 1'b0 ;

wire [7:0] ow_rx_data ;

always@(posedge iw_uart_rx_clk) begin
    if(iw_uart_rx_rst || or_uart_rx_data_ready)begin
        r_uart_rx_data_cache <= 1'b0 ;
    end
    else if(ow_rx_data_ready)begin
        r_uart_rx_data_cache <= {r_uart_rx_data_cache[503:0] , ow_rx_data} ;
    end
end

always@(posedge iw_uart_rx_clk) begin
    if(r_uart_rx_ok)begin
        or_uart_rx_data_ready <= 1'b1                 ;
        or_uart_rx_data       <= r_uart_rx_data_cache ;
//        if(r_UART_RX_RXOVR)
            or_uart_rx_num <= r_uart_rx_state_r + 1'b1 ;
//        else if(r_UART_RX_TOUT)
//            or_uart_rx_num <= r_uart_rx_state_r ;
    end
    else begin
        or_uart_rx_data_ready <= 1'b0 ;
        or_uart_rx_data       <= 1'b0 ;
        or_uart_rx_num        <= 1'b0 ;
    end
end

always@(posedge iw_uart_rx_clk) begin
    if(iw_uart_rx_rst || r_uart_rx_ok)begin
        r_uart_rx_state   <= 1'b0 ;
        r_uart_rx_state_r <= 1'b0 ;
    end
    else if(ow_rx_data_ready)begin
        r_uart_rx_state   <= r_uart_rx_state + 1'b1 ;
        r_uart_rx_state_r <= r_uart_rx_state        ;
    end
end

always@(posedge iw_uart_rx_clk) begin
    if(ow_rx_data_ready && r_uart_rx_state == UART_RX_NUM)begin
        r_uart_rx_ok    <= 1'b1 ;
        r_UART_RX_RXOVR <= 1'b1 ;
    end
    else if(r_uart_rx_time_out || ow_rx_data_ready && &r_uart_rx_state)begin
        r_uart_rx_ok   <= 1'b1 ;
        r_UART_RX_TOUT <= 1'b1 ;
    end
    else begin
        r_uart_rx_ok    <= 1'b0 ;
        r_UART_RX_RXOVR <= 1'b0 ;
        r_UART_RX_TOUT  <= 1'b0 ;
    end
end

always@(posedge iw_uart_rx_clk)begin
    if(iw_uart_rx_rst || r_uart_rx_ok)begin
        r_uart_rx_time_out       <= 1'b0 ;
        r_uart_rx_time_out_valid <= 1'b0 ;
        r_uart_rx_time_out_cnt   <= 1'b0 ;
    end
    else if(r_uart_rx_time_out_cnt == BAUD_DIV_coe)begin
        r_uart_rx_time_out       <= 1'b1 ;
        r_uart_rx_time_out_valid <= 1'b0 ;
        r_uart_rx_time_out_cnt   <= 1'b0 ;
    end
    else begin
        if(ow_rx_data_ready)begin
            r_uart_rx_time_out_valid <= 1'b1 ;
            r_uart_rx_time_out_cnt   <= 1'b0 ;
        end
        else if(r_uart_rx_time_out_valid)begin
            r_uart_rx_time_out_cnt <= r_uart_rx_time_out_cnt + 1'b1 ;
        end
        
        r_uart_rx_time_out <= 1'b0 ;
    end
end

rx#(
    .CLK_FRE          (CLK_FRE          ) ,
    .BAUD_RATE        (BAUD_RATE        )
)rx_inst(
    .iw_rx_clk        (iw_uart_rx_clk   ) ,       
    .iw_rx_rst        (iw_uart_rx_rst   ) ,
    .iw_rx            (iw_uart_rx       ) ,

    .or_rx_data       (ow_rx_data       ) ,  
    .ow_rx_data_ready (ow_rx_data_ready )   
);

//ila_uart_rx ila_uart_rx_inst (
//	.clk(iw_uart_rx_clk), // input wire clk

//	.probe0(iw_uart_rx            ), // input wire [0:0]  probe1 
//	.probe1(or_uart_rx_num        ), // input wire [ 6:0]  probe2 
//	.probe2(or_uart_rx_data_ready ), // input wire [0:0]  probe3 
//	.probe3(r_uart_rx_state       ), // [5:0] 
//	.probe4(ow_rx_data            ), // [7:0]
//	.probe5(ow_rx_data_ready      ),
//	.probe6(r_uart_rx_data_ok     ),
//	.probe7(r_uart_rx_data_cache  ), // [64:0]
//	.probe8(ow_rx_valid           )
//);

endmodule
