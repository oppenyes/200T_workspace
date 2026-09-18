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
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module KX7A200_Top(
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
wire [1:0] iw_FMC_RES   ;
wire [1:0] ow_FMC_RES   ;
wire [1:0] ow_FMC_RES_T ;
// Unix_Epoch 微秒计数器
wire [  55:0] ow_Unix_Epoch_data ;
// 解析接收到的用户命令
wire [ 511:0] ow_user_cmd_data ;
wire [   6:0] ow_user_cmd_num  ;

// 串口/网口 发送和接收数据
wire [   9:0] iw_uart_tx_num      ;
wire [4095:0] iw_uart_tx_data     ;
wire [ 511:0] ow_uart_rx_data     ;
wire [   6:0] ow_uart_rx_num      ;
wire [  63:0] ow_ETH_rx_data       ;
wire [  63:0] iw_ETH_udp_fifo_wr_data  ;
// 串口/网口 发送解析接收到的用户命令
wire [ 511:0] ow_uart_tx_cmd_data ;
wire [   6:0] ow_uart_tx_cmd_num  ;
wire [  63:0] ow_ETH_tx_cmd_data  ;

wire [ 511:0] iw_ddr3_fifo_wr_data ;
wire [ 511:0] ow_ddr3_fifo_rd_data ;

wire [  63:0] ow_test_wdata       ;
wire [  63:0] iw_test_rdata       ;

wire [  63:0] iw_smg_cmd_data     ;
wire [  23:0] iw_ws2812b_GRB      ;
wire [  63:0] iw_time_data        ;
// -------------------------------- assign ------------------------------ //
assign iw_uart_tx_en   = ow_uart_tx_cmd_data_valid ;
assign iw_uart_tx_num  = ow_uart_tx_cmd_data_valid ? 7'd8 : 7'd8 ;
assign iw_uart_tx_data = ow_uart_tx_cmd_data_valid ? ow_uart_tx_cmd_data : 1'b0 ;

assign iw_ETH_udp_fifo_wr_valid   = ow_ddr3_fifo_rd_data_rdy ;
assign iw_ETH_udp_fifo_wr_data    = ow_ddr3_fifo_rd_data     ;
assign iw_ddr3_fifo_rd_data_valid = ow_ETH_udp_fifo_wr_rdy   ;

assign iw_test_wdata_rdy     = ow_ddr3_fifo_wr_rdy ;
assign iw_ddr3_fifo_wr_valid = ow_test_wdata_valid ;
assign iw_ddr3_fifo_wr_data  = ow_test_wdata       ;

assign iw_ddr3_fifo_rd_pre_en     = ow_test_rdata_pre_en ;

//assign iw_ddr3_fifo_rd_data_valid = ow_test_rdata_valid      ;
assign iw_test_rdata              = ow_ddr3_fifo_rd_data     ;
assign iw_test_rdata_rdy          = iw_ETH_udp_fifo_wr_valid && ow_ETH_udp_fifo_wr_rdy ;

assign ow_TEST_PIN[ 0] = iw_UART_RX ;
assign ow_TEST_PIN[ 1] = ow_UART_TX ;

assign ow_TEST_PIN[ 3] = ow_ddr3_fifo_wr_rdy    ;
assign ow_TEST_PIN[ 4] = iw_ddr3_fifo_wr_valid  ;

assign ow_TEST_PIN[ 5] = iw_ddr3_fifo_rd_pre_en      ; 
assign ow_TEST_PIN[ 6] = iw_ddr3_fifo_rd_data_valid  ; 
assign ow_TEST_PIN[ 7] = ow_ddr3_fifo_rd_data_rdy    ; 

assign ow_TEST_PIN[ 8] = ow_ddr3_clk_sync_rst   ;
assign ow_TEST_PIN[ 9] = ow_init_calib_complete ;

assign ow_TEST_PIN[10] = ow_test_rdata_error ;

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

    .iw_user_cmd_valid   (ow_user_cmd_valid   ) ,
    .iw_user_cmd_data    (ow_user_cmd_data    ) ,

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

    .iw_user_cmd_valid  (ow_user_cmd_valid ) ,
    .iw_user_cmd_data   (ow_user_cmd_data  ) ,

    .ow_LED_PIN         (ow_LED_PIN        )
);

