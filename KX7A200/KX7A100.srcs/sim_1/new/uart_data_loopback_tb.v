`timescale 1ns / 1ns

module uart_data_loopback_tb;

localparam CLK_FRE   = 1_000_000;
localparam BAUD_RATE = 100_000;
localparam BIT_CLKS  = CLK_FRE / BAUD_RATE;

reg clk = 1'b0;
reg rst = 1'b1;
reg pc_uart_tx = 1'b1;
wire fpga_uart_tx;

wire          uart_tx_rdy;
wire          uart_tx_done;
wire          uart_rx_valid;
wire [511:0]  uart_rx_data;
wire [  6:0]  uart_rx_num;
wire          loopback_tx_en;
wire [  9:0]  loopback_tx_num;
wire [4095:0] loopback_tx_data;

always #5 clk = ~clk;

uart_module #(
    .CLK_FRE     (CLK_FRE),
    .BAUD_RATE   (BAUD_RATE),
    .UART_RX_NUM (7)
) dut_uart_module (
    .iw_sys_clk          (clk),
    .iw_sys_rst          (rst),
    .iw_uart_tx_num      (loopback_tx_num),
    .iw_uart_tx_en       (loopback_tx_en),
    .ow_uart_tx_rdy      (uart_tx_rdy),
    .iw_uart_tx_data     (loopback_tx_data),
    .ow_uart_tx_done     (uart_tx_done),
    .ow_uart_rx_data_rdy (uart_rx_valid),
    .ow_uart_rx_data     (uart_rx_data),
    .ow_uart_rx_num      (uart_rx_num),
    .iw_rx               (pc_uart_tx),
    .ow_tx               (fpga_uart_tx)
);

uart_data_loopback_module dut_loopback (
    .iw_sys_clk       (clk),
    .iw_sys_rst       (rst),
    .iw_uart_rx_valid (uart_rx_valid),
    .iw_uart_rx_data  (uart_rx_data),
    .iw_uart_rx_num   (uart_rx_num),
    .iw_uart_tx_rdy   (uart_tx_rdy),
    .iw_uart_tx_done  (uart_tx_done),
    .or_uart_tx_en    (loopback_tx_en),
    .or_uart_tx_num   (loopback_tx_num),
    .or_uart_tx_data  (loopback_tx_data)
);

task send_uart_byte(input [7:0] data);
    integer bit_index;
    begin
        pc_uart_tx = 1'b0;
        repeat (BIT_CLKS) @(posedge clk);
        for (bit_index = 0; bit_index < 8; bit_index = bit_index + 1) begin
            pc_uart_tx = data[bit_index];
            repeat (BIT_CLKS) @(posedge clk);
        end
        pc_uart_tx = 1'b1;
        repeat (BIT_CLKS) @(posedge clk);
    end
endtask

task receive_and_check_uart_byte(input [7:0] expected_data);
    integer bit_index;
    reg [7:0] received_data;
    begin
        @(negedge fpga_uart_tx);
        repeat (BIT_CLKS + BIT_CLKS/2) @(posedge clk);
        for (bit_index = 0; bit_index < 8; bit_index = bit_index + 1) begin
            received_data[bit_index] = fpga_uart_tx;
            repeat (BIT_CLKS) @(posedge clk);
        end
        if (received_data !== expected_data) begin
            $display("FAIL: expected %02h, received %02h", expected_data, received_data);
            $finish;
        end
    end
endtask

initial begin
    repeat (4) @(posedge clk);
    rst = 1'b0;
    repeat (4) @(posedge clk);

    // uart_rx emits num=8 after collecting these eight serial bytes.
    fork
        begin
            send_uart_byte(8'h12); send_uart_byte(8'h34);
            send_uart_byte(8'h56); send_uart_byte(8'h78);
            send_uart_byte(8'h9A); send_uart_byte(8'hBC);
            send_uart_byte(8'hDE); send_uart_byte(8'hF0);
        end
        begin
            receive_and_check_uart_byte(8'h12); receive_and_check_uart_byte(8'h34);
            receive_and_check_uart_byte(8'h56); receive_and_check_uart_byte(8'h78);
            receive_and_check_uart_byte(8'h9A); receive_and_check_uart_byte(8'hBC);
            receive_and_check_uart_byte(8'hDE); receive_and_check_uart_byte(8'hF0);
            $display("PASS: UART frame loopback returned 8 bytes exactly once.");
            #100;
            $finish;
        end
    join
end

initial begin
    #200000;
    $display("FAIL: simulation timeout");
    $finish;
end

endmodule
