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
wire [5:0] w_debug_tx_frame_index;
wire [12:0] w_debug_fft_input_count;
wire [11:0] w_debug_fft_input_index;
wire [11:0] w_debug_fft_output_index;
wire [11:0] w_fft_rd_addr;
wire [15:0] w_fft_rd_real;
wire [15:0] w_fft_rd_imag;

wire        w_fft_uart_tx_done;
wire [1:0] iw_FMC_RES   ;
wire [1:0] ow_FMC_RES   ;
wire [1:0] ow_FMC_RES_T ;
// Unix_Epoch 微秒计数器
wire [  55:0] ow_Unix_Epoch_data ;
// 解析接收到的用户命令
wire [   6:0] ow_user_cmd_num  ;

// 串口/网口 发送和接收数据
wire [   9:0] iw_uart_tx_num      ;
wire [4095:0] iw_uart_tx_data     ;
wire [   6:0] ow_uart_rx_num      ;
wire         iw_uart_tx_en         ;
wire         ow_uart_tx_rdy        ;
wire         ow_uart_tx_done       ;
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
wire [  63:0] ow_ETH_rx_data       ;
// 串口/网口 发送解析接收到的用户命令
wire [ 511:0] ow_uart_tx_cmd_data ;
wire [   6:0] ow_uart_tx_cmd_num  ;
wire [  63:0] ow_ETH_tx_cmd_data  ;

wire [ 511:0] iw_ddr3_fifo_wr_data ;

wire [  63:0] ow_test_wdata       ;
wire [  63:0] iw_test_rdata       ;

wire [  63:0] iw_smg_cmd_data     ;
wire [  23:0] iw_ws2812b_GRB      ;
wire [  63:0] iw_time_data        ; // TODO: 当前未使用，待回归验证后清理

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
wire r_ddr3_rst, ow_ddr3_clk, ow_ddr3_clk_sync_rst, ow_init_calib_complete;
wire iw_test_wdata_rdy, ow_test_wdata_valid, ow_test_rdata_pre_en;
wire ow_test_rdata_valid, iw_test_rdata_rdy, ow_test_rdata_error;

// UDP RX：64-bit 数据进入 UDP→DDR3 打包器。
wire         udp_rx_valid_w;
wire [63:0]  udp_rx_data_w;
// DDR3 写：每 8 个 UDP 64-bit 字打包为 1 个 512-bit 字。
wire         ddr_wr_ready_w;
wire         ddr_wr_valid_w;
wire [511:0] ddr_wr_data_w;
wire         udp_to_ddr_overflow_w;
wire [2:0]   udp_to_ddr_pack_count_w;
// DDR3 读：注意：原 ddr3_cache_module 历史接口命名与实际 valid/ready 语义相反。
wire         ddr_rd_valid_w;
wire [511:0] ddr_rd_data_w;
wire         ddr_rd_ready_w;
wire         ddr_rd_trigger_w;
// UDP TX：DDR3 512-bit 数据按高位至低位拆成 8 个 64-bit 字。
wire         udp_tx_ready_w;
wire         udp_tx_valid_w;
wire [63:0]  udp_tx_data_w;
wire [2:0]   ddr_to_udp_unpack_count_w;
// UART/命令：UART 接收帧由命令模块转换为用户命令。
wire         uart_rx_valid_w;
wire [511:0] uart_rx_data_w;
wire         user_cmd_valid_w;
wire [511:0] user_cmd_data_w;
// -------------------------------- assign ------------------------------ //
// UART RX/TX is intentionally isolated from cmd_cov_module in this phase.
// The completed UART frame is returned unchanged by uart_data_loopback_module.
wire ow_ddr3_fifo_wr_rdy; // TODO: 当前未使用，待回归验证后清理
// assign iw_ETH_udp_fifo_wr_valid   = ow_ddr3_fifo_rd_data_rdy ;
// assign iw_ETH_udp_fifo_wr_data    = ow_ddr3_fifo_rd_data     ;
// assign iw_ddr3_fifo_rd_data_valid = ow_ETH_udp_fifo_wr_rdy   ;

// assign iw_test_wdata_rdy     = ow_ddr3_fifo_wr_rdy ;
// assign iw_ddr3_fifo_wr_valid = ow_test_wdata_valid ;
// assign iw_ddr3_fifo_wr_data  = ow_test_wdata       ;

