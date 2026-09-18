`timescale 1ns / 1ps

module uart_fft_bridge_tb;

localparam integer FFT_POINTS = 4096;

reg clk = 1'b0;
reg rst = 1'b1;

reg          uart_rx_valid;
reg [511:0]  uart_rx_data;
reg [6:0]    uart_rx_num;
wire         uart_frame_ready;

wire [15:0] config_tdata;
wire        config_tvalid;
wire        config_tready;

wire [31:0] fft_in_tdata;
wire        fft_in_tvalid;
wire        fft_in_tready;
wire        fft_in_tlast;

wire [31:0] fft_out_tdata;
wire [23:0] fft_out_tuser;
wire        fft_out_tvalid;
wire        fft_out_tready;
wire        fft_out_tlast;

wire [7:0]  fft_status_tdata;
wire        fft_status_tvalid;

wire event_frame_started;
wire event_tlast_unexpected;
wire event_tlast_missing;
wire event_fft_overflow;
wire event_status_channel_halt;
wire event_data_in_channel_halt;
wire event_data_out_channel_halt;

wire        fft_done;
wire [12:0] fft_input_count;
wire [12:0] fft_output_count;

// Pre-generated signed 16-bit input samples.
reg [15:0] r_input_samples [0:FFT_POINTS-1];

integer config_fire_count;
integer input_fire_count;
integer output_fire_count;
integer input_tlast_count;
integer output_tlast_count;

integer output_file;
integer index;
integer sample_index;

reg seen_tlast_unexpected;
reg seen_tlast_missing;
reg seen_fft_overflow;
reg seen_data_in_halt;
reg seen_data_out_halt;

always #5 clk = ~clk;


// ============================================================
// DUT
// ============================================================

uart_fft_bridge_module dut (
    .iw_sys_clk             (clk),
    .iw_sys_rst             (rst),

    .iw_uart_rx_valid       (uart_rx_valid),
    .iw_uart_rx_data        (uart_rx_data),
    .iw_uart_rx_num         (uart_rx_num),
    .ow_uart_frame_ready    (uart_frame_ready),

    .os_axis_config_tdata   (config_tdata),
    .os_axis_config_tvalid  (config_tvalid),
    .iw_s_axis_config_tready(config_tready),

    .os_axis_data_tdata     (fft_in_tdata),
    .os_axis_data_tvalid    (fft_in_tvalid),
    .iw_s_axis_data_tready  (fft_in_tready),
    .os_axis_data_tlast     (fft_in_tlast),

    .iw_m_axis_data_tdata   (fft_out_tdata),
    .iw_m_axis_data_tuser   (fft_out_tuser),
    .iw_m_axis_data_tvalid  (fft_out_tvalid),
    .os_m_axis_data_tready  (fft_out_tready),
    .iw_m_axis_data_tlast   (fft_out_tlast),

    .ow_fft_frame_done      (fft_done),
    .ow_fft_input_count     (fft_input_count),
    .ow_fft_output_count    (fft_output_count)
);


// ============================================================
// Xilinx FFT IP
// ============================================================

xfft_0 xfft_0_inst (
    .aclk                        (clk),

    .s_axis_config_tdata         (config_tdata),
    .s_axis_config_tvalid        (config_tvalid),
    .s_axis_config_tready        (config_tready),

    .s_axis_data_tdata           (fft_in_tdata),
    .s_axis_data_tvalid          (fft_in_tvalid),
    .s_axis_data_tready          (fft_in_tready),
    .s_axis_data_tlast           (fft_in_tlast),

    .m_axis_data_tdata           (fft_out_tdata),
    .m_axis_data_tuser           (fft_out_tuser),
    .m_axis_data_tvalid          (fft_out_tvalid),
    .m_axis_data_tready          (fft_out_tready),
    .m_axis_data_tlast           (fft_out_tlast),

    .m_axis_status_tdata         (fft_status_tdata),
    .m_axis_status_tvalid        (fft_status_tvalid),
    .m_axis_status_tready        (1'b1),

    .event_frame_started         (event_frame_started),
    .event_tlast_unexpected      (event_tlast_unexpected),
    .event_tlast_missing         (event_tlast_missing),
    .event_fft_overflow          (event_fft_overflow),
    .event_status_channel_halt   (event_status_channel_halt),
    .event_data_in_channel_halt  (event_data_in_channel_halt),
    .event_data_out_channel_halt (event_data_out_channel_halt)
);


// ============================================================
// Statistics / error capture
// ============================================================

always @(posedge clk) begin
    if (rst) begin
        config_fire_count     <= 0;
        input_fire_count      <= 0;
        output_fire_count     <= 0;
        input_tlast_count     <= 0;
        output_tlast_count    <= 0;

        seen_tlast_unexpected <= 1'b0;
        seen_tlast_missing    <= 1'b0;
        seen_fft_overflow     <= 1'b0;
        seen_data_in_halt     <= 1'b0;
        seen_data_out_halt    <= 1'b0;
    end
    else begin

        if (config_tvalid && config_tready)
            config_fire_count <= config_fire_count + 1;

        if (fft_in_tvalid && fft_in_tready) begin
            input_fire_count <= input_fire_count + 1;

            if (fft_in_tlast)
                input_tlast_count <= input_tlast_count + 1;
        end

        if (fft_out_tvalid && fft_out_tready) begin
            output_fire_count <= output_fire_count + 1;

            if (fft_out_tlast)
                output_tlast_count <= output_tlast_count + 1;
        end

        seen_tlast_unexpected <=
            seen_tlast_unexpected | event_tlast_unexpected;

        seen_tlast_missing <=
            seen_tlast_missing | event_tlast_missing;

        seen_fft_overflow <=
            seen_fft_overflow | event_fft_overflow;

        seen_data_in_halt <=
            seen_data_in_halt | event_data_in_channel_halt;

        seen_data_out_halt <=
            seen_data_out_halt | event_data_out_channel_halt;
    end
end


// ============================================================
// Send 64-byte UART frame
//
// 64 bytes = 32 signed 16-bit samples.
//
// Byte order:
// sample low byte first
// sample high byte second
// ============================================================

task send_uart_frame_64_bytes;

    input integer first_sample_index;

    integer local_sample_index;
    integer local_byte_index;

    reg [511:0] local_frame;
    reg [15:0]  local_sample_word;

    begin
        local_frame = 512'd0;

        for (
            local_sample_index = 0;
            local_sample_index < 32;
            local_sample_index = local_sample_index + 1
        ) begin

            local_sample_word =
                r_input_samples[first_sample_index + local_sample_index];

            local_byte_index = local_sample_index << 1;

            // Low byte first.
            local_frame[
                511 - local_byte_index*8 -: 8
            ] = local_sample_word[7:0];

            // High byte second.
            local_frame[
                511 - (local_byte_index + 1)*8 -: 8
            ] = local_sample_word[15:8];
        end

        wait (uart_frame_ready == 1'b1);

        @(negedge clk);

        uart_rx_data  = local_frame;
        uart_rx_num   = 7'd64;
        uart_rx_valid = 1'b1;

        @(negedge clk);

        uart_rx_valid = 1'b0;
    end

endtask


// ============================================================
// Simulation
// ============================================================

initial begin

    uart_rx_valid = 1'b0;
    uart_rx_data  = 512'd0;
    uart_rx_num   = 7'd0;

    // Load Python-generated test vector.
    $readmemh("fft_input.hex", r_input_samples);

    // Quick input sanity check.
    $display("Input vector check:");
    $display("sample[0]   = %0d", $signed(r_input_samples[0]));
    $display("sample[32]  = %0d", $signed(r_input_samples[32]));
    $display("sample[64]  = %0d", $signed(r_input_samples[64]));
    $display("sample[96]  = %0d", $signed(r_input_samples[96]));
    $display("sample[128] = %0d", $signed(r_input_samples[128]));

    repeat (5)
        @(posedge clk);

    rst = 1'b0;


    // 4096 samples / 32 samples per UART frame = 128 frames.
    for (
        sample_index = 0;
        sample_index < FFT_POINTS;
        sample_index = sample_index + 32
    ) begin
        send_uart_frame_64_bytes(sample_index);
    end


    wait (fft_done == 1'b1);

    @(posedge clk);


    // ========================================================
    // Write FFT output
    // ========================================================

    output_file = $fopen("fft_output.txt", "w");

    for (
        index = 0;
        index < FFT_POINTS;
        index = index + 1
    ) begin

        $fdisplay(
            output_file,
            "%0d %0d %0d",
            index,
            $signed(dut.r_fft_real_mem[index]),
            $signed(dut.r_fft_imag_mem[index])
        );

    end

    $fclose(output_file);


    // ========================================================
    // Simulation summary
    // ========================================================

    if (
        (config_fire_count == 1) &&
        (input_fire_count == FFT_POINTS) &&
        (output_fire_count == FFT_POINTS) &&
        (input_tlast_count == 1) &&
        (output_tlast_count == 1) &&
        !seen_tlast_unexpected &&
        !seen_tlast_missing &&
        !seen_fft_overflow &&
        !seen_data_in_halt &&
        !seen_data_out_halt
    ) begin

        $display("PASS");

    end
    else begin

        $display("FAIL");

    end


    $display(
        "input points  = %0d",
        input_fire_count
    );

    $display(
        "output points = %0d",
        output_fire_count
    );

    $display(
        "TLAST in/out  = %0d/%0d",
        input_tlast_count,
        output_tlast_count
    );

    $display(
        "events unexpected=%0d missing=%0d overflow=%0d in_halt=%0d out_halt=%0d",
        seen_tlast_unexpected,
        seen_tlast_missing,
        seen_fft_overflow,
        seen_data_in_halt,
        seen_data_out_halt
    );


    $display(
        "FFT bin 32   = real:%0d imag:%0d",
        $signed(dut.r_fft_real_mem[32]),
        $signed(dut.r_fft_imag_mem[32])
    );

    $display(
        "FFT bin 4064 = real:%0d imag:%0d",
        $signed(dut.r_fft_real_mem[4064]),
        $signed(dut.r_fft_imag_mem[4064])
    );


    $finish;

end

endmodule