ws2812b_module#(
    .CLK_FRE      (10_000_000) ,
    .WS2812B_NUM  (2         )
)ws2812b_module_inst(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (ow_user_cmd_valid ) ,
    .iw_user_cmd_data  (ow_user_cmd_data  ) ,

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

    .iw_user_cmd_valid (ow_user_cmd_valid ) ,
    .iw_user_cmd_data  (ow_user_cmd_data  ) ,
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

    .ow_uart_rx_data_rdy (ow_uart_rx_data_rdy ) ,
    .ow_uart_rx_data     (ow_uart_rx_data     ) ,
    .ow_uart_rx_num      (ow_uart_rx_num      ) ,

    .iw_rx               (iw_UART_RX          ) ,
    .ow_tx               (ow_UART_TX          )
);

udp_drive udp_drive_inst(
    .iw_sys_clk   (clk_100M      ) ,
    .iw_sys_rst   (ow_100M_rst   ) ,

    .phy_rst_o    (phy_rst_o     ) ,
    .rgmii_rxd    (PHYA_rgmii_rxd    ) ,
    .rgmii_rx_ctl (PHYA_rgmii_rx_ctl ) ,
    .rgmii_rxc    (PHYA_rgmii_rxc    ) ,
    .rgmii_txd    (PHYA_rgmii_txd    ) ,
    .rgmii_tx_ctl (PHYA_rgmii_tx_ctl ) ,
    .rgmii_txc    (PHYA_rgmii_txc    ) ,

    .clk_15M625   (clk_15M625        ) ,
    .clk_25M      (clk_25M           ) ,
    .clk_125M     (clk_125M          ) ,
    .clk_200M     (clk_200M          ) ,
    .iw_locked    (ow_locked         ) ,
    .iw_15M625_rst(iw_15M625_rst     ) ,
    .iw_25M_rst   (iw_25M_rst        ) ,

    .ow_ETH_rx_data_rdy (ow_ETH_rx_data_rdy ) ,
    .ow_ETH_rx_data     (ow_ETH_rx_data     ) ,

    .ow_ETH_udp_fifo_wr_rdy   (ow_ETH_udp_fifo_wr_rdy   ) ,
    .iw_ETH_udp_fifo_wr_valid (iw_ETH_udp_fifo_wr_valid ) ,
    .iw_ETH_udp_fifo_wr_data  (iw_ETH_udp_fifo_wr_data  )
);

cmd_cov_module cmd_cov_module_inst(
    .iw_sys_clk                (clk_100M                  ) ,
    .iw_sys_rst                (ow_100M_rst               ) ,

    .iw_uart_rx_cmd_data_valid (ow_uart_rx_data_rdy       ) ,
    .iw_uart_rx_cmd_data       (ow_uart_rx_data           ) ,
    .iw_uart_rx_cmd_num        (ow_uart_rx_num            ) ,
    
    .iw_ETH_rx_cmd_data        (ow_ETH_rx_data            ) ,
    .iw_ETH_rx_cmd_data_valid  (ow_ETH_rx_data_rdy        ) ,

    .ow_user_cmd_valid         (ow_user_cmd_valid         ) ,
    .ow_user_cmd_data          (ow_user_cmd_data          ) ,
    .ow_user_cmd_num           (ow_user_cmd_num           ) ,

    .iw_uart_tx_rdy            (ow_uart_tx_rdy            ) ,
    .ow_uart_tx_cmd_data_valid (ow_uart_tx_cmd_data_valid ) ,
    .ow_uart_tx_cmd_data       (ow_uart_tx_cmd_data       ) ,
    .ow_uart_tx_cmd_num        (ow_uart_tx_cmd_num        ) ,
    
    .iw_ETH_udp_fifo_wr_rdy    (ow_ETH_udp_fifo_wr_rdy    ) ,
    .ow_ETH_tx_cmd_data_valid  (ow_ETH_tx_cmd_data_valid  ) ,
    .ow_ETH_tx_cmd_data        (ow_ETH_tx_cmd_data        ) 
);

