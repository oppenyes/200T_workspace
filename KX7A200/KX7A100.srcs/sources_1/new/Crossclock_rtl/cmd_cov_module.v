`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:23:51
// Design Name: 
// Module Name: cmd_cov_module
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

module cmd_cov_module(
	input          iw_sys_clk                ,
	input          iw_sys_rst                ,
	
	input          iw_uart_rx_cmd_data_valid ,
	input  [511:0] iw_uart_rx_cmd_data       ,
	input  [  6:0] iw_uart_rx_cmd_num        ,
	
	input          iw_ETH_rx_cmd_data_valid  ,
	input  [ 63:0] iw_ETH_rx_cmd_data        ,
    
	output         ow_user_cmd_valid         ,
	output [511:0] ow_user_cmd_data          ,
	output [  6:0] ow_user_cmd_num           ,
	
	input          iw_uart_tx_rdy            ,
	output         ow_uart_tx_cmd_data_valid ,
	output [511:0] ow_uart_tx_cmd_data       ,
	output [  6:0] ow_uart_tx_cmd_num        ,
	
	input          iw_ETH_udp_fifo_wr_rdy    ,
	output         ow_ETH_tx_cmd_data_valid  ,
	output [ 63:0] ow_ETH_tx_cmd_data
);

// -------------------------------- reg ------------------------------ //
reg         r_user_cmd_valid = 1'b0 ;
reg [511:0] r_user_cmd_data  = 1'b0 ;
reg [  6:0] r_user_cmd_num   = 1'b0 ;

reg         r_ETH_tx_cmd_data_valid = 1'b0 ;
reg [ 63:0] r_ETH_tx_cmd_data       = 1'b0 ;
// -------------------------------- wire ------------------------------ //
wire [518:0] ow_uart_tx_cmd_cache ;
// -------------------------------- assign ------------------------------ //
assign ow_uart_tx_cmd_data = ow_uart_tx_cmd_cache[511:  0] ;
assign ow_uart_tx_cmd_num  = ow_uart_tx_cmd_cache[518:512] ;

assign ow_uart_tx_cmd_data_valid = ow_uart_fifo_valid && iw_uart_tx_rdy ;

assign ow_user_cmd_valid = r_user_cmd_valid ;
assign ow_user_cmd_data  = r_user_cmd_data  ;
assign ow_user_cmd_num   = r_user_cmd_num   ;

assign ow_ETH_tx_cmd_data_valid = r_ETH_tx_cmd_data_valid ;
assign ow_ETH_tx_cmd_data       = r_ETH_tx_cmd_data       ;
// -------------------------------- always ------------------------------ //
always@(posedge iw_sys_clk)begin
    if(iw_uart_rx_cmd_data_valid)begin
        r_user_cmd_valid <= 1'b1                ;
        r_user_cmd_data  <= iw_uart_rx_cmd_data ;
        r_user_cmd_num   <= iw_uart_rx_cmd_num  ;
    end
    else if(iw_ETH_rx_cmd_data_valid)begin
        r_user_cmd_valid <= 1'b1                ;
        r_user_cmd_data  <= iw_ETH_rx_cmd_data  ;
        r_user_cmd_num   <= 7'd8                ;
    end
    else begin
        r_user_cmd_valid <= 1'b0 ;
        r_user_cmd_data  <= 1'b0 ;
        r_user_cmd_num   <= 1'b0 ;
    end
end

always@(posedge iw_sys_clk)begin
    if(iw_ETH_udp_fifo_wr_rdy && r_user_cmd_valid)begin
        r_ETH_tx_cmd_data_valid <= 1'b1             ;
        r_ETH_tx_cmd_data       <= r_user_cmd_data ;
    end
    else begin
        r_ETH_tx_cmd_data_valid <= 1'b0 ;
        r_ETH_tx_cmd_data       <= 1'b0 ;
    end
end

// -------------------------------- module ------------------------------ //
// 100M_rst - 50M_rst 
uart_fifo uart_fifo_rst (
    .clk           (iw_sys_clk       ) , // input wire wr_clk
    .din           ({iw_uart_rx_cmd_num , iw_uart_rx_cmd_data } ) , // input wire [0 : 0] din   
    .wr_en         (iw_uart_rx_cmd_data_valid ) , // input wire wr_en
    .full          (                          ) , // output wire full
  
    .dout          (ow_uart_tx_cmd_cache      ) , // output wire [0 : 0] dout
    .rd_en         (iw_uart_tx_rdy            ) , // input wire rd_en
    .empty         (                          ) ,  // output wire empty
    .valid         (ow_uart_fifo_valid        )    // output wire valid
);

endmodule

