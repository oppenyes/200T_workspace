`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// UART frame loopback bridge
//
// Receives the completed parallel frame produced by uart_module.uart_rx and
// submits that frame once to uart_module.uart_tx. All reset behavior is
// synchronous to iw_sys_clk.
//////////////////////////////////////////////////////////////////////////////////

module uart_data_loopback_module(
    input             iw_sys_clk       ,
    input             iw_sys_rst       ,

    input             iw_uart_rx_valid ,
    input  [511:0]    iw_uart_rx_data  ,
    input  [  6:0]    iw_uart_rx_num   ,

    input             iw_uart_tx_rdy   ,
    input             iw_uart_tx_done  ,
    output reg        or_uart_tx_en    ,
    output reg [  9:0] or_uart_tx_num  ,
    output reg [4095:0] or_uart_tx_data
);

reg          r_frame_pending;
reg          r_tx_in_progress;
reg [  6:0]  r_frame_num;
reg [511:0]  r_frame_data;

// Each pending frame is accepted only once. The registered tx_en pulse avoids
// retransmission when iw_uart_tx_rdy remains asserted for several cycles.
wire w_tx_accept = r_frame_pending && !r_tx_in_progress && iw_uart_tx_rdy;

always @(posedge iw_sys_clk) begin
    if (iw_sys_rst) begin
        r_frame_pending   <= 1'b0;
        r_tx_in_progress  <= 1'b0;
        r_frame_num       <= 7'd0;
        r_frame_data      <= 512'd0;
        or_uart_tx_en     <= 1'b0;
        or_uart_tx_num    <= 10'd0;
        or_uart_tx_data   <= 4096'd0;
    end
    else begin
        // tx_en is a one-clock request pulse.
        or_uart_tx_en <= 1'b0;

        if (w_tx_accept) begin
            or_uart_tx_en   <= 1'b1;
            or_uart_tx_num  <= {3'd0, r_frame_num};
            // uart_tx sends the last iw_uart_tx_num bytes from the LSB end.
            or_uart_tx_data <= {{3584{1'b0}}, r_frame_data};
        end

        if (w_tx_accept)
            r_tx_in_progress <= 1'b1;
        else if (iw_uart_tx_done)
            r_tx_in_progress <= 1'b0;

        // uart_module has no RX back-pressure. In same-baud loopback, this
        // one-frame register is released at TX start and can hold the next RX
        // frame while the current frame is serialized.
        if (iw_uart_rx_valid) begin
            if (!r_frame_pending || w_tx_accept) begin
                r_frame_pending <= 1'b1;
                r_frame_num     <= iw_uart_rx_num;
                r_frame_data    <= iw_uart_rx_data;
            end
        end
        else if (w_tx_accept) begin
            r_frame_pending <= 1'b0;
        end
    end
end

endmodule