// ddr3_cache_module - uart/ETH
ddr3_cache_module ddr3_cache_module_inst(
    .iw_ddr3_fifo_wr_clk        (clk_100M              ) ,
    .iw_ddr3_fifo_wr_rst        (ow_100M_rst           ) ,
    .ow_ddr3_fifo_wr_rdy        (ow_ddr3_fifo_wr_rdy   ) ,
    .iw_ddr3_fifo_wr_valid      (iw_ddr3_fifo_wr_valid ) ,
    .iw_ddr3_fifo_wr_data       (iw_ddr3_fifo_wr_data  ) , // ddr3 预读取
// tx
    .iw_ddr3_fifo_rd_clk        (clk_100M                   ) ,
    .iw_ddr3_fifo_rd_rst        (ow_100M_rst                ) ,
    .iw_ddr3_fifo_rd_pre_en     (iw_ddr3_fifo_rd_pre_en     ) ,
    .iw_ddr3_fifo_rd_data_valid (iw_ddr3_fifo_rd_data_valid ) ,
    .ow_ddr3_fifo_rd_data       (ow_ddr3_fifo_rd_data       ) , // [63:0]
    .ow_ddr3_fifo_rd_data_rdy   (ow_ddr3_fifo_rd_data_rdy   ) ,
//********** DDR MIG APP interface***********//
    .iw_clk_200M                (clk_200M    ) , // ddr3 输入时钟 Artix7 为 200MHz
    .iw_200M_rst                (ow_200M_rst ) , // 时钟复位
    .iw_ddr3_rst                (r_ddr3_rst  ) , // ddr3 输入复位 设置高有效

    .ow_ddr3_clk                (ow_ddr3_clk ) ,           // ddr3 模块返回用户时钟  
    .ow_ddr3_clk_sync_rst       (ow_ddr3_clk_sync_rst  ) ,  // ddr3 模块返回复位    
    .ow_init_calib_complete     (ow_init_calib_complete) , // ddr3 模块初始化校准完成
//***************** DDR *********************//
    .ddr3_dq      (ddr3_dq      ) , // DDR3 数据
    .ddr3_dqs_n   (ddr3_dqs_n   ) , // DDR3 dqs负
    .ddr3_dqs_p   (ddr3_dqs_p   ) , // DDR3 dqs正  
    .ddr3_addr    (ddr3_addr    ) , // DDR3 地址   
    .ddr3_ba      (ddr3_ba      ) , // DDR3 banck 选择
    .ddr3_ras_n   (ddr3_ras_n   ) , // DDR3 行选择
    .ddr3_cas_n   (ddr3_cas_n   ) , // DDR3 列选择
    .ddr3_we_n    (ddr3_we_n    ) , // DDR3 读写选择
    .ddr3_reset_n (ddr3_reset_n ) , // DDR3 复位
    .ddr3_ck_p    (ddr3_ck_p    ) , // DDR3 时钟正
    .ddr3_ck_n    (ddr3_ck_n    ) , // DDR3 时钟负
    .ddr3_cke     (ddr3_cke     ) , // DDR3 时钟使能
    .ddr3_cs_n    (ddr3_cs_n    ) , // DDR3 片选
    .ddr3_dm      (ddr3_dm      ) , // DDR3_dm
    .ddr3_odt     (ddr3_odt     )   // DDR3_odt
);

eeprom_module#(
    .eeprom_memory     (eeprom_memory     )
)eeprom_module_inst_0(
    .iw_sys_clk        (clk_100M          ) ,
    .iw_sys_rst        (ow_100M_rst       ) ,

    .iw_user_cmd_valid (ow_user_cmd_valid ) ,
    .iw_user_cmd_data  (ow_user_cmd_data  ) ,
    
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

    .iw_user_cmd_valid (ow_user_cmd_valid ) ,
    .iw_user_cmd_data  (ow_user_cmd_data  ) ,
    
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
    .iw_user_cmd_valid    (ow_user_cmd_valid    ) ,
    .iw_user_cmd_data     (ow_user_cmd_data     ) ,

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

vio_FMC vio_FMC_inst (
    .clk        (clk_100M       ) , // input wire clk
    .probe_in0  (iw_FMC_PRSNT   ) , // input wire [0 : 0] probe_in0
    .probe_in1  (iw_FMC_PG_M2C  ) , // input wire [0 : 0] probe_in1
    .probe_in2  (iw_FMC_PG_C2M  ) , // input wire [0 : 0] probe_in2
    .probe_in3  (iw_FMC_RES     ) , // input wire [1 : 0] probe_in3
    
    .probe_out0 (ow_FMC_PRSNT_T  ) , // output wire [0 : 0] probe_out0
    .probe_out1 (ow_FMC_PRSNT    ) , // output wire [0 : 0] probe_out1
    .probe_out2 (ow_FMC_PG_M2C_T ) , // output wire [0 : 0] probe_out2
    .probe_out3 (ow_FMC_PG_M2C   ) , // output wire [0 : 0] probe_out3
    .probe_out4 (ow_FMC_PG_C2M_T ) , // output wire [0 : 0] probe_out4
    .probe_out5 (ow_FMC_PG_C2M   ) , // output wire [0 : 0] probe_out5
    .probe_out6 (ow_FMC_RES_T    ) , // output wire [1 : 0] probe_out6
    .probe_out7 (ow_FMC_RES      )   // output wire [1 : 0] probe_out7
);

endmodule