// test_data_generator_module 当前仅用于 DDR3 读触发和读数据校验；旧 DDR3 写路径保持断开。
assign ddr_rd_trigger_w            = ow_test_rdata_pre_en ;

//assign iw_ddr3_fifo_rd_data_valid = ow_test_rdata_valid      ;
assign iw_test_rdata              = ddr_rd_data_w     ;
assign iw_test_rdata_rdy          = udp_tx_valid_w && udp_tx_ready_w ;

// assign ow_TEST_PIN[ 0] = iw_UART_RX ;
// assign ow_TEST_PIN[ 1] = ow_UART_TX ;

// assign ow_TEST_PIN[ 3] = ow_ddr3_fifo_wr_rdy    ;
// assign ow_TEST_PIN[ 4] = iw_ddr3_fifo_wr_valid  ;

// assign ow_TEST_PIN[ 5] = iw_ddr3_fifo_rd_pre_en      ; 
// assign ow_TEST_PIN[ 6] = iw_ddr3_fifo_rd_data_valid  ; 
// assign ow_TEST_PIN[ 7] = ow_ddr3_fifo_rd_data_rdy    ; 

// assign ow_TEST_PIN[ 8] = ow_ddr3_clk_sync_rst   ;
// assign ow_TEST_PIN[ 9] = ow_init_calib_complete ;

// assign ow_TEST_PIN[10] = ow_test_rdata_error ;

//assign io_CLK       = {clk_500M , clk_10M} ;
//assign io_FMC_clk_p = {2{clk_100M}} ;
//assign io_FMC_clk_n = {2{clk_100M}} ;
//assign io_FMC_LA_p  = {32{clk_100M}} ;
//assign io_FMC_LA_n  = {32{clk_100M}} ;
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

// uart_data_loopback_module uart_data_loopback_module_inst(
//     .iw_sys_clk       (clk_100M            ) ,
//     .iw_sys_rst       (ow_100M_rst         ) ,

//     .iw_uart_rx_valid (ow_uart_rx_data_rdy ) ,//定义实在是不准确
//     .iw_uart_rx_data  (ow_uart_rx_data     ) ,
//     .iw_uart_rx_num   (ow_uart_rx_num      ) ,

//     .iw_uart_tx_rdy   (ow_uart_tx_rdy      ) ,
//     .iw_uart_tx_done  (ow_uart_tx_done     ) ,
//     .or_uart_tx_en    (iw_uart_tx_en       ) ,
//     .or_uart_tx_num   (iw_uart_tx_num      ) ,
//     .or_uart_tx_data  (iw_uart_tx_data     )
// );

// uart_fft_bridge_module uart_fft_bridge_module_inst(
//     .iw_fft_rd_addr                     (w_fft_rd_addr             ),
//     .or_fft_rd_real                     (w_fft_rd_real             ),
//     .or_fft_rd_imag                     (w_fft_rd_imag             ),
//     .ow_debug_fft_input_count           (w_debug_fft_input_count   ),
//     .ow_debug_fft_input_index           (w_debug_fft_input_index   ),
//     .ow_debug_fft_output_index          (w_debug_fft_output_index  ),
//     .iw_sys_clk              (clk_100M                      ) ,
//     .iw_sys_rst              (ow_100M_rst                   ) ,
//     .iw_uart_rx_valid        (ow_uart_rx_data_rdy           ) ,
//     .iw_uart_rx_data         (ow_uart_rx_data               ) ,
//     .iw_uart_rx_num          (ow_uart_rx_num                ) ,
//     .ow_uart_frame_ready     (ow_uart_fft_frame_ready       ) ,
//     .os_axis_config_tdata    (ow_fft_config_tdata           ) ,
//     .os_axis_config_tvalid   (ow_fft_config_tvalid          ) ,
//     .iw_s_axis_config_tready (iw_fft_config_tready          ) ,
//     .os_axis_data_tdata      (ow_fft_data_tdata             ) ,
//     .os_axis_data_tvalid     (ow_fft_data_tvalid            ) ,
//     .iw_s_axis_data_tready   (iw_fft_data_tready            ) ,
//     .os_axis_data_tlast      (ow_fft_data_tlast             ) ,
//     .iw_m_axis_data_tdata    (iw_fft_data_tdata             ) ,
//     .iw_m_axis_data_tuser    (iw_fft_data_tuser             ) ,
//     .iw_m_axis_data_tvalid   (iw_fft_data_tvalid            ) ,
//     .os_m_axis_data_tready   (ow_fft_data_tready            ) ,
//     .iw_m_axis_data_tlast    (iw_fft_data_tlast             ) ,
//     .ow_fft_frame_done       (ow_fft_frame_done             ) ,
//     .ow_fft_input_count      (ow_fft_input_count            ) ,
//     .ow_fft_output_count     (ow_fft_output_count           )
// );
// fft_uart_tx_module fft_uart_tx_module_inst(

