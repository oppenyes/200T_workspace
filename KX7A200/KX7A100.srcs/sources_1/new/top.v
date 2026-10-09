`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/15 10:06:00
// Design Name: 
// Module Name: KX7A100_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: 是
// 
//////////////////////////////////////////////////////////////////////////////////

module top(
//----------------- sys ----------------//
    input         iw_SYS_CLK              ,
    
    output [ 1:0] io_CLK                  ,
//----------------- uart ----------------//
    input         iw_UART_RX              ,
    output        ow_UART_TX              ,
//----------------- EEPROM IIC ----------------//
    output        ow_EEPROM_IIC_SCL       ,
    inout         io_EEPROM_IIC_SDA       ,
//----------------- udp ----------------//
    output        phy_rst_o               ,
    //PHYA        
    input  [3:0]  PHYA_rgmii_rxd          ,
    input         PHYA_rgmii_rx_ctl       ,
    input         PHYA_rgmii_rxc          ,
    output [3:0]  PHYA_rgmii_txd          ,
    output        PHYA_rgmii_tx_ctl       ,
    output        PHYA_rgmii_txc          ,
//----------------- FMC ----------------//
    output [ 1:0] io_FMC_clk_p        ,
    output [ 1:0] io_FMC_clk_n        ,
    output [33:0] io_FMC_LA_p         ,
    output [33:0] io_FMC_LA_n         ,
    output        ow_FMC_SCL          ,
    inout         io_FMC_SDA          ,
    inout         io_FMC_PRSNT        ,
    inout         io_FMC_PG_M2C       ,
    inout         io_FMC_PG_C2M       ,
    inout  [ 1:0] io_FMC_RES          ,
//----------------- DDR ----------------//
    inout  [63:0] ddr3_dq             , // DDR3 数据
    inout  [7:0]  ddr3_dqs_n          , // DDR3 dqs负
    inout  [7:0]  ddr3_dqs_p          , // DDR3 dqs正  
    output [15:0] ddr3_addr           , // DDR3 地址   
    output [2:0]  ddr3_ba             , // DDR3 banck 选择
    output        ddr3_ras_n          , // DDR3 行选择
    output        ddr3_cas_n          , // DDR3 列选择
    output        ddr3_we_n           , // DDR3 读写选择
    output        ddr3_reset_n        , // DDR3 复位
    output [1:0]  ddr3_ck_p           , // DDR3 时钟正
    output [1:0]  ddr3_ck_n           , // DDR3 时钟负
    output [1:0]  ddr3_cke            , // DDR3 时钟使能
    output [1:0]  ddr3_cs_n           , // DDR3 片选
    output [7:0]  ddr3_dm             , // DDR3_dm
    output [1:0]  ddr3_odt            , // DDR3_odt
//-------------- test_pin --------------//
    output [31:0] ow_TEST_PIN         ,
    output        ow_LED_PIN          ,
    output        ow_WS2812B          ,
    input         iw_KEY_PIN          ,
    output [ 7:0] ow_SMG_DIG          ,
    output [ 1:0] ow_SMG_SEL
);

// -------------------------------- localparam ------------------------------ //
localparam CLK_FRE       = 100_000_000 ;
localparam BAUD_RATE     = 921_600     ;
localparam UART_RX_NUM   = 7           ;
localparam eeprom_memory = 4           ;
localparam [63:0] tx = 64'hc0_ee_d4_c2_d6_f1_0d_0a ;

// -------------------------------- wire ------------------------------ //
// FFT 历史调试信号：保留声明，不恢复已注释的 FFT 功能。
wire [5:0] w_debug_tx_frame_index;
wire [12:0] w_debug_fft_input_count;
wire [11:0] w_debug_fft_input_index;
wire [11:0] w_debug_fft_output_index;
wire [11:0] w_fft_rd_addr;
wire [15:0] w_fft_rd_real;
wire [15:0] w_fft_rd_imag;

wire        w_fft_uart_tx_done;

// FMC/peripheral
wire [1:0] iw_FMC_RES   ;
wire [1:0] ow_FMC_RES   ;
wire [1:0] ow_FMC_RES_T ;
// command/peripheral
// Unix_Epoch 微秒计数器
wire [  55:0] ow_Unix_Epoch_data ;
// 解析接收到的用户命令
wire [   6:0] ow_user_cmd_num  ;

// UART
wire [   9:0] iw_uart_tx_num      ;
wire [4095:0] iw_uart_tx_data     ;
wire [   6:0] ow_uart_rx_num      ;
wire         iw_uart_tx_en         ;
wire         ow_uart_tx_rdy        ;
wire         ow_uart_tx_done       ;
// FFT 历史接口信号：仅供保留的调试/注释代码使用。
wire         ow_uart_fft_frame_ready;
wire [15:0]  ow_fft_config_tdata;
wire         ow_fft_config_tvalid;
wire         iw_fft_config_tready;
wire [31:0]  ow_fft_data_tdata;
wire         ow_fft_data_tvalid;
wire         iw_fft_data_tready;
wire         ow_fft_data_tlast;
wire [31:0]  iw_fft_data_tdata;
wire [23:0]  iw_fft_data_tuser;
wire         iw_fft_data_tvalid;
wire         ow_fft_data_tready;
wire         iw_fft_data_tlast;
wire [7:0]   iw_fft_status_tdata;
wire         iw_fft_status_tvalid;
wire         ow_fft_frame_done;
wire [12:0]  ow_fft_input_count;
wire [12:0]  ow_fft_output_count;
wire         ow_fft_event_frame_started;
wire         ow_fft_event_tlast_unexpected;
wire         ow_fft_event_tlast_missing;
wire         ow_fft_event_overflow;
wire         ow_fft_event_status_halt;
wire         ow_fft_event_data_in_halt;
wire         ow_fft_event_data_out_halt;
// UDP/command 历史接口
wire [  63:0] ow_ETH_rx_data       ;
// 串口/网口发送的命令响应接口
wire [ 511:0] ow_uart_tx_cmd_data ;
wire [   6:0] ow_uart_tx_cmd_num  ;
wire         ow_uart_tx_cmd_data_valid;
wire [  63:0] ow_ETH_tx_cmd_data  ;
wire         ow_ETH_tx_cmd_data_valid;

wire [  63:0] iw_smg_cmd_data     ;
wire [  23:0] iw_ws2812b_GRB      ;

// 时钟、复位及板级控制：以下网络原先依赖 Verilog 隐式声明。
wire clk_100M, clk_15M625, clk_200M, clk_500M, clk_125M, clk_50M;
wire clk_25M, clk_10M, clk_31M25, clk_5M, clk_1M, clk_400k, clk_100k, clk_1k;
wire ow_locked;
wire ow_100M_rst, ow_15M625_rst, ow_200M_rst, ow_125M_rst, ow_50M_rst;
wire ow_25M_rst, ow_10M_rst, ow_31M25_rst, ow_5M_rst, ow_1M_rst;
wire ow_400k_rst, ow_100k_rst, ow_1k_rst;
// 保持现有 udp_drive 连接；这两个历史网络当前没有顶层驱动。
wire iw_15M625_rst, iw_25M_rst;

wire ow_dna_ok, ow_KEY_cap_n, ow_KEY_en, ow_KEY_up, ow_KEY_down, ow_KEY_once;
wire iw_ws2812b_valid, ow_ws2812b_rdy;
wire iw_smg_cmd_valid, ow_smg_cmd_rdy, ow_user_cmd_rdy;
wire iw_EEPROM_IIC_SDI, ow_EEPROM_IIC_SDO, iw_FMC_IIC_SDI, ow_FMC_IIC_SDO;
wire iw_FMC_PRSNT, ow_FMC_PRSNT, ow_FMC_PRSNT_T;
wire iw_FMC_PG_M2C, ow_FMC_PG_M2C, ow_FMC_PG_M2C_T;
wire iw_FMC_PG_C2M, ow_FMC_PG_C2M, ow_FMC_PG_C2M_T;
wire ow_ddr3_clk;
wire ow_ddr3_clk_sync_rst;
wire ow_init_calib_complete;
wire ddr_calib_user_w;
wire ddr_error_w;

// UART命令与UDP原始数据使用独立入口。
wire uart_rx_valid_w;
wire [511:0] uart_rx_data_w;
wire user_cmd_valid_w;
wire [511:0] user_cmd_data_w;
wire usr_batch_start_w;
wire usr_dataset_clear_w;

wire udp_rx_valid_w;
wire [63:0] udp_rx_data_w;
wire udp_tx_ready_w;
wire udp_tx_valid_w;
wire [63:0] udp_tx_data_w;

// UDP输入按8个64bit字打包，并使用显式512bit word地址写DDR。
wire udp_writer_ready_w;
wire udp_drop_pulse_w;
(* MARK_DEBUG = "TRUE" *) reg udp_drop_sticky_r;
wire dataset_write_enable_w;
wire dataset_clear_w;
(* MARK_DEBUG = "TRUE" *) wire writer_pending_w;
(* MARK_DEBUG = "TRUE" *) wire writer_partial_w;
wire [2:0] udp_pack_count_w;
(* MARK_DEBUG = "TRUE" *) wire [26:0] writer_word_count_w;
wire mem_wr_req_valid_w;
wire mem_wr_req_ready_w;
wire [26:0] mem_wr_req_addr_w;
wire [511:0] mem_wr_req_data_w;
(* MARK_DEBUG = "TRUE" *) wire mem_write_idle_w;
(* MARK_DEBUG = "TRUE" *) wire [26:0] mem_write_accept_count_w;
(* MARK_DEBUG = "TRUE" *) wire [26:0] mem_write_commit_count_w;

// DDR显式读请求与返回通道。
wire mem_rd_req_valid_w;
wire mem_rd_req_ready_w;
wire [26:0] mem_rd_req_addr_w;
wire mem_rd_data_valid_w;
wire mem_rd_data_ready_w;
wire [511:0] mem_rd_data_w;

// UART与VIO请求汇合后由batch控制器统一接受。
wire w_vio_fft_start;
wire w_vio_tx_start;
wire w_vio_clear;
reg vio_fft_start_d_r;
reg vio_clear_d_r;
wire vio_fft_start_pulse_w;
wire vio_clear_pulse_w;
wire batch_start_request_w;
wire dataset_clear_request_w;
(* MARK_DEBUG = "TRUE" *) wire batch_busy_w;
(* MARK_DEBUG = "TRUE" *) wire batch_done_w;
(* MARK_DEBUG = "TRUE" *) wire batch_start_error_w;
(* MARK_DEBUG = "TRUE" *) wire [19:0] batch_frame_index_w;
(* MARK_DEBUG = "TRUE" *) wire [19:0] batch_frame_count_w;
(* MARK_DEBUG = "TRUE" *) wire fft_frame_start_w;
(* MARK_DEBUG = "TRUE" *) wire [26:0] fft_frame_base_addr_w;
wire fft_frame_reader_ready_w;
wire fft_frame_reader_busy_w;
wire fft_frame_input_done_w;
// 保留现有ila.xdc使用的旧探针名，仅作为调试兼容别名，不参与功能控制。
(* MARK_DEBUG = "TRUE" *) wire fft_start_pulse_w;
(* MARK_DEBUG = "TRUE" *) wire fft_start_accept_w;
(* MARK_DEBUG = "TRUE" *) wire fft_busy_w;
(* MARK_DEBUG = "TRUE" *) wire fft_done_w;
(* MARK_DEBUG = "TRUE" *) wire dbg_test_rdata_pre_en;

// DDR → FFT：配置接口仅在复位后完成一次握手。
wire [15:0]  fft_config_tdata_w;
wire         fft_config_tvalid_w;
wire         fft_config_tready_w;
wire [31:0]  fft_s_tdata_w;
wire         fft_s_tvalid_w;
wire         fft_s_tready_w;
wire         fft_s_tlast_w;
wire [31:0]  fft_m_tdata_w;
wire [23:0]  fft_m_tuser_w;
wire         fft_m_tvalid_w;
wire         fft_m_tready_w;
wire         fft_m_tlast_w;
wire [7:0]   fft_status_tdata_w;
wire         fft_status_tvalid_w;
wire [12:0]  fft_input_count_w;
wire         fft_udp_frame_ready_w;
(* MARK_DEBUG = "TRUE" *) wire fft_udp_valid_w;
(* MARK_DEBUG = "TRUE" *) wire fft_udp_ready_w;
(* MARK_DEBUG = "TRUE" *) wire [63:0] fft_udp_data_w;
(* MARK_DEBUG = "TRUE" *) wire [12:0] fft_udp_rx_count_w;
(* MARK_DEBUG = "TRUE" *) wire [11:0] fft_udp_tx_count_w;
(* MARK_DEBUG = "TRUE" *) wire fft_udp_frame_done_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_frame_started_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_tlast_unexpected_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_tlast_missing_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_overflow_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_status_halt_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_data_in_halt_w;
(* MARK_DEBUG = "TRUE" *) wire fft_event_data_out_halt_w;
// -------------------------------- assign ------------------------------ //
assign vio_fft_start_pulse_w = w_vio_fft_start && !vio_fft_start_d_r;
assign vio_clear_pulse_w = w_vio_clear && !vio_clear_d_r;
assign batch_start_request_w = usr_batch_start_w | vio_fft_start_pulse_w;
assign dataset_clear_request_w = usr_dataset_clear_w | vio_clear_pulse_w;
assign fft_start_pulse_w = vio_fft_start_pulse_w;
assign fft_start_accept_w = fft_frame_start_w;
assign fft_busy_w = batch_busy_w;
assign fft_done_w = batch_done_w;
assign dbg_test_rdata_pre_en = fft_frame_start_w;
assign udp_tx_valid_w = fft_udp_valid_w;
assign udp_tx_data_w = fft_udp_data_w;
assign fft_udp_ready_w = udp_tx_ready_w;
assign ow_TEST_PIN[0] = ddr_calib_user_w;
assign ow_TEST_PIN[1] = batch_busy_w;
assign ow_TEST_PIN[2] = batch_done_w;
assign ow_TEST_PIN[3] = udp_drop_sticky_r;
assign ow_TEST_PIN[4] = ddr_error_w;
assign ow_TEST_PIN[5] = batch_start_error_w;
assign ow_TEST_PIN[6] = dataset_write_enable_w;
assign ow_TEST_PIN[7] = mem_write_idle_w;
assign ow_TEST_PIN[27:8] = batch_frame_index_w;
assign ow_TEST_PIN[31:28] = 4'd0;

always @(posedge clk_100M) begin
    if (ow_100M_rst) begin
        vio_fft_start_d_r <= 1'b0;
        vio_clear_d_r <= 1'b0;
    end
    else begin
        vio_fft_start_d_r <= w_vio_fft_start;
        vio_clear_d_r <= w_vio_clear;
    end
end

always @(posedge clk_100M) begin
    if (ow_100M_rst || dataset_clear_w) begin
        udp_drop_sticky_r <= 1'b0;
    end
    else if (udp_drop_pulse_w) begin
        udp_drop_sticky_r <= 1'b1;
    end
end






// -------------------------------- module ------------------------------ //
mclk_rst_module mclk_rst_module_inst(
    .iw_sys_clk    (iw_SYS_CLK   ) ,
    .iw_sys_rst_n  (1'b1         ) ,
    .clk_100M      (clk_100M     ) ,
    .clk_15M625    (clk_15M625   ) ,
    .clk_200M      (clk_200M     ) ,
    .clk_500M      (clk_500M     ) ,
    .clk_125M      (clk_125M     ) ,
    .clk_50M       (clk_50M      ) ,
    .clk_25M       (clk_25M      ) ,
    .clk_10M       (clk_10M      ) ,
    .clk_31M25     (clk_31M25    ) ,
    .clk_5M        (clk_5M       ) ,
    .clk_1M        (clk_1M       ) ,
    .clk_400k      (clk_400k     ) ,
    .clk_100k      (clk_100k     ) ,
    .clk_1k        (clk_1k       ) ,
    .ow_locked     (ow_locked    ) ,
    .ow_100M_rst   (ow_100M_rst  ) ,
    .ow_15M625_rst (ow_15M625_rst) ,
    .ow_200M_rst   (ow_200M_rst  ) ,
    .ow_125M_rst   (ow_125M_rst  ) ,
    .ow_50M_rst    (ow_50M_rst   ) ,
    .ow_25M_rst    (ow_25M_rst   ) ,
    .ow_10M_rst    (ow_10M_rst   ) ,
    .ow_31M25_rst  (ow_31M25_rst ) ,
    .ow_5M_rst     (ow_5M_rst    ) ,
    .ow_1M_rst     (ow_1M_rst    ) ,
    .ow_400k_rst   (ow_400k_rst  ) ,
    .ow_100k_rst   (ow_100k_rst  ) ,
    .ow_1k_rst     (ow_1k_rst    )
);

Unix_Epoch_module Unix_Epoch_module(
    .iw_sys_clk          (clk_100M            ) ,
    .iw_sys_rst          (ow_100M_rst         ) ,

    .iw_user_cmd_valid   (user_cmd_valid_w    ) ,
    .iw_user_cmd_data    (user_cmd_data_w     ) ,

    .clk_1M              (clk_1M              ) ,
    .iw_1M_rst           (ow_1M_rst           ) ,

    .ow_Unix_Epoch_data  (ow_Unix_Epoch_data  )
);

dna_module dna_module_inst(
    .iw_sys_clk (clk_100M    ) ,
    .iw_sys_rst (ow_100M_rst ) ,

    .iw_locked  (ow_locked   ) ,

    .ow_dna_ok  (ow_dna_ok   ) 
);

key_module key_module_inst(
    .iw_key_clk   (clk_100M     ) ,
    .iw_sys_rst   (ow_100M_rst  ) ,

    .iw_KEY_PIN   (iw_KEY_PIN   ) ,
    .ow_KEY_cap_n (ow_KEY_cap_n ) ,
    .ow_KEY_en    (ow_KEY_en    ) ,
    .ow_KEY_up    (ow_KEY_up    ) ,
    .ow_KEY_down  (ow_KEY_down  ) ,
    .ow_KEY_once  (ow_KEY_once  )
);

led_module#(
    .CLK_FRE            (CLK_FRE           )
)led_module_inst(
    .iw_led_clk         (clk_100M          ) ,
    .iw_led_rst         (ow_100M_rst       ) ,

    .iw_user_cmd_valid  (user_cmd_valid_w  ) ,
    .iw_user_cmd_data   (user_cmd_data_w   ) ,

    .ow_LED_PIN         (ow_LED_PIN        )
);

ws2812b_module#(
    .CLK_FRE      (10_000_000) ,
    .WS2812B_NUM  (2         )
)ws2812b_module_inst(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (user_cmd_valid_w  ) ,
    .iw_user_cmd_data  (user_cmd_data_w   ) ,

    .iw_ws2812b_clk    (clk_10M           ) ,
    .iw_ws2812b_rst    (ow_10M_rst        ) ,

    .iw_ws2812b_valid  (iw_ws2812b_valid  ) ,
    .iw_ws2812b_GRB    (iw_ws2812b_GRB    ) ,
    .ow_ws2812b_rdy    (ow_ws2812b_rdy    ) ,

    .ow_ws2812b        (ow_WS2812B        )
);

smg_module smg_module_inst(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (user_cmd_valid_w  ) ,
    .iw_user_cmd_data  (user_cmd_data_w   ) ,
    .ow_user_cmd_rdy   (ow_user_cmd_rdy   ) ,

    .iw_smg_cmd_data   (iw_smg_cmd_data   ) ,
    .iw_smg_cmd_valid  (iw_smg_cmd_valid  ) ,
    .ow_smg_cmd_rdy    (ow_smg_cmd_rdy    ) ,

    .iw_smg_clk        (clk_1k            ) ,
    .iw_smg_rst        (ow_1k_rst         ) ,

    .ow_SMG_DIG        (ow_SMG_DIG        ) , // 段选
    .ow_SMG_SEL        (ow_SMG_SEL        )   // 位选
);

uart_module#(
    .CLK_FRE             (CLK_FRE             ) ,
    .BAUD_RATE           (BAUD_RATE           ) ,
    .UART_RX_NUM         (UART_RX_NUM         )
)uart_module_inst(
    .iw_sys_clk          (clk_100M            ) ,
    .iw_sys_rst          (ow_100M_rst         ) ,

    .iw_uart_tx_num      (iw_uart_tx_num      ) ,
    .ow_uart_tx_rdy      (ow_uart_tx_rdy      ) ,
    .iw_uart_tx_en       (iw_uart_tx_en       ) ,
    .iw_uart_tx_data     (iw_uart_tx_data     ) ,
    .ow_uart_tx_done     (ow_uart_tx_done     ) ,

    .ow_uart_rx_data_rdy (uart_rx_valid_w     ) ,
    .ow_uart_rx_data     (uart_rx_data_w      ) ,
    .ow_uart_rx_num      (ow_uart_rx_num      ) ,

    .iw_rx               (iw_UART_RX          ) ,
    .ow_tx               (ow_UART_TX          )
);

cmd_cov_module cmd_cov_module_inst(
    .iw_sys_clk                (clk_100M                  ) ,
    .iw_sys_rst                (ow_100M_rst               ) ,

    // UDP RX专用于原始采样数据，控制命令仅由UART进入。
    .iw_uart_rx_cmd_data_valid (uart_rx_valid_w           ) ,
    .iw_uart_rx_cmd_data       (uart_rx_data_w            ) ,
    .iw_uart_rx_cmd_num        (ow_uart_rx_num                          ) ,
    
    .iw_ETH_rx_cmd_data        (64'd0                    ) ,
    .iw_ETH_rx_cmd_data_valid  (1'b0                     ) ,

    .ow_user_cmd_valid         (user_cmd_valid_w          ) ,
    .ow_user_cmd_data          (user_cmd_data_w           ) ,
    .ow_user_cmd_num           (ow_user_cmd_num           ) ,

    .iw_uart_tx_rdy            (ow_uart_tx_rdy                     ) ,
    .ow_uart_tx_cmd_data_valid (ow_uart_tx_cmd_data_valid ) ,
    .ow_uart_tx_cmd_data       (ow_uart_tx_cmd_data       ) ,
    .ow_uart_tx_cmd_num        (ow_uart_tx_cmd_num        ) ,
    
    .iw_ETH_udp_fifo_wr_rdy    (1'b0                      ) ,
    .ow_ETH_tx_cmd_data_valid  (ow_ETH_tx_cmd_data_valid  ) ,
    .ow_ETH_tx_cmd_data        (ow_ETH_tx_cmd_data        ) 
);

usr_cmd_ctrl_module usr_cmd_ctrl_module_inst(
    .user_clk(clk_100M),
    .user_rst(ow_100M_rst),
    .user_cmd_valid(user_cmd_valid_w),
    .user_cmd_data(user_cmd_data_w),
    .user_cmd_num(ow_user_cmd_num),
    .batch_start(usr_batch_start_w),
    .dataset_clear(usr_dataset_clear_w)
);

udp_drive udp_drive_inst(
    .iw_sys_clk                         (clk_100M                  ),
    .iw_sys_rst                         (ow_100M_rst               ),

    .phy_rst_o                          (phy_rst_o                 ),
    .rgmii_rxd                          (PHYA_rgmii_rxd            ),
    .rgmii_rx_ctl                       (PHYA_rgmii_rx_ctl         ),
    .rgmii_rxc                          (PHYA_rgmii_rxc            ),
    .rgmii_txd                          (PHYA_rgmii_txd            ),
    .rgmii_tx_ctl                       (PHYA_rgmii_tx_ctl         ),
    .rgmii_txc                          (PHYA_rgmii_txc            ),

    .clk_15M625                         (clk_15M625                ),
    .clk_25M                            (clk_25M                   ),
    .clk_125M                           (clk_125M                  ),
    .clk_200M                           (clk_200M                  ),
    .iw_locked                          (ow_locked                 ),
    .iw_15M625_rst                      (iw_15M625_rst             ),
    .iw_25M_rst                         (iw_25M_rst                ),

    .ow_ETH_rx_data_rdy                 (udp_rx_valid_w            ),
    .ow_ETH_rx_data                     (udp_rx_data_w             ),

    .ow_ETH_udp_fifo_wr_rdy             (udp_tx_ready_w            ),
    .iw_ETH_udp_fifo_wr_valid           (udp_tx_valid_w            ),
    .iw_ETH_udp_fifo_wr_data            (udp_tx_data_w             )
);
udp_ddr_writer udp_ddr_writer_inst(
    .user_clk(clk_100M),
    .user_rst(ow_100M_rst),
    .dataset_clear(dataset_clear_w),
    .dataset_write_enable(dataset_write_enable_w),
    .udp_valid(udp_rx_valid_w),
    .udp_data(udp_rx_data_w),
    .udp_ready(udp_writer_ready_w),
    .drop_pulse(udp_drop_pulse_w),
    .wr_req_valid(mem_wr_req_valid_w),
    .wr_req_ready(mem_wr_req_ready_w),
    .wr_req_addr(mem_wr_req_addr_w),
    .wr_req_data(mem_wr_req_data_w),
    .writer_pending(writer_pending_w),
    .partial_word(writer_partial_w),
    .write_word_count(writer_word_count_w),
    .pack_count(udp_pack_count_w)
);

fft_batch_ctrl fft_batch_ctrl_inst(
    .user_clk(clk_100M),
    .user_rst(ow_100M_rst),
    .batch_start_request(batch_start_request_w),
    .dataset_clear_request(dataset_clear_request_w),
    .writer_pending(writer_pending_w),
    .write_idle(mem_write_idle_w),
    .init_calib_complete(ddr_calib_user_w),
    .udp_drop_sticky(udp_drop_sticky_r | udp_drop_pulse_w),
    .write_commit_count(mem_write_commit_count_w),
    .frame_reader_ready(fft_frame_reader_ready_w),
    .fft_udp_frame_ready(fft_udp_frame_ready_w),
    .udp_frame_done(fft_udp_frame_done_w),
    .dataset_write_enable(dataset_write_enable_w),
    .dataset_clear(dataset_clear_w),
    .frame_start(fft_frame_start_w),
    .frame_base_addr(fft_frame_base_addr_w),
    .batch_busy(batch_busy_w),
    .batch_done(batch_done_w),
    .frame_index(batch_frame_index_w),
    .batch_frame_count(batch_frame_count_w),
    .start_error(batch_start_error_w)
);
// FFT 模式下，DDR 512-bit 数据按 sample0[511:496] 至 sample31[15:0] 依次送入 FFT。
ddr_fft_frame_reader ddr_fft_frame_reader_inst(
    .user_clk(clk_100M),
    .user_rst(ow_100M_rst),

    .frame_start(fft_frame_start_w),
    .frame_base_addr(fft_frame_base_addr_w),
    .frame_ready(fft_frame_reader_ready_w),
    .frame_busy(fft_frame_reader_busy_w),
    .frame_input_done(fft_frame_input_done_w),

    .rd_req_valid(mem_rd_req_valid_w),
    .rd_req_ready(mem_rd_req_ready_w),
    .rd_req_addr(mem_rd_req_addr_w),
    .rd_data_valid(mem_rd_data_valid_w),
    .rd_data_ready(mem_rd_data_ready_w),
    .rd_data(mem_rd_data_w),

    .fft_config_data(fft_config_tdata_w),
    .fft_config_valid(fft_config_tvalid_w),
    .fft_config_ready(fft_config_tready_w),

    .fft_data(fft_s_tdata_w),
    .fft_valid(fft_s_tvalid_w),
    .fft_ready(fft_s_tready_w),
    .fft_last(fft_s_tlast_w),
    .fft_input_count(fft_input_count_w)
);

// FFT输出按{偶数bin, 奇数bin}打包；输出ready是XFFT输出侧的唯一反压来源。
fft_udp_tx_bridge_module fft_udp_tx_bridge_module_inst(
    .clk_i                 (clk_100M                  ),
    .rst_n_i               (~ow_100M_rst              ),

    .frame_start_i         (fft_frame_start_w         ),
    .frame_ready_o         (fft_udp_frame_ready_w     ),

    .fft_data_i            (fft_m_tdata_w             ),
    .fft_valid_i           (fft_m_tvalid_w            ),
    .fft_ready_o           (fft_m_tready_w            ),
    .fft_last_i            (fft_m_tlast_w             ),

    .udp_data_o            (fft_udp_data_w            ),
    .udp_valid_o           (fft_udp_valid_w           ),
    .udp_ready_i           (fft_udp_ready_w           ),

    .fft_rx_count_o        (fft_udp_rx_count_w        ),
    .udp_tx_count_o        (fft_udp_tx_count_w        ),
    .frame_done_o          (fft_udp_frame_done_w      )
);

xfft_0 xfft_0_ddr_fft_inst(
    .aclk                        (clk_100M                     ),
    .s_axis_config_tdata         (fft_config_tdata_w          ),
    .s_axis_config_tvalid        (fft_config_tvalid_w         ),
    .s_axis_config_tready        (fft_config_tready_w         ),
    .s_axis_data_tdata           (fft_s_tdata_w               ),
    .s_axis_data_tvalid          (fft_s_tvalid_w              ),
    .s_axis_data_tready          (fft_s_tready_w              ),
    .s_axis_data_tlast           (fft_s_tlast_w               ),
    .m_axis_data_tdata           (fft_m_tdata_w               ),
    .m_axis_data_tuser           (fft_m_tuser_w               ),
    .m_axis_data_tvalid          (fft_m_tvalid_w              ),
    .m_axis_data_tready          (fft_m_tready_w              ),
    .m_axis_data_tlast           (fft_m_tlast_w               ),
    .m_axis_status_tdata         (fft_status_tdata_w          ),
    .m_axis_status_tvalid        (fft_status_tvalid_w         ),
    .m_axis_status_tready        (1'b1                         ),
    .event_frame_started         (fft_event_frame_started_w   ),
    .event_tlast_unexpected      (fft_event_tlast_unexpected_w),
    .event_tlast_missing         (fft_event_tlast_missing_w   ),
    .event_fft_overflow          (fft_event_overflow_w        ),
    .event_status_channel_halt   (fft_event_status_halt_w     ),
    .event_data_in_channel_halt  (fft_event_data_in_halt_w    ),
    .event_data_out_channel_halt (fft_event_data_out_halt_w   )
);
// DDR3可寻址访问层：写入来自UDP打包器，指定地址读取送往FFT帧读取器。
ddr3_mem_subsystem ddr3_mem_subsystem_inst(
    .user_clk(clk_100M),
    .user_rst(ow_100M_rst),
    .dataset_clear(dataset_clear_w),
    .wr_req_valid(mem_wr_req_valid_w),
    .wr_req_ready(mem_wr_req_ready_w),
    .wr_req_addr(mem_wr_req_addr_w),
    .wr_req_data(mem_wr_req_data_w),
    .rd_req_valid(mem_rd_req_valid_w),
    .rd_req_ready(mem_rd_req_ready_w),
    .rd_req_addr(mem_rd_req_addr_w),
    .rd_data_valid(mem_rd_data_valid_w),
    .rd_data_ready(mem_rd_data_ready_w),
    .rd_data(mem_rd_data_w),
    .write_idle(mem_write_idle_w),
    .write_accept_count(mem_write_accept_count_w),
    .write_commit_count(mem_write_commit_count_w),
    .clk_200m(clk_200M),
    .rst_200m(ow_200M_rst),
    .ddr3_rst(1'b0),
    .ddr3_clk(ow_ddr3_clk),
    .ddr3_clk_sync_rst(ow_ddr3_clk_sync_rst),
    .init_calib_complete(ow_init_calib_complete),
    .init_calib_complete_user(ddr_calib_user_w),
    .error_flag(ddr_error_w),
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_cke(ddr3_cke),
    .ddr3_cs_n(ddr3_cs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_odt(ddr3_odt)
);

eeprom_module#(
    .eeprom_memory     (eeprom_memory     )
)eeprom_module_inst_0(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (user_cmd_valid_w  ) ,
    .iw_user_cmd_data  (user_cmd_data_w   ) ,
    
    .iw_iic_clk        (clk_400k          ) ,
    .iw_iic_rst        (ow_400k_rst       ) ,

    .iw_IIC_SDI        (iw_EEPROM_IIC_SDI ) ,
    .ow_IIC_SDO        (ow_EEPROM_IIC_SDO ) ,

    .ow_IIC_SCL        (ow_EEPROM_IIC_SCL ) ,
    .io_IIC_SDA        (io_EEPROM_IIC_SDA )
);

eeprom_module#(
    .eeprom_memory     (eeprom_memory     )
)eeprom_module_inst_1(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (user_cmd_valid_w  ) ,
    .iw_user_cmd_data  (user_cmd_data_w   ) ,
    
    .iw_iic_clk        (clk_400k          ) ,
    .iw_iic_rst        (ow_400k_rst       ) ,

    .iw_IIC_SDI        (iw_FMC_IIC_SDI    ) ,
    .ow_IIC_SDO        (ow_FMC_IIC_SDO    ) ,

    .ow_IIC_SCL        (ow_FMC_SCL        ) ,
    .io_IIC_SDA        (io_FMC_SDA        )
);

// -------------------------------- Language Template ------------------------------ //
IOBUF IOBUF_inst_FMC_PRSNT(
    .O  (iw_FMC_PRSNT  ) , // 1-bit output: Buffer output
    .I  (ow_FMC_PRSNT  ) , // 1-bit input: Buffer input
    .IO (io_FMC_PRSNT  ) , // 1-bit inout: Buffer inout (connect directly to top-level port)
    .T  (ow_FMC_PRSNT_T)   // 1-bit input: 3-state enable input
);

IOBUF IOBUF_inst_FMC_PG_M2C(
    .O  (iw_FMC_PG_M2C  ) , // 1-bit output: Buffer output
    .I  (ow_FMC_PG_M2C  ) , // 1-bit input: Buffer input
    .IO (io_FMC_PG_M2C  ) , // 1-bit inout: Buffer inout (connect directly to top-level port)
    .T  (ow_FMC_PG_M2C_T)   // 1-bit input: 3-state enable input
);

IOBUF IOBUF_inst_FMC_PG_C2M(
    .O  (iw_FMC_PG_C2M  ) , // 1-bit output: Buffer output
    .I  (ow_FMC_PG_C2M  ) , // 1-bit input: Buffer input
    .IO (io_FMC_PG_C2M  ) , // 1-bit inout: Buffer inout (connect directly to top-level port)
    .T  (ow_FMC_PG_C2M_T)   // 1-bit input: 3-state enable input
);

IOBUF IOBUF_inst_FMC_RES0(
    .O  (iw_FMC_RES[0]  ) , // 1-bit output: Buffer output
    .I  (ow_FMC_RES[0]  ) , // 1-bit input: Buffer input
    .IO (io_FMC_RES[0]  ) , // 1-bit inout: Buffer inout (connect directly to top-level port)
    .T  (ow_FMC_RES_T[0])   // 1-bit input: 3-state enable input
);

IOBUF IOBUF_inst_FMC_RES1(
    .O  (iw_FMC_RES[1]  ) , // 1-bit output: Buffer output
    .I  (ow_FMC_RES[1]  ) , // 1-bit input: Buffer input
    .IO (io_FMC_RES[1]  ) , // 1-bit inout: Buffer inout (connect directly to top-level port)
    .T  (ow_FMC_RES_T[1])   // 1-bit input: 3-state enable input
);

// vio_FMC vio_FMC_inst (
//     .clk        (clk_100M       ) , // input wire clk
//     .probe_in0  (iw_FMC_PRSNT   ) , // input wire [0 : 0] probe_in0
//     .probe_in1  (iw_FMC_PG_M2C  ) , // input wire [0 : 0] probe_in1
//     .probe_in2  (iw_FMC_PG_C2M  ) , // input wire [0 : 0] probe_in2
//     .probe_in3  (iw_FMC_RES     ) , // input wire [1 : 0] probe_in3
    
//     .probe_out0 (ow_FMC_PRSNT_T  ) , // output wire [0 : 0] probe_out0
//     .probe_out1 (ow_FMC_PRSNT    ) , // output wire [0 : 0] probe_out1
//     .probe_out2 (ow_FMC_PG_M2C_T ) , // output wire [0 : 0] probe_out2
//     .probe_out3 (ow_FMC_PG_M2C   ) , // output wire [0 : 0] probe_out3
//     .probe_out4 (ow_FMC_PG_C2M_T ) , // output wire [0 : 0] probe_out4
//     .probe_out5 (ow_FMC_PG_C2M   ) , // output wire [0 : 0] probe_out5
//     .probe_out6 (ow_FMC_RES_T    ) , // output wire [1 : 0] probe_out6
//     .probe_out7 (ow_FMC_RES      )   // output wire [1 : 0] probe_out7
// );
// ============================================================
// FFT Debug VIO
// ============================================================

vio_fft_debug vio_fft_debug_inst (
    .clk        (clk_100M),

    .probe_out0 (w_vio_fft_start), // 0→1 请求启动全部完整帧
    .probe_out1 (w_vio_tx_start),  // 保留探针，本架构未使用
    .probe_out2 (w_vio_clear)      // 0→1 请求清空并开始新数据集
);
// ============================================================
// DDR3 / FFT Debug ILA
// 用于检查：DDR3读取 → FFT输入 → FFT输出
// ============================================================

ila_fft_debug ila_fft_debug_inst (
    .clk    (clk_100M),

    // ---------------- DDR3 Read Control ----------------
    .probe0 (mem_rd_data_valid_w),          // [0:0]  DDR3读返回有效
    .probe1 ({6'd0, mem_rd_data_ready_w}),  // [6:0]  DDR3读返回消费

    // ---------------- FFT Input ----------------
    .probe2 (fft_input_count_w),           // [12:0] 实际完成握手的输入点数
    .probe3 (fft_input_count_w[11:0]),     // [11:0] 当前输入点索引

    .probe4 (fft_s_tvalid_w),              // [0:0]  FFT输入Valid
    .probe5 (fft_s_tready_w),              // [0:0]  FFT输入Ready
    .probe6 (fft_s_tlast_w),               // [0:0]  第4096点拉高

    .probe7 (fft_s_tdata_w),               // [31:0] FFT实际输入数据

    // ---------------- FFT Output ----------------
    .probe8 (fft_udp_rx_count_w[11:0]),    // [11:0] 已完成握手的输出点数低12位
    .probe9 (fft_m_tvalid_w),              // [0:0]  FFT输出Valid
    .probe10(fft_m_tlast_w),               // [0:0]  FFT输出Last
    .probe11(fft_m_tdata_w),               // [31:0] FFT输出Real/Imag

    .probe12({5'd0, fft_m_tready_w}),      // [5:0]  FFT输出Ready
    .probe13(fft_m_tuser_w[11:0]),         // [11:0] FFT Natural Order 索引
    .probe14(fft_event_frame_started_w)    // [0:0]  FFT帧启动事件
);

// ---------------- UDP DDR3 Write Bridge Debug ----------------
(* MARK_DEBUG = "TRUE" *) reg         dbg_udp_rx_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [63:0]  dbg_udp_rx_data_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_ddr_wr_ready_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_ddr_wr_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [511:0] dbg_ddr_wr_data_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_udp_to_ddr_overflow_r;
(* MARK_DEBUG = "TRUE" *) reg [2:0]   dbg_udp_to_ddr_pack_count_r;

// ---------------- DDR3 UDP Read Bridge Debug ----------------
(* MARK_DEBUG = "TRUE" *) reg         dbg_ddr_rd_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [511:0] dbg_ddr_rd_data_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_ddr_rd_ready_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_udp_tx_ready_r;
(* MARK_DEBUG = "TRUE" *) reg         dbg_udp_tx_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [63:0]  dbg_udp_tx_data_r;
(* MARK_DEBUG = "TRUE" *) reg [2:0]   dbg_ddr_to_udp_unpack_count_r;

always @(posedge clk_100M) begin
    if (ow_100M_rst) begin
        dbg_udp_rx_valid_r   <= 1'b0;
        dbg_udp_rx_data_r    <= 64'd0;
        dbg_ddr_wr_ready_r   <= 1'b0;
        dbg_ddr_wr_valid_r   <= 1'b0;
        dbg_ddr_wr_data_r    <= 512'd0;
        dbg_udp_to_ddr_overflow_r   <= 1'b0;
        dbg_udp_to_ddr_pack_count_r <= 3'd0;

        dbg_ddr_rd_valid_r   <= 1'b0;
        dbg_ddr_rd_data_r    <= 512'd0;
        dbg_ddr_rd_ready_r   <= 1'b0;
        dbg_udp_tx_ready_r   <= 1'b0;
        dbg_udp_tx_valid_r   <= 1'b0;
        dbg_udp_tx_data_r    <= 64'd0;
        dbg_ddr_to_udp_unpack_count_r <= 3'd0;
    end
    else begin
        dbg_udp_rx_valid_r   <= udp_rx_valid_w;
        dbg_udp_rx_data_r    <= udp_rx_data_w;
        dbg_ddr_wr_ready_r   <= mem_wr_req_ready_w;
        dbg_ddr_wr_valid_r   <= mem_wr_req_valid_w;
        dbg_ddr_wr_data_r    <= mem_wr_req_data_w;
        dbg_udp_to_ddr_overflow_r   <= udp_drop_pulse_w;
        dbg_udp_to_ddr_pack_count_r <= udp_pack_count_w;

        dbg_ddr_rd_valid_r   <= mem_rd_data_valid_w;
        dbg_ddr_rd_data_r    <= mem_rd_data_w;
        dbg_ddr_rd_ready_r   <= mem_rd_data_ready_w;
        dbg_udp_tx_ready_r   <= udp_tx_ready_w;
        dbg_udp_tx_valid_r   <= udp_tx_valid_w;
        dbg_udp_tx_data_r    <= udp_tx_data_w;
        dbg_ddr_to_udp_unpack_count_r <= batch_frame_index_w[2:0];
    end
end
// ---------------- RGMII RX Debug ----------------
// (* MARK_DEBUG = "TRUE" *) reg [3:0] dbg_rgmii_rxd_r;
// (* MARK_DEBUG = "TRUE" *) reg       dbg_rgmii_rx_ctl_r;

// always @(posedge PHYA_rgmii_rxc) begin
//     dbg_rgmii_rxd_r    <= PHYA_rgmii_rxd;
//     dbg_rgmii_rx_ctl_r <= PHYA_rgmii_rx_ctl;
// end

// ila_eth_rx ila_eth_rx_inst(
//     .clk    (PHYA_rgmii_rxc     ),
//     .probe0 (dbg_rgmii_rx_ctl_r ),
//     .probe1 (dbg_rgmii_rxd_r    )
// );
// // ---------------- RGMII TX Debug ----------------
// (* MARK_DEBUG = "TRUE" *) reg [3:0] dbg_rgmii_txd_r;
// (* MARK_DEBUG = "TRUE" *) reg       dbg_rgmii_tx_ctl_r;

// always @(posedge PHYA_rgmii_txc) begin
//     dbg_rgmii_txd_r    <= PHYA_rgmii_txd;
//     dbg_rgmii_tx_ctl_r <= PHYA_rgmii_tx_ctl;
// end

// ila_eth_tx ila_eth_tx_inst(
//     .clk    (PHYA_rgmii_txc     ),
//     .probe0 (dbg_rgmii_tx_ctl_r ),
//     .probe1 (dbg_rgmii_txd_r    )
// );
// ---------------- Ethernet System Debug ----------------
(* MARK_DEBUG = "TRUE" *) reg        dbg_phy_rst_r;
(* MARK_DEBUG = "TRUE" *) reg        dbg_locked_r;
(* MARK_DEBUG = "TRUE" *) reg        dbg_eth_rx_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [63:0] dbg_eth_rx_data_r;
(* MARK_DEBUG = "TRUE" *) reg        dbg_eth_tx_ready_r;
(* MARK_DEBUG = "TRUE" *) reg        dbg_eth_tx_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [63:0] dbg_eth_tx_data_r;

always @(posedge clk_100M) begin
    dbg_phy_rst_r <= phy_rst_o;
    dbg_locked_r <= ow_locked;
    dbg_eth_rx_valid_r <= udp_rx_valid_w;
    dbg_eth_rx_data_r <= udp_rx_data_w;
    dbg_eth_tx_ready_r <= udp_tx_ready_w;
    dbg_eth_tx_valid_r <= udp_tx_valid_w;
    dbg_eth_tx_data_r <= udp_tx_data_w;
end

ila_eth_system ila_eth_system_inst(
    .clk    (clk_100M           ),
    .probe0 (dbg_phy_rst_r       ),
    .probe1 (dbg_locked_r        ),
    .probe2 (dbg_eth_rx_valid_r  ),
    .probe3 (dbg_eth_rx_data_r   ),
    .probe4 (dbg_eth_tx_ready_r  ),
    .probe5 (dbg_eth_tx_valid_r  ),
    .probe6 (dbg_eth_tx_data_r   )
);
(* MARK_DEBUG = "TRUE" *) reg         dbg_user_cmd_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [511:0] dbg_user_cmd_data_r;
(* MARK_DEBUG = "TRUE" *) reg [6:0]   dbg_user_cmd_num_r;

(* MARK_DEBUG = "TRUE" *) reg         dbg_uart_rx_valid_r;
(* MARK_DEBUG = "TRUE" *) reg [511:0] dbg_uart_rx_data_r;
(* MARK_DEBUG = "TRUE" *) reg [6:0]   dbg_uart_rx_num_r;

always @(posedge clk_100M) begin
    dbg_user_cmd_valid_r    <= user_cmd_valid_w;
    dbg_user_cmd_data_r     <= user_cmd_data_w;
    dbg_user_cmd_num_r      <= ow_user_cmd_num;

    dbg_uart_rx_valid_r     <= uart_rx_valid_w;
    dbg_uart_rx_data_r      <= uart_rx_data_w;
    dbg_uart_rx_num_r       <= ow_uart_rx_num;

end
(* MARK_DEBUG = "TRUE" *) reg [15:0] dbg_udp_rx_count_r;
(* MARK_DEBUG = "TRUE" *) reg [15:0] dbg_ddr_wr_count_r;
(* MARK_DEBUG = "TRUE" *) reg [15:0] dbg_ddr_rd_count_r;

always @(posedge clk_100M) begin
    if (ow_100M_rst) begin
        dbg_udp_rx_count_r <= 16'd0;
        dbg_ddr_wr_count_r <= 16'd0;
        dbg_ddr_rd_count_r <= 16'd0;
    end
    else begin
        if (udp_rx_valid_w) begin
            dbg_udp_rx_count_r <= dbg_udp_rx_count_r + 1'b1;
        end

        if (mem_wr_req_valid_w && mem_wr_req_ready_w) begin
            dbg_ddr_wr_count_r <= dbg_ddr_wr_count_r + 1'b1;
        end

        if (mem_rd_data_valid_w && mem_rd_data_ready_w) begin
            dbg_ddr_rd_count_r <= dbg_ddr_rd_count_r + 1'b1;
        end
    end
end
endmodule
