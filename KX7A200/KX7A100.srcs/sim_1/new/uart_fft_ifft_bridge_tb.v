`timescale 1ns / 1ps

module uart_fft_ifft_bridge_tb;

localparam integer N = 4096;

reg clk = 1'b0;
reg rst = 1'b1;
reg uart_rx_valid = 1'b0;
reg [511:0] uart_rx_data = 512'd0;
reg [6:0] uart_rx_num = 7'd0;

wire uart_frame_ready;
wire ifft_done;
wire [12:0] fft_input_count;
wire [12:0] fft_output_count;
wire [12:0] ifft_input_count;
wire [12:0] ifft_output_count;

reg [15:0] input_samples [0:N-1];

integer fft_cfg_count = 0;
integer fft_in_count = 0;
integer fft_out_count = 0;
integer ifft_cfg_count = 0;
integer ifft_in_count = 0;
integer ifft_out_count = 0;

integer fft_in_last_count = 0;
integer fft_out_last_count = 0;
integer ifft_in_last_count = 0;
integer ifft_out_last_count = 0;

integer fail_count = 0;
integer fft_file;
integer ifft_file;
integer i;
integer sample_index;

reg fft_overflow_seen = 1'b0;
reg ifft_overflow_seen = 1'b0;

reg fft_tlast_unexpected_seen = 1'b0;
reg fft_tlast_missing_seen = 1'b0;
reg ifft_tlast_unexpected_seen = 1'b0;
reg ifft_tlast_missing_seen = 1'b0;

reg fft_in_halt_seen = 1'b0;
reg fft_out_halt_seen = 1'b0;
reg ifft_in_halt_seen = 1'b0;
reg ifft_out_halt_seen = 1'b0;

always #5 clk = ~clk;

uart_fft_ifft_bridge_module dut (
    .iw_sys_clk(clk),
    .iw_sys_rst(rst),

    .iw_uart_rx_valid(uart_rx_valid),
    .iw_uart_rx_data(uart_rx_data),
    .iw_uart_rx_num(uart_rx_num),

    .ow_uart_frame_ready(uart_frame_ready),
    .ow_ifft_frame_done(ifft_done),

    .ow_fft_input_count(fft_input_count),
    .ow_fft_output_count(fft_output_count),
    .ow_ifft_input_count(ifft_input_count),
    .ow_ifft_output_count(ifft_output_count)
);

task send_uart_frame_64_bytes;
    input integer first_sample_index;

    integer local_sample_index;
    integer local_byte_index;

    reg [511:0] local_frame;
    reg [15:0] local_sample_word;

    begin
        local_frame = 512'd0;

        for (
            local_sample_index = 0;
            local_sample_index < 32;
            local_sample_index = local_sample_index + 1
        ) begin
            local_sample_word =
                input_samples[first_sample_index + local_sample_index];

            local_byte_index = local_sample_index << 1;

            local_frame[511 - local_byte_index*8 -: 8] =
                local_sample_word[7:0];

            local_frame[511 - (local_byte_index+1)*8 -: 8] =
                local_sample_word[15:8];
        end

        wait (uart_frame_ready == 1'b1);

        @(negedge clk);
        uart_rx_data = local_frame;
        uart_rx_num = 7'd64;
        uart_rx_valid = 1'b1;

        @(negedge clk);
        uart_rx_valid = 1'b0;
    end
endtask


// Count only accepted AXI-Stream transfers.
// TLAST must be attached to the final accepted beat.
always @(posedge clk) begin
    if (!rst) begin

        if (dut.w_fft_config_fire)
            fft_cfg_count = fft_cfg_count + 1;

        if (dut.w_fft_in_fire) begin
            if (dut.fft_in_tlast) begin
                fft_in_last_count = fft_in_last_count + 1;

                if (fft_in_count != N-1)
                    fail_count = fail_count + 1;
            end

            fft_in_count = fft_in_count + 1;
        end

        if (dut.w_fft_out_fire) begin
            if (dut.fft_out_tlast) begin
                fft_out_last_count = fft_out_last_count + 1;

                if (fft_out_count != N-1)
                    fail_count = fail_count + 1;
            end

            fft_out_count = fft_out_count + 1;
        end

        if (dut.w_ifft_config_fire)
            ifft_cfg_count = ifft_cfg_count + 1;

        if (dut.w_ifft_in_fire) begin
            if (dut.ifft_in_tlast) begin
                ifft_in_last_count = ifft_in_last_count + 1;

                if (ifft_in_count != N-1)
                    fail_count = fail_count + 1;
            end

            ifft_in_count = ifft_in_count + 1;
        end

        if (dut.w_ifft_out_fire) begin
            if (dut.ifft_out_tlast) begin
                ifft_out_last_count = ifft_out_last_count + 1;

                if (ifft_out_count != N-1)
                    fail_count = fail_count + 1;
            end

            ifft_out_count = ifft_out_count + 1;
        end

        fft_overflow_seen =
            fft_overflow_seen | dut.fft_event_fft_overflow;

        ifft_overflow_seen =
            ifft_overflow_seen | dut.ifft_event_fft_overflow;

        fft_tlast_unexpected_seen =
            fft_tlast_unexpected_seen |
            dut.fft_event_tlast_unexpected;

        fft_tlast_missing_seen =
            fft_tlast_missing_seen |
            dut.fft_event_tlast_missing;

        ifft_tlast_unexpected_seen =
            ifft_tlast_unexpected_seen |
            dut.ifft_event_tlast_unexpected;

        ifft_tlast_missing_seen =
            ifft_tlast_missing_seen |
            dut.ifft_event_tlast_missing;

        fft_in_halt_seen =
            fft_in_halt_seen |
            dut.fft_event_data_in_channel_halt;

        fft_out_halt_seen =
            fft_out_halt_seen |
            dut.fft_event_data_out_channel_halt;

        ifft_in_halt_seen =
            ifft_in_halt_seen |
            dut.ifft_event_data_in_channel_halt;

        ifft_out_halt_seen =
            ifft_out_halt_seen |
            dut.ifft_event_data_out_channel_halt;
    end
end


initial begin

    $readmemh("fft_input.hex", input_samples);

    repeat (5)
        @(negedge clk);

    rst = 1'b0;

    for (
        sample_index = 0;
        sample_index < N;
        sample_index = sample_index + 32
    )
        send_uart_frame_64_bytes(sample_index);

    wait (ifft_done == 1'b1);

    @(negedge clk);

    fft_file = $fopen("fft_output.txt", "w");
    ifft_file = $fopen("ifft_output.txt", "w");

    if (!fft_file || !ifft_file) begin
        $display("FAIL: could not open output files");
        $finish;
    end

    for (i = 0; i < N; i = i + 1) begin

        $fdisplay(
            fft_file,
            "%0d %0d %0d",
            i,
            $signed(dut.r_fft_real_mem[i]),
            $signed(dut.r_fft_imag_mem[i])
        );

        $fdisplay(
            ifft_file,
            "%0d %0d %0d",
            i,
            $signed(dut.r_ifft_real_mem[i]),
            $signed(dut.r_ifft_imag_mem[i])
        );
    end

    $fclose(fft_file);
    $fclose(ifft_file);


    // Basic transfer/protocol checks.
    if (
        fft_cfg_count != 1 ||
        ifft_cfg_count != 1 ||

        fft_in_count != N ||
        fft_out_count != N ||

        ifft_in_count != N ||
        ifft_out_count != N ||

        fft_in_last_count != 1 ||
        fft_out_last_count != 1 ||

        ifft_in_last_count != 1 ||
        ifft_out_last_count != 1 ||

        fft_overflow_seen ||
        ifft_overflow_seen ||

        fft_tlast_unexpected_seen ||
        fft_tlast_missing_seen ||

        ifft_tlast_unexpected_seen ||
        ifft_tlast_missing_seen
    )
        fail_count = fail_count + 1;


    // Regression guard for the already-verified forward FFT.
    // If this fails, inspect the new state transitions/connections,
    // not FFT_CONFIG_TDATA.
    if (
        $signed(dut.r_fft_real_mem[32]) < -9 ||
        $signed(dut.r_fft_real_mem[32]) > 7 ||

        $signed(dut.r_fft_imag_mem[32]) < -5009 ||
        $signed(dut.r_fft_imag_mem[32]) > -4993 ||

        $signed(dut.r_fft_real_mem[4064]) < -8 ||
        $signed(dut.r_fft_real_mem[4064]) > 8 ||

        $signed(dut.r_fft_imag_mem[4064]) < 4992 ||
        $signed(dut.r_fft_imag_mem[4064]) > 5008
    )
        fail_count = fail_count + 1;


    $display("--------------------------------");
    $display("FFT/IFFT Simulation Summary");
    $display("--------------------------------");

    $display(
        "FFT config/IFFT config = %0d/%0d",
        fft_cfg_count,
        ifft_cfg_count
    );

    $display(
        "FFT input points  = %0d",
        fft_in_count
    );

    $display(
        "FFT output points = %0d",
        fft_out_count
    );

    $display(
        "IFFT input points = %0d",
        ifft_in_count
    );

    $display(
        "IFFT output points= %0d",
        ifft_out_count
    );

    $display(
        "FFT TLAST in/out  = %0d/%0d",
        fft_in_last_count,
        fft_out_last_count
    );

    $display(
        "IFFT TLAST in/out = %0d/%0d",
        ifft_in_last_count,
        ifft_out_last_count
    );

    $display(
        "FFT overflow      = %0d",
        fft_overflow_seen
    );

    $display(
        "IFFT overflow     = %0d",
        ifft_overflow_seen
    );

    $display(
        "TLAST events FFT unexpected/missing=%0d/%0d IFFT unexpected/missing=%0d/%0d",
        fft_tlast_unexpected_seen,
        fft_tlast_missing_seen,
        ifft_tlast_unexpected_seen,
        ifft_tlast_missing_seen
    );

    $display(
        "Halt events FFT in/out=%0d/%0d IFFT in/out=%0d/%0d",
        fft_in_halt_seen,
        fft_out_halt_seen,
        ifft_in_halt_seen,
        ifft_out_halt_seen
    );


    // ModelSim 2020.4 does not support %+0d,
    // so explicitly print the sign of the imaginary part.
    if ($signed(dut.r_fft_imag_mem[32]) >= 0)
        $display(
            "FFT bin 32   = %0d + j%0d",
            $signed(dut.r_fft_real_mem[32]),
            $signed(dut.r_fft_imag_mem[32])
        );
    else
        $display(
            "FFT bin 32   = %0d - j%0d",
            $signed(dut.r_fft_real_mem[32]),
            -$signed(dut.r_fft_imag_mem[32])
        );


    if ($signed(dut.r_fft_imag_mem[4064]) >= 0)
        $display(
            "FFT bin 4064 = %0d + j%0d",
            $signed(dut.r_fft_real_mem[4064]),
            $signed(dut.r_fft_imag_mem[4064])
        );
    else
        $display(
            "FFT bin 4064 = %0d - j%0d",
            $signed(dut.r_fft_real_mem[4064]),
            -$signed(dut.r_fft_imag_mem[4064])
        );


    $display(
        "IFFT sample 0   = %0d",
        $signed(dut.r_ifft_real_mem[0])
    );

    $display(
        "IFFT sample 32  = %0d",
        $signed(dut.r_ifft_real_mem[32])
    );

    $display(
        "IFFT sample 64  = %0d",
        $signed(dut.r_ifft_real_mem[64])
    );

    $display(
        "IFFT sample 96  = %0d",
        $signed(dut.r_ifft_real_mem[96])
    );

    $display(
        "IFFT sample 128 = %0d",
        $signed(dut.r_ifft_real_mem[128])
    );


    if (fail_count == 0)
        $display("PASS");
    else
        $display(
            "FAIL: %0d checks failed",
            fail_count
        );

    $finish;
end


initial begin
    #2000000;

    $display(
        "FAIL: FFT/IFFT simulation timeout"
    );

    $finish;
end

endmodule