//     .ow_debug_tx_frame_index       (w_debug_tx_frame_index),
//     .iw_sys_clk       (clk_100M),
//     .iw_sys_rst       (ow_100M_rst),

//     .iw_fft_frame_done(w_vio_tx_start_pulse),//w_vio_tx_start_pulse
//     // .iw_fft_frame_done(ow_fft_frame_done),//w_vio_tx_start_pulse

//     .or_fft_rd_addr   (w_fft_rd_addr),
//     .iw_fft_rd_real   (w_fft_rd_real),
//     .iw_fft_rd_imag   (w_fft_rd_imag),

//     .iw_uart_tx_rdy   (ow_uart_tx_rdy),
//     .iw_uart_tx_done  (ow_uart_tx_done),

//     .or_uart_tx_num   (iw_uart_tx_num),
//     .or_uart_tx_en    (iw_uart_tx_en),
//     .or_uart_tx_data  (iw_uart_tx_data),

//     .ow_tx_all_done   (w_fft_uart_tx_done)
// );
// xfft_0 xfft_0_inst(
//     .aclk                        (clk_100M                       ) ,
//     .s_axis_config_tdata         (ow_fft_config_tdata            ) ,
//     .s_axis_config_tvalid        (ow_fft_config_tvalid           ) ,
//     .s_axis_config_tready        (iw_fft_config_tready           ) ,
//     .s_axis_data_tdata           (ow_fft_data_tdata              ) ,
//     .s_axis_data_tvalid          (ow_fft_data_tvalid             ) ,
//     .s_axis_data_tready          (iw_fft_data_tready             ) ,
//     .s_axis_data_tlast           (ow_fft_data_tlast              ) ,
//     .m_axis_data_tdata           (iw_fft_data_tdata              ) ,
//     .m_axis_data_tuser           (iw_fft_data_tuser              ) ,
//     .m_axis_data_tvalid          (iw_fft_data_tvalid             ) ,
//     .m_axis_data_tready          (ow_fft_data_tready             ) ,
//     .m_axis_data_tlast           (iw_fft_data_tlast              ) ,
//     .m_axis_status_tdata         (iw_fft_status_tdata            ) ,
//     .m_axis_status_tvalid        (iw_fft_status_tvalid           ) ,
//     .m_axis_status_tready        (1'b1                           ) ,
//     .event_frame_started         (ow_fft_event_frame_started     ) ,
//     .event_tlast_unexpected      (ow_fft_event_tlast_unexpected  ) ,
//     .event_tlast_missing         (ow_fft_event_tlast_missing     ) ,
//     .event_fft_overflow          (ow_fft_event_overflow          ) ,
//     .event_status_channel_halt   (ow_fft_event_status_halt       ) ,
//     .event_data_in_channel_halt  (ow_fft_event_data_in_halt      ) ,
//     .event_data_out_channel_halt (ow_fft_event_data_out_halt     )
// );


cmd_cov_module cmd_cov_module_inst(
    .iw_sys_clk                (clk_100M                  ) ,
    .iw_sys_rst                (ow_100M_rst               ) ,

    // UART is bypassed for the loopback phase; Ethernet command routing stays.
    .iw_uart_rx_cmd_data_valid (uart_rx_valid_w                         ) ,
    .iw_uart_rx_cmd_data       (uart_rx_data_w                          ) ,
    .iw_uart_rx_cmd_num        (ow_uart_rx_num                          ) ,
    
    .iw_ETH_rx_cmd_data        (udp_rx_data_w            ) ,
    .iw_ETH_rx_cmd_data_valid  (udp_rx_valid_w        ) ,

    .ow_user_cmd_valid         (user_cmd_valid_w          ) ,
    .ow_user_cmd_data          (user_cmd_data_w           ) ,
    .ow_user_cmd_num           (ow_user_cmd_num           ) ,

    .iw_uart_tx_rdy            (ow_uart_tx_rdy                     ) ,
    .ow_uart_tx_cmd_data_valid (ow_uart_tx_cmd_data_valid ) ,
    .ow_uart_tx_cmd_data       (ow_uart_tx_cmd_data       ) ,
    .ow_uart_tx_cmd_num        (ow_uart_tx_cmd_num        ) ,
    
    .iw_ETH_udp_fifo_wr_rdy    (udp_tx_ready_w            ) ,
    .ow_ETH_tx_cmd_data_valid  (ow_ETH_tx_cmd_data_valid  ) ,
    .ow_ETH_tx_cmd_data        (ow_ETH_tx_cmd_data        ) 
);

    wire                                       sys_clk                    ;
    wire                                       rst_n                      ;
