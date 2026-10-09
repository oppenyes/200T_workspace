`timescale 1ns / 1ps

module ddr3_mem_subsystem(
    input wire user_clk,
    input wire user_rst,
    input wire dataset_clear,
    input wire wr_req_valid,
    output wire wr_req_ready,
    input wire [26:0] wr_req_addr,
    input wire [511:0] wr_req_data,
    input wire rd_req_valid,
    output wire rd_req_ready,
    input wire [26:0] rd_req_addr,
    output wire rd_data_valid,
    input wire rd_data_ready,
    output wire [511:0] rd_data,
    output wire write_idle,
    output wire [26:0] write_accept_count,
    output wire [26:0] write_commit_count,
    input wire clk_200m,
    input wire rst_200m,
    input wire ddr3_rst,
    output wire ddr3_clk,
    output wire ddr3_clk_sync_rst,
    output wire init_calib_complete,
    output wire init_calib_complete_user,
    output wire error_flag,
    inout wire [63:0] ddr3_dq,
    inout wire [7:0] ddr3_dqs_n,
    inout wire [7:0] ddr3_dqs_p,
    output wire [15:0] ddr3_addr,
    output wire [2:0] ddr3_ba,
    output wire ddr3_ras_n,
    output wire ddr3_cas_n,
    output wire ddr3_we_n,
    output wire ddr3_reset_n,
    output wire [1:0] ddr3_ck_p,
    output wire [1:0] ddr3_ck_n,
    output wire [1:0] ddr3_cke,
    output wire [1:0] ddr3_cs_n,
    output wire [7:0] ddr3_dm,
    output wire [1:0] ddr3_odt
);

wire [29:0] app_addr;
wire [2:0] app_cmd;
wire app_en;
wire [511:0] app_wdf_data;
wire app_wdf_end;
wire app_wdf_wren;
wire [63:0] app_wdf_mask;
wire [511:0] app_rd_data;
wire app_rd_data_valid;
wire app_rd_data_end;
wire app_rdy;
wire app_wdf_rdy;
wire app_sr_active;
wire app_ref_ack;
wire app_zq_ack;

wire [538:0] wr_fifo_din;
wire [538:0] wr_fifo_dout;
wire wr_fifo_full;
wire wr_fifo_empty;
wire wr_fifo_wr_en;
wire wr_fifo_rd_en;
wire wr_fifo_wr_rst_busy;
wire wr_fifo_rd_rst_busy;

wire [26:0] rd_cmd_fifo_dout;
wire rd_cmd_fifo_full;
wire rd_cmd_fifo_empty;
wire rd_cmd_fifo_wr_en;
wire rd_cmd_fifo_rd_en;
wire rd_cmd_fifo_wr_rst_busy;
wire rd_cmd_fifo_rd_rst_busy;

wire [511:0] rd_rsp_fifo_dout;
wire rd_rsp_fifo_full;
wire rd_rsp_fifo_empty;
wire rd_rsp_fifo_wr_en;
wire rd_rsp_fifo_rd_en;
wire rd_rsp_fifo_wr_rst_busy;
wire rd_rsp_fifo_rd_rst_busy;

wire commit_fifo_full;
wire commit_fifo_empty;
wire commit_fifo_wr_en;
wire commit_fifo_rd_en;
wire commit_fifo_wr_rst_busy;
wire commit_fifo_rd_rst_busy;
wire commit_fifo_dout;

wire [26:0] ddr_wr_addr;
wire [511:0] ddr_wr_data;
wire write_available;
wire read_available;
wire select_write;
wire select_read;
wire write_fire;
wire read_fire;

reg read_pending_r;
reg arb_sel_r;
reg error_ui_r;
reg [26:0] write_accept_count_r;
reg [26:0] write_commit_count_r;
(* ASYNC_REG = "TRUE" *) reg calib_sync1_r;
(* ASYNC_REG = "TRUE" *) reg calib_sync2_r;
(* ASYNC_REG = "TRUE" *) reg error_sync1_r;
(* ASYNC_REG = "TRUE" *) reg error_sync2_r;

assign wr_fifo_din = {wr_req_addr, wr_req_data};
assign wr_req_ready = !wr_fifo_full && !wr_fifo_wr_rst_busy;
assign wr_fifo_wr_en = wr_req_valid && wr_req_ready;
assign ddr_wr_addr = wr_fifo_dout[538:512];
assign ddr_wr_data = wr_fifo_dout[511:0];

assign rd_req_ready = !rd_cmd_fifo_full && !rd_cmd_fifo_wr_rst_busy;
assign rd_cmd_fifo_wr_en = rd_req_valid && rd_req_ready;
assign rd_data = rd_rsp_fifo_dout;
assign rd_data_valid = !rd_rsp_fifo_empty && !rd_rsp_fifo_rd_rst_busy;
assign rd_rsp_fifo_rd_en = rd_data_valid && rd_data_ready;

assign commit_fifo_rd_en = !commit_fifo_empty && !commit_fifo_rd_rst_busy;
assign write_accept_count = write_accept_count_r;
assign write_commit_count = write_commit_count_r;
assign write_idle = (write_accept_count_r == write_commit_count_r) && commit_fifo_empty;
assign init_calib_complete_user = calib_sync2_r;
assign error_flag = error_sync2_r;

assign write_available = !wr_fifo_empty && !wr_fifo_rd_rst_busy && !commit_fifo_full && !commit_fifo_wr_rst_busy && init_calib_complete;
assign read_available = !rd_cmd_fifo_empty && !rd_cmd_fifo_rd_rst_busy && !read_pending_r && !rd_rsp_fifo_full && !rd_rsp_fifo_wr_rst_busy && init_calib_complete;
assign select_write = write_available && (!read_available || !arb_sel_r);
assign select_read = read_available && (!write_available || arb_sel_r);
assign write_fire = select_write && app_rdy && app_wdf_rdy;
assign read_fire = select_read && app_rdy;
assign wr_fifo_rd_en = write_fire;
assign rd_cmd_fifo_rd_en = read_fire;
// commit表示写命令和512bit写数据已被MIG同时接受；当前MIG为Strict Ordering，之后再发出的读请求不会越过这些写事务。
assign commit_fifo_wr_en = write_fire;

assign app_en = write_fire || read_fire;
assign app_cmd = read_fire ? 3'b001 : 3'b000;
assign app_addr = write_fire ? {ddr_wr_addr, 3'b000} :
                  read_fire ? {rd_cmd_fifo_dout, 3'b000} : 30'd0;
assign app_wdf_data = ddr_wr_data;
assign app_wdf_wren = write_fire;
assign app_wdf_end = write_fire;
assign app_wdf_mask = 64'd0;
assign rd_rsp_fifo_wr_en = app_rd_data_valid && !rd_rsp_fifo_full && !rd_rsp_fifo_wr_rst_busy;

always @(posedge user_clk) begin
    if (user_rst) begin
        write_accept_count_r <= 27'd0;
        write_commit_count_r <= 27'd0;
        calib_sync1_r <= 1'b0;
        calib_sync2_r <= 1'b0;
        error_sync1_r <= 1'b0;
        error_sync2_r <= 1'b0;
    end
    else begin
        calib_sync1_r <= init_calib_complete;
        calib_sync2_r <= calib_sync1_r;
        error_sync1_r <= error_ui_r;
        error_sync2_r <= error_sync1_r;
        if (dataset_clear) begin
            write_accept_count_r <= 27'd0;
            write_commit_count_r <= 27'd0;
        end
        else begin
            if (wr_fifo_wr_en) begin
                write_accept_count_r <= write_accept_count_r + 1'b1;
            end
            if (commit_fifo_rd_en) begin
                write_commit_count_r <= write_commit_count_r + 1'b1;
            end
        end
    end
end

always @(posedge ddr3_clk) begin
    if (ddr3_clk_sync_rst) begin
        read_pending_r <= 1'b0;
        arb_sel_r <= 1'b0;
        error_ui_r <= 1'b0;
    end
    else begin
        if (write_fire) begin
            arb_sel_r <= 1'b1;
        end
        if (read_fire) begin
            read_pending_r <= 1'b1;
            arb_sel_r <= 1'b0;
        end
        if (app_rd_data_valid) begin
            read_pending_r <= 1'b0;
            if (rd_rsp_fifo_full || rd_rsp_fifo_wr_rst_busy || !app_rd_data_end) begin
                error_ui_r <= 1'b1;
            end
        end
    end
end

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("block"), .ECC_MODE("no_ecc"), .RELATED_CLOCKS(0),
    .FIFO_WRITE_DEPTH(512), .WRITE_DATA_WIDTH(539), .READ_DATA_WIDTH(539),
    .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2),
    .DOUT_RESET_VALUE("0"), .FULL_RESET_VALUE(0), .WAKEUP_TIME(0)
) u_wr_req_fifo(
    .rst(user_rst), .wr_clk(user_clk), .wr_en(wr_fifo_wr_en), .din(wr_fifo_din),
    .full(wr_fifo_full), .wr_rst_busy(wr_fifo_wr_rst_busy),
    .rd_clk(ddr3_clk), .rd_en(wr_fifo_rd_en), .dout(wr_fifo_dout),
    .empty(wr_fifo_empty), .rd_rst_busy(wr_fifo_rd_rst_busy),
    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
);

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("block"), .ECC_MODE("no_ecc"), .RELATED_CLOCKS(0),
    .FIFO_WRITE_DEPTH(32), .WRITE_DATA_WIDTH(27), .READ_DATA_WIDTH(27),
    .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2),
    .DOUT_RESET_VALUE("0"), .FULL_RESET_VALUE(0), .WAKEUP_TIME(0)
) u_rd_cmd_fifo(
    .rst(user_rst), .wr_clk(user_clk), .wr_en(rd_cmd_fifo_wr_en), .din(rd_req_addr),
    .full(rd_cmd_fifo_full), .wr_rst_busy(rd_cmd_fifo_wr_rst_busy),
    .rd_clk(ddr3_clk), .rd_en(rd_cmd_fifo_rd_en), .dout(rd_cmd_fifo_dout),
    .empty(rd_cmd_fifo_empty), .rd_rst_busy(rd_cmd_fifo_rd_rst_busy),
    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
);

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("block"), .ECC_MODE("no_ecc"), .RELATED_CLOCKS(0),
    .FIFO_WRITE_DEPTH(32), .WRITE_DATA_WIDTH(512), .READ_DATA_WIDTH(512),
    .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2),
    .DOUT_RESET_VALUE("0"), .FULL_RESET_VALUE(0), .WAKEUP_TIME(0)
) u_rd_rsp_fifo(
    .rst(user_rst), .wr_clk(ddr3_clk), .wr_en(rd_rsp_fifo_wr_en), .din(app_rd_data),
    .full(rd_rsp_fifo_full), .wr_rst_busy(rd_rsp_fifo_wr_rst_busy),
    .rd_clk(user_clk), .rd_en(rd_rsp_fifo_rd_en), .dout(rd_rsp_fifo_dout),
    .empty(rd_rsp_fifo_empty), .rd_rst_busy(rd_rsp_fifo_rd_rst_busy),
    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
);

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("distributed"), .ECC_MODE("no_ecc"), .RELATED_CLOCKS(0),
    .FIFO_WRITE_DEPTH(512), .WRITE_DATA_WIDTH(1), .READ_DATA_WIDTH(1),
    .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2),
    .DOUT_RESET_VALUE("0"), .FULL_RESET_VALUE(0), .WAKEUP_TIME(0)
) u_write_commit_fifo(
    .rst(user_rst), .wr_clk(ddr3_clk), .wr_en(commit_fifo_wr_en), .din(1'b1),
    .full(commit_fifo_full), .wr_rst_busy(commit_fifo_wr_rst_busy),
    .rd_clk(user_clk), .rd_en(commit_fifo_rd_en), .dout(commit_fifo_dout),
    .empty(commit_fifo_empty), .rd_rst_busy(commit_fifo_rd_rst_busy),
    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
);

mig_7series_0 u_mig(
    .ddr3_addr(ddr3_addr), .ddr3_ba(ddr3_ba), .ddr3_cas_n(ddr3_cas_n),
    .ddr3_ck_n(ddr3_ck_n), .ddr3_ck_p(ddr3_ck_p), .ddr3_cke(ddr3_cke),
    .ddr3_ras_n(ddr3_ras_n), .ddr3_reset_n(ddr3_reset_n), .ddr3_we_n(ddr3_we_n),
    .ddr3_dq(ddr3_dq), .ddr3_dqs_n(ddr3_dqs_n), .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_cs_n(ddr3_cs_n), .ddr3_dm(ddr3_dm), .ddr3_odt(ddr3_odt),
    .init_calib_complete(init_calib_complete),
    .app_addr(app_addr), .app_cmd(app_cmd), .app_en(app_en),
    .app_wdf_data(app_wdf_data), .app_wdf_end(app_wdf_end),
    .app_wdf_wren(app_wdf_wren), .app_wdf_mask(app_wdf_mask),
    .app_rd_data(app_rd_data), .app_rd_data_end(app_rd_data_end),
    .app_rd_data_valid(app_rd_data_valid), .app_rdy(app_rdy), .app_wdf_rdy(app_wdf_rdy),
    .app_sr_req(1'b0), .app_ref_req(1'b0), .app_zq_req(1'b0),
    .app_sr_active(app_sr_active), .app_ref_ack(app_ref_ack), .app_zq_ack(app_zq_ack),
    .ui_clk(ddr3_clk), .ui_clk_sync_rst(ddr3_clk_sync_rst),
    .sys_clk_i(clk_200m), .sys_rst(rst_200m || ddr3_rst)
);

endmodule
