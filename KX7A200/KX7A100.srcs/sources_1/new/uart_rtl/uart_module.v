`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/18 11:14:25
// Design Name: 
// Module Name: uart_module
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

module uart_module#(
    CLK_FRE      = 50_000_000 ,
    BAUD_RATE    = 921600     ,
    UART_RX_NUM  = 7
)(
    input           iw_sys_clk          ,
    input           iw_sys_rst          ,
    
    input  [   9:0] iw_uart_tx_num      ,
    input           iw_uart_tx_en       ,
    output          ow_uart_tx_rdy      ,
    input  [4095:0] iw_uart_tx_data     ,
    output          ow_uart_tx_done     ,
    
    output          ow_uart_rx_data_rdy ,
    output [ 511:0] ow_uart_rx_data     ,
    output [   6:0] ow_uart_rx_num      ,
    
    input           iw_rx               ,    
    output          ow_tx
);

uart_rx#(
    .CLK_FRE                (CLK_FRE             ) ,
    .BAUD_RATE              (BAUD_RATE           ) ,
    .UART_RX_NUM            (UART_RX_NUM         )
)uart_rx_inst(
    .iw_uart_rx_clk         (iw_sys_clk          ) ,       
    .iw_uart_rx_rst         (iw_sys_rst          ) ,
    .iw_uart_rx             (iw_rx               ) ,  
      
    .or_uart_rx_data_ready  (ow_uart_rx_data_rdy ) ,
    .or_uart_rx_data        (ow_uart_rx_data     ) ,
    .or_uart_rx_num         (ow_uart_rx_num      )
);

uart_tx#(
    .CLK_FRE           (CLK_FRE         ) ,
    .BAUD_RATE         (BAUD_RATE       )
)uart_tx_inst(
    .iw_uart_tx_clk    (iw_sys_clk      ) ,       
    .iw_uart_tx_rst    (iw_sys_rst      ) ,
    
    .iw_uart_tx_num    (iw_uart_tx_num  ) ,
    .iw_uart_tx_en     (iw_uart_tx_en   ) , 
    .iw_uart_tx_data   (iw_uart_tx_data ) , 
    
    .or_uart_tx_rdy    (ow_uart_tx_rdy  ) ,
    .or_uart_tx_done   (ow_uart_tx_done ) , 
    .ow_uart_tx        (ow_tx           )  
);

//ila_0 ila_0_inst (
//	.clk(iw_sys_clk), // input wire clk

//	.probe0(baud_clk), // input wire [0:0]  probe0  
//	.probe1(iw_rx), // input wire [0:0]  probe1 
//	.probe2(ow_uart_rx_data_ready), // input wire [63:0]  probe2 
//	.probe3(ow_uart_rx_data), // input wire [0:0]  probe3 
//	.probe4(iw_uart_tx_en), // input wire [0:0]  probe4 
//	.probe5(iw_uart_tx_data),// input wire [63:0]  probe5
//	.probe6(ow_uart_tx_done), // input wire [0:0]  probe6
//	.probe7(ow_tx)  // input wire [0:0]  probe7
//);

endmodule