wire                                       w_ddr_udp_valid            ; // TODO: 当前未使用，待回归验证后清理
wire                 [  63: 0]             w_ddr_udp_data             ; // TODO: 当前未使用，待回归验证后清理
wire                                       w_ddr_udp_ready            ; // TODO: 当前未使用，待回归验证后清理

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
// UDP 64-bit 输入按接收顺序打包成 DDR3 512-bit；写握手由 ddr_wr_valid_w/ddr_wr_ready_w 完成。
udp_ddr3_write_bridge u_udp_ddr3_write_bridge(
    .sys_clk                            (clk_100M                      ), // (input)// 系统时钟
    .rst_n                              (~ow_100M_rst                   ), // (input)// 同步低有效复位
    .udp_valid_i                        (udp_rx_valid_w            ), // (input)// UDP 64bit 数据有效
    .udp_data_i                         (udp_rx_data_w             ),// (input)// UDP 64bit 数据
    .ddr_ready_i                        (ddr_wr_ready_w            ),// (input)// DDR3 写FIFO可接收
    .ddr_valid_o                        (ddr_wr_valid_w            ),// (output)// DDR3 512bit写数据有效
    .ddr_data_o                         (ddr_wr_data_w             ),// (output)// DDR3 512bit写数据
    .overflow_o                         (udp_to_ddr_overflow_w     ),// (output)// 数据溢出标志
    .pack_count_o                       (udp_to_ddr_pack_count_w   ) // (output)// 当前64bit数据计数
);
// DDR3 512-bit 数据按高位至低位拆为 8 个 UDP 64-bit 字；ready 表示 UDP 发送 FIFO 可接收。
ddr3_udp_read_bridge ddr3_udp_read_bridge_inst(
    .sys_clk                            (clk_100M                  ),
    .rst_n                              (~ow_100M_rst              ),

    .ddr_valid_i                        (ddr_rd_valid_w            ),
    .ddr_data_i                         (ddr_rd_data_w             ),
    .ddr_ready_o                        (ddr_rd_ready_w            ),

    .udp_ready_i                        (udp_tx_ready_w            ),
    .udp_valid_o                        (udp_tx_valid_w            ),
    .udp_data_o                         (udp_tx_data_w             ),

    .unpack_count_o                     (ddr_to_udp_unpack_count_w )
);
// ddr3_cache_module - uart/ETH
ddr3_cache_module ddr3_cache_module_inst(
    .iw_ddr3_fifo_wr_clk                (clk_100M                  ),
    .iw_ddr3_fifo_wr_rst                (ow_100M_rst               ),
// rx
    .ow_ddr3_fifo_wr_rdy                (ddr_wr_ready_w            ),
    .iw_ddr3_fifo_wr_valid              (ddr_wr_valid_w            ),
    .iw_ddr3_fifo_wr_data               (ddr_wr_data_w             ),// ddr3 预读取
// tx
    .iw_ddr3_fifo_rd_clk                (clk_100M                  ),
    .iw_ddr3_fifo_rd_rst                (ow_100M_rst               ),
    .iw_ddr3_fifo_rd_pre_en             (ddr_rd_trigger_w | w_vio_tx_start   ),
    .iw_ddr3_fifo_rd_data_valid         (ddr_rd_ready_w            ),
    .ow_ddr3_fifo_rd_data               (ddr_rd_data_w             ),// [511:0]
    .ow_ddr3_fifo_rd_data_rdy           (ddr_rd_valid_w            ),
//********** DDR MIG APP interface***********//
    .iw_clk_200M                        (clk_200M                  ),// ddr3 输入时钟 Artix7 为 200MHz
    .iw_200M_rst                        (ow_200M_rst               ),// 时钟复位
    .iw_ddr3_rst                        (r_ddr3_rst                ),// ddr3 输入复位 设置高有效

    .ow_ddr3_clk                        (ow_ddr3_clk               ),// ddr3 模块返回用户时钟  
    .ow_ddr3_clk_sync_rst               (ow_ddr3_clk_sync_rst      ),// ddr3 模块返回复位    
    .ow_init_calib_complete             (ow_init_calib_complete    ),// ddr3 模块初始化校准完成
//***************** DDR *********************//
    .ddr3_dq                            (ddr3_dq                   ),// DDR3 数据
    .ddr3_dqs_n                         (ddr3_dqs_n                ),// DDR3 dqs负
    .ddr3_dqs_p                         (ddr3_dqs_p                ),// DDR3 dqs正  
    .ddr3_addr                          (ddr3_addr                 ),// DDR3 地址   
    .ddr3_ba                            (ddr3_ba                   ),// DDR3 banck 选择
    .ddr3_ras_n                         (ddr3_ras_n                ),// DDR3 行选择
    .ddr3_cas_n                         (ddr3_cas_n                ),// DDR3 列选择
    .ddr3_we_n                          (ddr3_we_n                 ),// DDR3 读写选择
    .ddr3_reset_n                       (ddr3_reset_n              ),// DDR3 复位
    .ddr3_ck_p                          (ddr3_ck_p                 ),// DDR3 时钟正
    .ddr3_ck_n                          (ddr3_ck_n                 ),// DDR3 时钟负
    .ddr3_cke                           (ddr3_cke                  ),// DDR3 时钟使能
    .ddr3_cs_n                          (ddr3_cs_n                 ),// DDR3 片选
    .ddr3_dm                            (ddr3_dm                   ),// DDR3_dm
    .ddr3_odt                           (ddr3_odt                  ) // DDR3_odt
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

test_data_generator_module test_data_generator_module_inst(
    .iw_user_clk          (clk_100M             ) ,
    .iw_user_rst          (ow_100M_rst          ) ,
    .iw_user_cmd_valid    (user_cmd_valid_w     ) ,
    // 当前子模块命令输入只使用用户命令低64位，不允许本轮修改位宽或连接方式。
    .iw_user_cmd_data     (user_cmd_data_w      ) ,

    .iw_test_clk          (ow_ddr3_clk          ) ,
    .iw_test_rst          (ow_ddr3_clk_sync_rst ) ,
    .iw_test_wdata_rdy    (iw_test_wdata_rdy    ) ,
    .ow_test_wdata        (ow_test_wdata        ) ,
    .ow_test_wdata_valid  (ow_test_wdata_valid  ) ,

    .ow_test_rdata_pre_en (ow_test_rdata_pre_en ) ,
    .ow_test_rdata_valid  (ow_test_rdata_valid  ) ,
    .iw_test_rdata        (iw_test_rdata        ) ,
    .iw_test_rdata_rdy    (iw_test_rdata_rdy    ) ,
    
    .ow_test_rdata_error  (ow_test_rdata_error  )
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

wire w_vio_fft_start;
wire w_vio_tx_start;
wire w_vio_clear;
reg r_vio_tx_start_d;

always @(posedge clk_100M) begin
    if (ow_100M_rst) begin
        r_vio_tx_start_d <= 1'b0;
    end
    else begin
        r_vio_tx_start_d <= w_vio_tx_start;
    end
end

wire w_vio_tx_start_pulse; // TODO: 当前未使用，待回归验证后清理

assign w_vio_tx_start_pulse =
    w_vio_tx_start & ~r_vio_tx_start_d;
vio_fft_debug vio_fft_debug_inst (
    .clk        (clk_100M),

    .probe_out0 (w_vio_fft_start),
    .probe_out1 (w_vio_tx_start),
    .probe_out2 (w_vio_clear)
);
// ============================================================
// FFT / UART Debug ILA
// ============================================================
// ============================================================
// FFT / UART Debug ILA
// 用于检查：UART接收 → FFT输入 → FFT输出 → UART发送
// ============================================================

ila_fft_debug ila_fft_debug_inst (
    .clk    (clk_100M),

    // ---------------- UART RX ----------------
    .probe0 (uart_rx_valid_w),             // [0:0]  RX一帧完成
    .probe1 (ow_uart_rx_num),              // [6:0]  RX帧字节数，应为64

    // ---------------- FFT Input ----------------
    .probe2 (w_debug_fft_input_count),     // [12:0] 已接收总采样点数
    .probe3 (w_debug_fft_input_index),     // [11:0] FFT输入点Index

    .probe4 (ow_fft_data_tvalid),          // [0:0]  FFT输入Valid
    .probe5 (iw_fft_data_tready),          // [0:0]  FFT输入Ready
    .probe6 (ow_fft_data_tlast),           // [0:0]  第4096点拉高

    .probe7 (ow_fft_data_tdata),           // [31:0] ★ FFT实际输入数据

    // ---------------- FFT Output ----------------
    .probe8 (w_debug_fft_output_index),    // [11:0] FFT输出Index
    .probe9 (iw_fft_data_tvalid),          // [0:0]  FFT输出Valid
    .probe10(iw_fft_data_tlast),           // [0:0]  FFT输出Last
    .probe11(iw_fft_data_tdata),           // [31:0] FFT输出Real/Imag

    // ---------------- UART TX ----------------
    .probe12(w_debug_tx_frame_index),      // [5:0]  TX帧Index 0~31
    .probe13(w_fft_rd_addr),               // [11:0] FFT结果RAM读取地址
    .probe14(ow_uart_tx_done)              // [0:0]  UART发送完成
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
        dbg_ddr_wr_ready_r   <= ddr_wr_ready_w;
        dbg_ddr_wr_valid_r   <= ddr_wr_valid_w;
        dbg_ddr_wr_data_r    <= ddr_wr_data_w;
        dbg_udp_to_ddr_overflow_r   <= udp_to_ddr_overflow_w;
        dbg_udp_to_ddr_pack_count_r <= udp_to_ddr_pack_count_w;

        dbg_ddr_rd_valid_r   <= ddr_rd_valid_w;
        dbg_ddr_rd_data_r    <= ddr_rd_data_w;
        dbg_ddr_rd_ready_r   <= ddr_rd_ready_w;
        dbg_udp_tx_ready_r   <= udp_tx_ready_w;
        dbg_udp_tx_valid_r   <= udp_tx_valid_w;
        dbg_udp_tx_data_r    <= udp_tx_data_w;
        dbg_ddr_to_udp_unpack_count_r <= ddr_to_udp_unpack_count_w;
    end
end
// ---------------- RGMII RX Debug ----------------
(* MARK_DEBUG = "TRUE" *) reg [3:0] dbg_rgmii_rxd_r;
(* MARK_DEBUG = "TRUE" *) reg       dbg_rgmii_rx_ctl_r;

always @(posedge PHYA_rgmii_rxc) begin
    dbg_rgmii_rxd_r    <= PHYA_rgmii_rxd;
    dbg_rgmii_rx_ctl_r <= PHYA_rgmii_rx_ctl;
end

ila_eth_rx ila_eth_rx_inst(
    .clk    (PHYA_rgmii_rxc     ),
    .probe0 (dbg_rgmii_rx_ctl_r ),
    .probe1 (dbg_rgmii_rxd_r    )
);
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
    dbg_phy_rst_r      <= phy_rst_o;
    dbg_locked_r       <= ow_locked;

    dbg_eth_rx_valid_r <= udp_rx_valid_w;
    dbg_eth_rx_data_r  <= udp_rx_data_w;

    dbg_eth_tx_ready_r <= udp_tx_ready_w;
    dbg_eth_tx_valid_r <= udp_tx_valid_w;
    dbg_eth_tx_data_r  <= udp_tx_data_w;
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

(* MARK_DEBUG = "TRUE" *) reg         dbg_test_rdata_pre_en;

always @(posedge clk_100M) begin
    dbg_user_cmd_valid_r    <= user_cmd_valid_w;
    dbg_user_cmd_data_r     <= user_cmd_data_w;
    dbg_user_cmd_num_r      <= ow_user_cmd_num;

    dbg_uart_rx_valid_r     <= uart_rx_valid_w;
    dbg_uart_rx_data_r      <= uart_rx_data_w;
    dbg_uart_rx_num_r       <= ow_uart_rx_num;

    dbg_test_rdata_pre_en       <= ow_test_rdata_pre_en;

end
endmodule
