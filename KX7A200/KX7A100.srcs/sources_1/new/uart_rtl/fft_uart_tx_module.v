`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 4096-point FFT result UART transmitter
//
// FFT result format:
//   real : signed 16-bit
//   imag : signed 16-bit
//
// UART byte order for each FFT point:
//   Real_L, Real_H, Imag_L, Imag_H
//
// 128 FFT points = 512 bytes per UART transfer
// 4096 FFT points = 32 UART transfers
//////////////////////////////////////////////////////////////////////////////////

module fft_uart_tx_module(
    output [5:0] ow_debug_tx_frame_index,
    input             iw_sys_clk,
    input             iw_sys_rst,

    input             iw_fft_frame_done,

    output reg [11:0] or_fft_rd_addr,
    input      [15:0] iw_fft_rd_real,
    input      [15:0] iw_fft_rd_imag,

    input             iw_uart_tx_rdy,
    input             iw_uart_tx_done,

    output reg [  9:0] or_uart_tx_num,
    output reg         or_uart_tx_en,
    output reg [4095:0] or_uart_tx_data,

    output             ow_tx_all_done
);

localparam [5:0] ST_IDLE      = 6'b000001;
localparam [5:0] ST_READ_WAIT = 6'b000010;
localparam [5:0] ST_PACK      = 6'b000100;
localparam [5:0] ST_TX_REQ    = 6'b001000;
localparam [5:0] ST_TX_WAIT   = 6'b010000;
localparam [5:0] ST_DONE      = 6'b100000;

reg [5:0] r_state;
reg [5:0] r_next_state;

reg [6:0]  r_pack_index;      // 0~127
reg [5:0]  r_frame_index;     // 0~31
reg [11:0] r_fft_index;       // 0~4095

assign ow_tx_all_done = (r_state == ST_DONE);


// ============================================================
// State register
// ============================================================

always @(posedge iw_sys_clk) begin
    if (iw_sys_rst)
        r_state <= ST_IDLE;
    else
        r_state <= r_next_state;
end


// ============================================================
// Next-state logic
// ============================================================

always @(*) begin
    r_next_state = r_state;

    case (r_state)

        ST_IDLE: begin
            if (iw_fft_frame_done)
                r_next_state = ST_READ_WAIT;
        end

        // FFT RAM is synchronous read, wait one clock.
        ST_READ_WAIT: begin
            r_next_state = ST_PACK;
        end

        ST_PACK: begin
            if (r_pack_index == 7'd127)
                r_next_state = ST_TX_REQ;
            else
                r_next_state = ST_READ_WAIT;
        end

        ST_TX_REQ: begin
            if (iw_uart_tx_rdy)
                r_next_state = ST_TX_WAIT;
        end

        ST_TX_WAIT: begin
            if (iw_uart_tx_done) begin
                if (r_frame_index == 6'd31)
                    r_next_state = ST_DONE;
                else
                    r_next_state = ST_READ_WAIT;
            end
        end

        ST_DONE: begin
            r_next_state = ST_IDLE;
        end

        default: begin
            r_next_state = ST_IDLE;
        end

    endcase
end


// ============================================================
// Sequential data logic
// ============================================================

always @(posedge iw_sys_clk) begin
    if (iw_sys_rst) begin

        or_fft_rd_addr  <= 12'd0;

        or_uart_tx_num  <= 10'd512;
        or_uart_tx_en   <= 1'b0;
        or_uart_tx_data <= 4096'd0;

        r_pack_index    <= 7'd0;
        r_frame_index   <= 6'd0;
        r_fft_index     <= 12'd0;

    end
    else begin

        or_uart_tx_en <= 1'b0;

        case (r_state)

            ST_IDLE: begin
                if (iw_fft_frame_done) begin
                    r_pack_index    <= 7'd0;
                    r_frame_index   <= 6'd0;
                    r_fft_index     <= 12'd0;
                    or_fft_rd_addr  <= 12'd0;
                    or_uart_tx_data <= 4096'd0;
                end
            end


            ST_READ_WAIT: begin
                // Address was supplied during the previous state.
                // FFT RAM data becomes available for ST_PACK.
            end


            ST_PACK: begin

                // UART transmission order:
                // Real_L Real_H Imag_L Imag_H
                //
                // First byte must occupy the MSB side because
                // uart_tx sends [4095:4088] first for 512-byte transfers.

                or_uart_tx_data[
                    4095 - r_pack_index*32 -: 8
                ] <= iw_fft_rd_real[7:0];

                or_uart_tx_data[
                    4087 - r_pack_index*32 -: 8
                ] <= iw_fft_rd_real[15:8];

                or_uart_tx_data[
                    4079 - r_pack_index*32 -: 8
                ] <= iw_fft_rd_imag[7:0];

                or_uart_tx_data[
                    4071 - r_pack_index*32 -: 8
                ] <= iw_fft_rd_imag[15:8];


                if (r_pack_index != 7'd127) begin

                    r_pack_index <= r_pack_index + 1'b1;
                    r_fft_index  <= r_fft_index + 1'b1;

                    or_fft_rd_addr <= r_fft_index + 1'b1;

                end

            end


            ST_TX_REQ: begin

                if (iw_uart_tx_rdy) begin
                    or_uart_tx_num <= 10'd512;
                    or_uart_tx_en  <= 1'b1;
                end

            end


            ST_TX_WAIT: begin

                if (iw_uart_tx_done) begin

                    if (r_frame_index != 6'd31) begin

                        r_frame_index <= r_frame_index + 1'b1;

                        r_fft_index <= r_fft_index + 1'b1;

                        or_fft_rd_addr <= r_fft_index + 1'b1;

                        r_pack_index <= 7'd0;

                        or_uart_tx_data <= 4096'd0;

                    end

                end

            end


            ST_DONE: begin
                r_pack_index  <= 7'd0;
                r_frame_index <= 6'd0;
                r_fft_index   <= 12'd0;
            end

            default: begin
            end

        endcase
    end
end
assign ow_debug_tx_frame_index = r_frame_index;
endmodule