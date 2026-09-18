// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:35 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_bits_cov_sim_netlist.v
// Design      : fifo_bits_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_bits_cov,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 96192)
`pragma protect data_block
n9juXVB9d2g0VeNKSoyyLw9fGaqqiA2yRU9IF4rDdjjnFQ1U+59h8fcL3mj9934ZGA1rBBQ2iOS5
qsa7GtPmL5Tj5Bpd3otBWW5JYA3ltALRcFuFAEdKJ2wF2S5iNFo6LBa5lGqyLlACTfXthbiSJ6p7
Enq1MfIh1DE/JOPbd5OjXEsEMtZ+HFGug1nqOyEP1vDDdIH9SSoeY0x457ulCerNxrkDSBamQJF/
dOm09lHqrzQNlsbckDb8v+Wvji6PAUO+GLmiAVL4wLOezcpr/5xmsUducLx88YEwM4Olx0jWF0ob
IySXDBkUwcFWppaB4MaGy6p50IJR5ELKY1fceJ8DKLiaMuW77+ivaP8Bo9IkX4fdCbNS2FWArI2o
eqqtEYSQupoFxVbvclOtVQrG7YPyrQRelUSeRoSp5dyjTif4dF/OP2Yj+BE7w58GhX0wUn1nwzUr
ITHbG0T0D9zBwoptCFTDws3pUZbkBMNvh+6ZlE2D4Ghf+EsblMXHbxnqjC9FRDI4O+KA5pCB5ybW
Ttje7RXOK+1ahc6I59UnuuK97sBNWjzt4erQMX8dUnHxi9f3r5KD81zTAqbUdTG8zMFot53S3F7c
CQQgd1WIZXWSpOPy0oJfxcDYbKn0weJSuKpZUz3BZIdpUePvSUlRhhA5aXZqzR0n2sfOPerVRhJu
+ATny431kRnVGDp2pCIO+IdlehhpMvy+RFV3Lv5fJC30keAdI3FRvj6Bc6CYbDNys2j2AGO8Ukai
MDn1hoeqAoyqUbfL0Xj2DGxAjPLzeDrJKojrcP/xXB5legsLzdoZxQTuGWSFG7GVcRtbms16NlAI
OBl3JZqoDCF9kHLPwVZJmtjK3IWzMuHrGoXz13n+bjrr/aEdARGAZcDE6ORNV79rQKSQFROujHVa
erigGthE6aobMg1yF2idaH4VSky9eQLZmXHQ7CJbphHteByKtC1CVwD/QA6fyiWAqAjVVjYNpWCC
G7pwaxl8HnIp21dk7AZZgg3A1L3oQDGFMVpnHRiV+udfnRbLcQNZe3UkXrOggmU1Qi8yi41HXc2Q
DShZjNTKGr99yWKcmHM6dqi8042VqjpN2cE4h/TncP253HawcQcZoPcq1oBkYw2RHV4m8NNMghuv
IWXjOOsxds0czS1vk2Fwb+lru3BGoKhp3Enjhq/dWtWUmE4qPrEpozGwvXHmt/pt5eHq8LO5jMAG
JlMRz0y9F/cFTT+/vfP3GsgUrWYJEQOE36gBaDl4xvdgOFno6YigYFeQjy1LOcs24sXb6XFzCiFG
N1CmTAtuyPLFoF6gpDkDBf3ZjuXcVuAg6pR/TZL2vTR/hoWi9fqZSosFM8QsgEYAVK0gTCX9/eSM
K6IeoXA/JRcjsrQir00K4PQxJkZ4agUggaCUZXOzTyWWsX1GSlrPmvLvQlEBZAuJV+FVaaRXhGnG
Dy4gdM+EJfReDe88DDHAw66rE9973GPfIZENmWtXIBGpp6m2cbtY5jJcJmEORx3gCqj/gtxa5Du4
xSH/wsQnaDmnKcVXNQORPU7YgaYdPZpt18A6y7pJmvWEBDTHhtOeFt7+A/17siAFA248F0JgSCaX
i+Rd5tdqBj1UFcjqiZAT+ykIN4tJhb5iT9bHFHKZI167PD14S2naFxoVFwT7WHN77/xP160ZtW44
76Xj6WXrhKSEh+5jH8npYIWGvGaVjbh+IRvfgsGgCpz5ZcX56ri4smHHgHWU0rnnDkDyVDJI7kql
iaA/AwTW8LHSNorWiIQxefpWV/dY0+84qUVONUyjc3VEqWsfiinmxn//4jdaK/Xyp4nJ5CO3mKx2
b4E0tt9B9kuhD0LeZLlk9A5OSzLvc671SASnd6MRDvaJ/pMMDPagEpwWtClaPNhslGW6+VIK2Y2M
6ap9EZNEx3xWgTaQAxDlzNVuaA9Rrq7TqKMSm+QjO79sugkL0H2AhC/BvLYZLRt6o0ZZPgGbpeoo
dtroKBpgr8RZWtjCXrVEMmQ9YA+oy3y3g2q9UtjZ5rpdVqxS68KbNf5saSCEhxPdcynqOTLEG1wK
r6pu78wnVktIFiRkvAXVUBFNOMjJk4oRvV6heA4yuO3ogwvpsIr0LPeJRKVl9H2za8wY7fS7kdiZ
QTs/vyLnxF6BCW7QCozPBd8oBlLvk/zHJSkaUe5ympDDPldkVvX5+6fqFs0syyRwLLyUr8dJhW+F
SvNznCFVVn/dVgI7BS+u0qW/oS8j/q6sITI7uimWd7kzFSbd5v5rm1+ok88PtvpjW2OJskPUnSpu
J1BZIqz6JjJgAZiKF2it9wCQhxrKj8+JpnHIyn2igWLnnEYFnDpzsxZP+fix3NC+19oWjcmLzMgF
mtzDeldPVUZvzJ8amjaKF+TbT4pWIEn5qxRmz2ShWtePuQmVREBitDXHPBCOZcqM8EkWvudmwKLP
hBP9ebm0QC3RBma7CxcTpjcQWlR03yFCsJcxYH+DSZOQ6YETUWiLYmUC7g/48lTeypoAQydJDHF2
zr+B7vcTwiSBspTSTThpGaYK6bmi8poFYu0qGpsjeLmnggU2WiA1wcBg7Jmpx7nyaMK2eqONmAYx
7+X9y7LMi2Hpul3cEqrAnD2JDgShVS4qQNfB85BzXlEFL1djZH4Gf65zaNBPleV1zmgwLwwVbeFI
vs4NVWSaCnNm5VpM8EVjyLWKS3xTeJ6NwcUdyTAYX4MHx9nav32hGvUU5lMloM1vUIZPUVz7+TK6
5uA2u/vcATu+9anfFvPfNkNVamGvJEXw+qyc6w0Hz0q4iIU70vE4392QD7gBUXpGIGaT6hM9U2YQ
rgH0RdXaL13guHy8bkTrymPtPk4av2NLFXIPoBLQASz6EiXcuyMeEZaRTKVZxKR/kUG8hh53Bz+t
J5lBHChCrNg5O8tSAIHL/auAqDsDelE29Lb5o8W2QTPE1mjrgFXmJWOyefFJJwHWerO9gQIShKNC
bKVKR4VwzVw0SYmdi8VvQAs1dl58xYLahY+iyxQyrWxBCKPTtEVvdET25WXov7Y4W/zUBtuugGyQ
Iy/h4wHSYYtKcVGWmiBzcnEMuF0ZyXv68yRobq+vx28rD90OOdVPEH7v1HycbRBUY2ixBVAjB0uA
uwSHgeRK9EZ5krniF3ixCifqxSERb2Zf/BJB0vRZ5g72jzKjn2hNYrf9xBU7J95oLywHzwvTR3/y
TYSEx3RNJ3r+y0blLSAMxCirrlKsxkMZVa7KbKsqCpRmPN+SuLMhA2sxq/OimqK3DorD9xGu52z9
ZyhM7ObLBqQ9ncFJJZDk+s9Nfpi8iagwI7cSgNe2PVP3BUpwtrQvzT3EcGyUeArUT/90ixaOQfc4
S6znDkazRtgHQRqBNanLBKt0Lu24LaLpT5WMzcXfjfVCUEYGOZo6ibgfVzgO2V8YCSAUd2JcGwH+
3NIPMpCwGi3ZiYBeAhgJ33DmmwJnDhd+1mwXTfP+mDI5jtpHLuyjR4mBIEPY/aeDNRUzzSZda3sx
Dw6ksWVPkbBccR7ROQkcLPNu0XhzmGSIBmrGoAEWfN/KjL/Nr+ch6hhVVe6kv0qusCShQ2Ayb71s
Dyn+r7BupSTU0jftoM8x32V6GHvk9iTl6JAq2H/XQQg1CsjtJjUiuShHOCGRKP/4oNJeQnx10T8U
4Ujd3/lAFfMUpl5tZ66BNuhaxkCLm8/Ke2lBs0yNwv/0XQ2Ida2wip06hlL03EXBjqachq+4UKH3
62+hxr/PYTWJXBVycX/hLfjSvk+RtpQUCGQ7eD5nsE2Ggy7gRcUro5Ps3HkkDklkk9CF8ZmZXoXS
Kv0R2mgC5c2R76P9l1xM7cRWKnyoBwX6GX578lFV+9EeOjSgD5vZETBLNWkuqQ+C7W2/mwes77RL
FlcTj4my7QXcRtntM4bFi3YuV9WyqIfj3tNS8UaGtIcOw4zrMb3ZdgpDFEoOSyQsYiSjxeoapF3B
GoDvyR6OcHmlt1Blofa984Mmy7esSPDTRmpIoKJIugD57hQ6B2HllWNJ6O5QuHDem+AH4SkUcH9O
CrkxzLkWZ5Cz0TISggTYVUvWhS8i/WIw1HZMtIedu7sDzsL67h7YsQeTDYlK+h27Weh8Spuu10UF
EwhcDHYLamNd2H0adPYA4JhMQW/WOc83/ur7zCH6HgAoXnpFB0Khq19IffEwVqICuAGqkXgvBmWV
OWOFP+4n83ne8R/3FLqHkrLhq6FAqANQff1FDQG45mhZca1aJunP2olmfM4nV8/PeOeMzDrT9OJL
NkKEEpoHYu3yJ6xMdtQ5TocdgJz5Ic213xsMDPD6xcrw0USM2LTqFTvOQhkqRzCZKmlkp7Vz+ujo
lvng5hKsfVRzVYnY57F+u1188slLPsJ1Et+NRQrANJuVXP44s7J9F82k4GwXeYVGbLQoez2A1llz
dsjjGWl+lHf4qeUfNkEq7Eja/avfjFCxAR8w3fiu2Uk9OvYbsMCwU4EfkrytBD6vridwZ/6Zghac
RCtRJhqIllPqUPedGX92U5icrh/Ok35MgD+UBXhoLFxqw6jbBUZgkpcAiV0Ags/VX+Jstoa7gE0z
b23GqI7IcC5nu1RYN/iQu6NlzNhuo+YZQYzHAKjfDjdNWuKN23KzXq+XsmhgBqDfvuv1oVwar0cc
GZFNcnm1GrbQRc1PX4HPe5C59210fPDX35J6lReT6H6/gqzKteCjTwSLPBVpMzu8pn4n9KVFbQPS
9l1pcgpKZ7mEbR3n7dwyb1Fsgfi3omhDd3HuoCK25aDjDlLB3k7uFCCfyyCS6b5L1wTLqBrLYk7b
VMdiWnBMcQ+vPOkF057UXDiNzH+TJc+A70K2T+KgGh8+vyKIb3eFMXL2guQaSB9asW5rXLJVRS6I
2uYx6BeK6OwJf0OQdmDgehCK7bCjpuvAKYLk6VxBI5MjA8gI/pa10oKMs+eo+7dTjfJ5EgfHgXrc
9Pe99nTGv6gL65YInVOAXhXvXtdzmjp6f6tjPBrL3BqPq7REkGDicKWuO/51ygg+EhhIXqooYSAL
oqDpg9O0tkvGIKepjFMREAFFW/RWxxY4HknMo+eBTOa9QsX+WxHLC9yv0C9XEB1zKYNYSVbFKKBU
5xqZQ/YsDl3JLji1dkuZeH4FjtNtFlXf8Q3n5N8ukQbthjp2lSoiv1l84Iz4ge+2qcIpcpa2FoCK
YOszNoXOuBAfG1W+XIgYOtY4B4Fib1SLWlHgmCg5WBKkGjI1VoPAtGfVXZFjGRpmy4xAR9rQiF5f
vsBHHd4BCVoCDKf4A6lnrZvTFeq4MK5djHeZE9pCLEJOLMQjTBPyytLeTakRqTXFfXJftvuqJaIS
6iG01Xgd3gCm8ZHguKAimdWTZQTZamaz97+cgBSN5rCcguWF1qDAF7NT0mIrOYhJ6nsZkWunfG1S
XB78+7MIaskEtUb0ZMWis1A5VByCJaIcbbEqI/YwGTRIFwt5qLmtzm+CUQ9CzLtS/SYxGIUFmn3o
i64NNDobPnPdcwMRFSPIrMUdpusVNeawQC1TYAf0+MDnnoDrdAj93dPD6Gs2/aJjTe5J59IicfM1
D2dn2Y5+5MaNuWahp+TLlUduDKJ7XHgT/CPezYg+aSEAfsvHmO3lN39ji24mGhloBtBLv0y9TkAQ
N5SMQpfYqk1ccrO5IPpq9HEiUb1WorDXzRKFYGzq4eHT7DxFf/IhM6r7sQjke9z9b12Cb2kFUJJb
rIPFtdg5k64i9G4PRiizWJxlzC1fCmnCzJ7BziEqI30iDPH7Is8Y9dq4OGPRKZNisUPX90fpk3Dz
Fv9vVreYN5BPgcRIceNcRpEk3eKPojQ4eSQgcLTPvPw56hqeVT9khkkWuXn0/PeyZ0/SLW20dqbk
zJj6oFaKBqwsVxipDKsDk7zJpMIxfW/9jh3k/i+rnPRSgJw3wCNnZZQt+Va8srQDCwSLzUQPPkIK
sapDhLWWfYGW62sTI/t6efiJVXmpndttkRO73hr34OnTm1oDzqUTkX0tkkHof/XeBf/YYUwgl+yA
29oBzFOZmGU63MUx4mxMOxLFEV7NFz+Jm6K76vEtFkXFCzzLQG1mImL8aH1QuH+5tV+OSJHgHEa0
PWrQMJG0J/WkmWUbY/Ok6TyNwkJI64tR2L+s4zhZr7O8+LDuLYmmIjIhCsHeGL+b/YW12Or8+kfl
KcO8WK++wgsZhI5UG4aBZbpKGK14sq0ftDtuSeF7R97Nwpiq6gtIYrZmcrxUx2dZaN9+DOlsnl9N
6PFg557D2ggO0EfcQ+W/UF5GUsxI3uC9XEfP+0w14w9gVEn+eNmxzFxR6px8MYB/aBcRMBCha46f
BeBpLeryqXZ9B83i8d2O6rHdFPgWX1q42INvkRtjpX3BvPf0Erfhe8Aqv8D4IZD1wt/Hj4lfWFIR
9tugmTLzyUUusukCUBFa16gE3AQThxCe/NaZmghMpOqyirnVLbkPtGt3fiC/yMLO7eA6tz9+bjMD
vl6uBas6kWyXo+mnaHyDS5ZMuJffIx0yByAHFI2HRT1gLtbGADuoQH7q4piUOvqDtdSrj8nv33uX
MyKpnTvAfu8HOrgD1XdIzqu+aQLL7HcmRdLLaHTf+jODv+868msEhNBil3O+1vGUljsqxnUPqqnw
aIGprJPvhqU+W9V8k1hI8xumhd1kp9kmcrxkOgkXWnx8I5NTNAfG2Ujy6Jh0yb/NEe0WeLEvmJ+Y
O6SROmBd3Vgt2KiDLhY/V80//AnbOQrQucy1nlfWiB3Emk3KFTv438wC+KdWanXVkiyXhNFDX+Hn
lUBNZmjntmpJhMKNiHuwjwmVfeSYee3RDLUBOPKJl6ObIyD5Q+JUEOLCUNkOZx3KK2bL8hec5Y+U
qGicKHBnci/3lIcTwyuDAy0Kjn9VkAbHtOqNUjU5+hjtOJ6lkTsKL3uD6uczVe72pGawqd/BeRYr
aCZoZlnCgylvnqculZwww8YqjN/JE11AuNtdR87ZpOWQWsI25aDXr3vmEFHi1bXCNCSNoEA4JLUb
ek/PYrz+9Ub+8v82dXcU/LzN8ISfSN3H2idNyW8IjJMke79681aEmsJZg7NKYOb02e08+ixW6Ret
VcypPPRjlflnPCpk6lrnkqsg1iacfThaGPLc1hsUslMYFf26bcFDX94YQ1Sx8UMcE4mEfReBWjtY
qgtAES7cyCBSv7kQ7hWD/6K3LQ9fEfoxP9ME8C2icvBbkoP2XSvsMHMeU3nOc5T4NQ8qY+4SFC3d
N9N3WsQny5VSCQaNFUehH598ZusEEDqzPTZ3zhchfCqNYUwG/k/DZSchodqb1KxGWYSOFO5HG36X
T/Ju5PLbjMDJBK3eU5ftAXpB1cL3ZFsvEQfyQKYGQe7+xxt2yPjtFxxW5YdIxsC98i3BVU4BM1Y/
I2Jd+T3CGuTOnnN33LQHSBSv/DT8y/Olqr0ZVCPKlKRnLGcDPpcikeIiXDkA5qn3mt25+TLHZoNA
AeqlCiQ03PG9CvcHulBtz/GnhnGPf4pKatlv95ZQfpw+cmjXVxlbhGGwMKLPozS0dV5WC9F/eV1I
BLzmv/izhjJgBXa3xKRTfSW+xHicOsBU9T8RI1kbye6Nr9y9UXN8a+lkIhMWDfXnVeoWnRMnGfLA
PB1ZnYJtEU3UWN5JNLQL+BOydzilIy+OigoDug0Yx97B7XggbzRLrQy+cTnelyYs6DZpkccAzRUV
22uBL+6/DZtSuxdfcIjNzEnYkamR057+Z9iaepnK+REWrqXz5UF772bHmcrzCmtWleCPuelOtvFY
Vts05BEQpR7YoGvrVQDpdHJggh2O9YFz0190esXOJz6rjvwf7MXSUo8ElYbQjO/CiS1Y5aYfZpv9
9vrLAWp3hbx0qvSojAS1X+rghwyvKms2+1zXv/bWJb+/litgAN/b/GwbHEJbON8PNQlIV78TGgWi
fEkAX+8WDysOf+L7ad+O7szZCV7qq3aaH0FVqein4c5B9UiiYuLmmuKDuI99W10p/UFqBgbmGUtJ
Ud3Uh+PlpxPL0FOP4v5jpTM5J4pFUe5lSDJ6DexLlaB0IOfzTLW4yKhZndzz4Mz9812PzuIJmL6D
1bGTsLPKi2TpqJ40d0wntCb2T6m+ldZX17Kdd8fIrxVXIQdgt87MF206tlZncv3Fy+swJINQc9pA
ltyDigI7goX6IWztk1+RM0PhdiZbOYt4laddpmarT2BHWvGTCvlhqfH5pE1APpQZm7w0Mag7RfWu
yX7ZbwQnM2MIDQ1Z2HyUuynzpSUbpJuvopJ8mkcc2SqKYQFYHXHglOVBsFF9KqRQXv/ECs7gw6qe
f8DaPjPT8Hmm2tDB/cbySOKzK3cz5Ma7Hgtq2cCIqg6drI2RAPHnbQq1yYfmo/MrlCTUDxIH/8bf
UJPiUsF97yv57llFGiU73BdEn6iDnofZNqHB99s5s7Y7H2cFRCe5V8ojpxFyzJBq6UT3vynBFCGG
SdI9LqvPP7HtPBCX9mUxli+xDoHoyhh5MV2/yNutFWbePc9dND0R3w/RtuwgplkXkZAptEte06gN
sqnAfChVfLnOpeSY+0MYGXqiBisLsnI9j9BN99rZ/mljNGUnnFIOgEs3sbibf7RNAm4XSRExQxr4
RTiiTWqB1+WX1IYDKZysTikFAPOyHo9ptBbEEeqRtfFqqm8K9imqbxqcIQ47Er0yyLZreWs43H59
NmYN54XTprOOzawDXR8gZUsLHi1tvjBt2IcKWBbjkfvTtTspUeSjUUm2E30Dj0hSf6AVm6X2fL6z
+IUI9EJUcMe/Pv+S7yzL61vL4b9sXTcbIDeVqnPHHrIauDa4mLWJ3kfrqTaahuvzxxt5AklvlwEg
wUVTSwW77kqCRzxnR1mHNedoGHJn5AwOp7HsX0+Lbtxt3Ig8E0vmWlL46YxzpRGd17QPhcHaEAnA
MC8K4P2JafcbMBGUHSJvCz3TeZysIh7HE+tb59NylLRnO3ugTDjSzic1v/O0rfH4dJAYGNgje5K8
iY13JdoBZtNCEu4Rhada0PSzcEPrBiVgvnMnIbdUKkxwMourYD5mXrHNXciQ5dr+F6Rp07XTiVg4
B3xddxgNSaLW4/Rz4TRBuFk0qF5/JT60nmp/omG6c5CBM3IgylNZOwWz2ZFRwxvROHW3cQOsBhVP
gVJn1ijsNDYwWH2iDHlzld8t52JvpnoFEcERJ2OHCNr0/MBLUJKg94rKLyAElzXjACD5EY9R7pTt
kwg0Si7xa8KcuEpk5FjHh4gmomWU5WgIIfDGi5d+6+1111DgENUecSN+gLciujM0qkvaMmsyLPeH
sbssOTkIDAKtdjMaQ6sA+aB48tSW92bicWegHs0/YUoRCbdyjwEjVEqkDHwRJYe68+1tA5vem9vk
Jliq49j/d7XpiKnyjLTSK9wFrYzf6EkGVZuXdVHUYYizeNqR39YpcN047xmRQ9vaaeEDxu9K1N61
oDzUSsNPFCuNtDYg+h+fsIs+lptnSoNodwaTTtSam3+i7ohvR2dbps+qaroHspL5AQP3u4e73oKU
HuFXU7t42sW0GhLPvY3wb64dhs7UsYQ2iex0uzekAb2/IAa9cH4bH6ePtlRNuYFX1EbG4iaL+qR6
h5zVad8XEhiprMSUFZc55DoIK45Tmuw0DTkECjonhvND4vJHNNp0hXPoSNw978ANHXBQ3jHIf7Tp
NIb8Vr/L/CwyivhvjYkiv4KTXtmbL5YqErPvKYIt8jv/CxcyZ4j5lskxOHGThd/SMLsFu3AHjFvp
33JX003V/FJRQlBA8GKwX4tLYOt3/JBrsb5Q+1GLEHESIXgvF3R6puAQCXYNiju5OshiYINiynvi
T3ynWeFRnQ1hj2JKnqYQvLsxccz2u0nibxyB67PHHrQeOVLs8vHs5d2vDbgUiY8IbHhZ75u7k1HR
8kSa84Dp4c5H1wyhWJR7yBiA0ZAgsy1hcrBrY2JOGyawiqQEL+SnWZgLvHGax64moQf4APLzAbXi
g6q7Mz9UmdFkwxInNwgeNbbEczQ3deRcBARahWT8rGbZY2D0jp1PSA3q7aXolX5ZWkTckGY/1Bgx
HKBVVPWsoyh91XnKv7cAjc+YB3uWtLnBML6j5QpIJPHkd0NeWA194MTpRgEf6OszEyEwhpigit0O
tTmJfjOPHWZANM01d/4ECSp+reRLoN7PKg6BUlg+gl4DDv26eBpFdhF2slIsSYK7PCUpHh+gllti
KNcjYjf2NZLDsElAfMZp15uIWhAbsNTPJqykxlFD0ynLOGPtlDUy155bojKmAoD2zKYmf/qlBUpR
u9HTBnvkA2KDjmNi5YTJVFRTZh8Z+MWRxcdAi6ktMS4WFIw9HtcizdjEHqdqDGU3mJhSJw5Gnj6O
HK56QVw6NfJQQqgyOIHbZS2mluWnLq2YSJbwlDkKXuynCtSFj94mcL3/uROoeFrq8nXXDNO0Gfc+
p7d6SkX4WdsBpShz2KUACXt/bWSsiC1pqTZ4YLkFNZf1MHIqJodGg02pIgDKo+5iRMmvugpitLhW
zV7SFrqNskrfaaARFKY0jIOaMSyHB0tIuYtEXSNNUSUqXd9eALiD2j2dAA3d2mYVURjqo4Czp7lj
EaO4CTfAz6HMD7sNH9ftLYcrjgv1VbDQ2F4AcAB8zxQwJFTVat5EDYO0oVXxMoPfWtotqZtdKif/
T5M7yaAsL1rOEAfzrJjfB8UtZrsdyaJFr4nNhPIMQvLyu5OHz0slGe3Dahj84bApl9ukBeqnJ1BD
tfgODwHYcO7udtDSIA4DfG654d+SJLxuLCxAVb58qG2ZIzt/utiQ18UwSJi0JcAi7qow0XcseGeL
o1TfNa6pxcO8YKWnvtppqkxLQKmVav1Nzv5JUPVRU/Pua59yfsAuEGMPJZFoz4SlX3FuUSIIXMOv
NovcZShRWb/ikLVURfiFXQPq2KukzF49ent1Wx4dtaXTVoje5rdzayxyCoSf75PpTTJ9A8a0KLlQ
P+92pjPqrGKyOPRnK44v32oycXK0bjOEksF5U8N0I54bEfrASyuTdU2VZJ2NZG2PaKTsjuT6C7XP
Ae2VcAZc6bbrcbBYLvbLgGpqnLt0oc7ud67kOi/6QKavzybuIWK8Oh1yDEqycoti00AKIwyHjfgz
zl4iEm7WOzdI4ugw9GEvRGYkOUP6rqETrLaQLS1Y4z9Rh8ToDo6T5ykiyfh/L8ejjp6FIzUsUVKh
e/diTdPWqjmAKk6O0+kd+a2QodOuO+SNoOfvWjCR8B3KfOCzyuKyXUT+ijh3+UWZNMfc2X5ygH2W
B8J2t4TyivKtsoj5AcqcMb1uVVvqe0TENhHJ/i+R/UxLUJ230TSa11hldhgUU8SsB4Ex1OVbeSFI
vWIFIv5bQy4E6G2CEOURzOp6bYav1BnK9Hlj2zdBgSFTB0rXJVfJH7oqE52Q6l3HA65LAxwz2w/B
zALioveLTdvZu8N1WZV+jaefmPlTw9MKhb3LVt59LICOc8rEc1RBY03mgITH412sUOwK/nYUFMPQ
Ba23z2woXFRWntXV/yDR4jTr/PLsvLZivl2UEpOnPifSrPsxWLWY7u6tiNgvlCUUqhpHbAJ8bzzg
YivENNqmXE9Ssnl4RzTncxJi6hRY8Z2iJ/S4HWAueDXH2Du9UmAJ2WGo3fdmUmW8HlNJsPgSxikF
384gmVD3JFLN+i5CfYz21oBbGsMvJjZEJJlelKfIFm/pZG6Jcn4Qwfhb67y9pg5VT0qL9hBfQmsN
GYydUN1T/HXyybH+zOv1t+GVPXsWS/aMDEKrx8PyGAjUHFZ1TrJgbiGG+HpDYz0gy6qSvVm4LyG0
gzOFVU2zfOqc68HpUAsYS27VNTeG+d5bF1LmjTWlxSt9hEXBTIaSAuoNnklQLp/yn0CaZiJ1uy1H
jGjYLlO/C6c35Cm9vg9QoEA3ppmyN/nb350JLICaPT8CnNSNXkpL8ven6D+1cjMPLZvjY9V2xTIT
UG2w30kAse90ZZ9rTCHycP+zpmyU8flXUlQs9Rp/0tdbzVtG6SgdZmTeSsaTQugwOUnGODEnwwMd
s7P5bFSMQLoac9ZCeprLIx4nEgIy0RNIwABdbZkLLDwL5WMYcBAgrQBH7CegqhV5uY5g3nPxtNcy
KZ3r1sDABz7TB0DM8tBfvRhJSb5sJuCWMcUj6xgiaYbHKFojnadKswYmXwyFtjF14HIjPLYdmzii
4cSIzt6b5dVqLm/vwXOl2puHTMdn2cahr97ykdMIMNkxLJH7EDl6CbgDBuP4nUOprKi99Jez1ARN
tPtvbDReiSHghSeIOyV9fx79mNRhe435RO4nd8H+bg4I5gY55I2SBZ4c7JUfPwrj3IWgk31wibiv
CTT1sN7HxPGAy0HJWyPk1C24y2G0n9Vz3zy/1FUoQP7zCtNgGH87YS0XZarbA3RVas8ZGi43R8sl
GQ6ZPNuc4yQgAEqyrY7aRSXtHEPWOceQmfilSQAQ/maJZdmyfs2RodOxKgmKp5ovjcN5hDm9+fdo
rs0YdUj7xwlu/mjsDmoug82GTFVyod5lLpdfa9TL4EJ+MBh+hWUhSpO3Rm7FKHBmsA+tkq/A8tCd
s6Usneap+zXu4zrzumGAR9bzlnvW1kq1w4WEQQat+0EKsZHNLxGTzKsbKT8By9e9qTETAxP9hSpY
8Jv8a68PzGTJOxnsZkRNRkYAFvw5Qd2Y+pUnzGUqfw38ljjcFGJ58WQ1O6tZTQQAo2rArxHgWe67
2FBq/xcGG9FSFREJ8vFSSsJyb7JPxXZYrUym3c6VMYYftTefWyECopzMzneYkvdf8bq25j/KCCQE
gc3qtKqDo3w4LClm4HQID0SscKFQYTk8BonVlnMmybMsP1Stp0QoJRPnv4ZM5Muv/PSsKd+s45Qr
l5m02x3fEI7iDfpu/41UGwoc7R8bXEdw/XLDdpQs1+EYJivdcQiQc6Yr5sVd0Y5s0qrmWA18b7Iz
pVcvX5KerPUY9W1WYIEBqzvTl3JROojaF1B4foc5AWoM8JLDlSKAnjcmulSYt8JzfTROyWOYATbT
L+lRXOBBFGSmuS+tXlgVWp2B8QQzlAkrbAkaAPDfWywtG52RmUqMbbi8oUgwvc6NSfZ5EPKp2YBr
UP9wRfCBgPGaUG1ZPH3txJTGiEBhkdwGT2OEKeRpDwEgWaDY8JadK6WQQDpNEa4kKXGCjrke1wvL
+qOinuYoRCcJtqPsDLduzv3hO4sOe4z0q5dNRuqvh8jmoLw7V+sDHQp7HwFK6I6nLq1z9s/XyS90
6W4Xx/fntZX1YbE/Da1lFT9Arl1+8lYGqhR9sAX7spZO+xoqwzMxX5vAPjwRuGECK7Mu+Tv/cYpg
/dC6LOP3WIBddbktunAwJgqyG40qFLeUI0FI4zVl9+WrIiyjS5cE0UCQkNFpVRZwEAX6zyLCuR8N
zPusYu5hn00YVl4YfAvpU2wfQYs137OlfbznDEUJaynoUk4sj+u1lZh/9j1bU9KcVmXuruQqazUs
YwtTe9tnTCcOwG/V4oJMmXd6RvcLdg4ss5U9RwnxNA6jnRa4K3mvE2CgJ01zK02O9JX+dbVD3Hv6
MndkMNNNSQ62Dl6jJ1tuKEx8PBDAE4xOPUvPVRpQrhyeW/V6b4061sj2sPpPHPQ86vtRnirbnXhm
WnGCdldz3uuhLjOc4e3Md986eHkZHes73OYdJ2lAUIdHW0M53M4qmEDmwebGku16fr2rBQSOFsgY
hHU1oQ34TZBEJFg2E9vuY2w16pR3oftBXCkvxR+sN8BlE5vgtwr6bgRPRES4xWFIGScRyciGG5lo
nr3XzP4g2xTcBt2RDx8oFROXoRbKupZbygwrnyhqM69yAlQeVLzt6WYt1JpqKtbfBXE1iM9mEP3Q
j/Iafs46zma0Wr0lLHPlC7UiQURnFdqCXX38+QHHluXBciD6pWNGk4Sjo41+qUgp/sOjuL3toxQh
ASiXiuxBjNdGH4lPi7zmipf69iSwraMln8l3qBGm5Kchmm187pIFazOjONf1ONim0lcmGsz3ARcr
QWMBOdbcbu6LODDm6+rNkoLcMrYo8uJMnCifldp32PTh+CPPTz9ljDCxNRKHwY3v/Y0HHMapkilY
jpCmPyx+9NuL3qH62NlRv4l8JAIanBoIBbHym+dIMO6ikelePS1t3Ni5jbGbIo1Mt437xUBF/G28
AZ7XudvBCZPBlJikoNcWF3mzVjyrd3dBokD3U6Qs2Pl+5Ouc0yxBHKJR/CIz5xAQtPPdLAU4fSwQ
/Sr2VE+BTHUxoeA99wFAY0HT1T7HLIf+3D5jaHKtN/jZE3Xe4OFh8eS9InaUcNZgsdLC/HLj2ClY
AFb7D6BqMdER/o1Y7FNRe/AlWUc0zu+0h+X+FfScybfElA3sCWWBItAAjWO0e/JdHEfXYapXlnbJ
ovPG7fSIb4bBcaLPG9UwHS+HCLyiGWFe0RkNb2Gsx/QBrt58BapBBVy8q9EDmkcDPCeT50JOdjxk
1SYFlh/MUwkr+INWlWOt+YNpVMSrYuBgDJ4bfsM/PrR38mrE1YmRvJJ+GWidXTr7SQOTaviKmOK8
65UIzVezh7zgyPsq0riHqk4MrK+zmQhEQvmNFO2V4/YDjRccq8sKGM0hCOCZEKLN7c4l7X58nnLn
UpGQxOxlbrglfy1llfWly2MjHFaaGMrEZOkSbUkmNZpGntxJTBpaISC2qfIsUkLefyC0bAYLWE8H
I9ipbAuclHv3erEhOrLy4cAOnhsWi321m82ZH/OhlMg8Q/9wBnq1RF9x5yfSL8ovOHXkawJBYkzY
+0k0mhEdm45VJGAmt+Fx3kghEucth7XregP2CtkQwfDDTHHDctUYZB8vf5JMklwXC6eIIPlq838T
7oQqF3qAIvnodd3t1UyO+JLz/zuzDYsQYN4jD8VQcLnbqk32Ac+k0GOCj0xVnJiTgd52RtlvItCu
om3uG2f37SwCe2SxhGUOwgQUUXYCgZFJ5B7NKqiZY/lIh5JKqk91Eod3WRSY6MD2AO6+aai4cvZm
9ODVBD7fgbRFiRwgup+7T8apEPqswsYLKhFVPq9TP2EGtK2pWxWD5vcrVazO9gmCv5sxa3cq8aRV
aa57tXT9ODi+Qjjz/nVGi7dysHu1OrJBlb34dX680S455olfxL6E5jTSdU4qVs7PfTpEiu/TvVo7
h5uM1KcWMGzCdun4mkm3fsG01a9YEehv1nKDxUWOqSoDIkWsE7/4vmQpOT9WFG7jSTMBZKDZdCkw
c/cI/i2X4ROgQBpiNb8n2gHVCg2U4Kc7KzgmTdb4FmgLt6EwjiqM+qY3jeWMG+lLvGAvfwgSQvo1
Inoo6jx5nifDxhMAecfrD5EG69YfXWuSTHGq/HcHg2i0ZM+NilBr5xwqAtzVqAu0W/L93Re68eJ9
Cmv8a2CwRDK1P9bQXHEc5rlUwDsnW+CgBZQi3K6iBkNPmWNAHMLuKtZOuDSgkZJYXfTTR2TgfC04
1akeKxiTO4EzwXrlGXXnEmujLR9aq/Hw5XrudOJMsNXRQBN+FrxylNrw6Kb+OyOF3iXxvewbKmgS
QrusDKy+dGyKhAhJ5iMFsVostqN9lwt3gws1nyTUTdBaUNlw9izv7P/xaUbYHMHQiti7GfhZ/2PQ
AIZSMxy8zY/0/SIpldpLhO8Vt2o37kdSuJnJ68UopIMJ38nOM1l26AhCnwiYbXfWYiHhS6azDUf+
5GpXnE/DVERKEBmUcLUrOl/xSclP3Re+UN3mvEKGp6l3YPDe30atrXmk1u5jKCz70GpId+P5eEbe
BTuc9AeEc81TScXysBQKNRGWHAnWD+tmUdR7G3HX/XL5KXM2IZGs0AQrv5Vem5/dSiCWP9Zleoxh
QvPeZU42S40BDuDM4NwgfiFlyZJTPHWCPnPHZtahuKi2eygh6VO18cxxbL27gk0wiXlT5XZO4CL2
bkcM9gU7gN8WDWSW6KOUNsd8l+IwC4iQjiNMmwYykjaLThMk+EmJ5Gn8MVxHnjoDJo8LUug9M9Ki
AZPk5fFyAfP4PW4HL/0E/0xW8A1+nXPToPskhCbOENimoRQO+edCH1gAzaG/qDCoNR03QBYZcP5a
3lmvrB7zk1kFG7X2RZ6bIfqYd5QBKsq+FAVKU1t+x2JsbC/vZbZRN/ZYG9MgjzNSEynyt4HrkXGz
Cnat994vLpcGitNjeJL3/wjCTG910ffrXO0gZgv7tal8DiC65wSDKY66jR2trIce4Scj0ACHjPmg
SVZjFC7bRtvBQe5c31JFn7WCE2zgcviFpzDBQEav7pyFoKRtT8Qf/Kw8JfkAZVneYZ5lFc+nMO/1
nHkKeRCSHVJd5nddW557PX5U8nI/FXUvf7cuYs5lPsjlNdcZYjKu9JhCrtwRtJfPgB+17mECJbfB
Od9ZSEpU++MR95pWfdrA9IuspLLKHYb2ACtVW+zYUyREvj2urLqkuhvQtyqhVDOsn8hW/CrB0Hm2
h/THKHMoYodt3HISHK1cr/9h5j4x0UfYJWsD6YEaz6YOciVkw/lVinfc1hKx8BODR/gldAYEcrFv
1VkR6plv68rYMFuBxr4XSrCZcyy7GPjzV941LbS+t+o6bFHpnai19d4d3PmKw4aOFPc+A8Ers2lh
wPSPRB0a33iPSsqMzzKmlJ8oKrywHbLm4C3zNGcvw+hd74lZrUWiYjap+PFgKjqhbXUpEoJgeNc3
H9/ngrNmLlCjaXAbtDfhjyjuWfmo9+L5dBWqxUuaa5vZIm6YIgb5+HXGkQSOOf+ic7T9JpBMJV0g
FqJYijsCiHA+x/ho/eIlc9gHikUevmZZBpWF1A2HoEuSqw+IpXG97G9rFYXWKsGXJwzLbXtPUpe0
wyVYZsuaufRBL7iFqyU9pyOjlaeWL/N0ksnTqcdwhb9STsoIixUGxR2zdomfpPYs9KaGcc99BlS8
nth5a7/9McfdEvoj+fASBsxwEMBVu6GPArwahK+Y6gGGYUrITIBnjTOrwSd8o2uae7SNrywWIQCB
7cDLMG+U2OoR6SqiUuW5oIWbRx7GkS6IwpWULXS2VfRCTlZygDNGNllCwdsUzyDVTnwgZm35J6+B
NjUV0uEGMUiyvNtlLmTLTC1OytDevBL95EdvBl7OV2tCy6tr+3e7BbQTGFmEMnxwEAk74C2EP95N
AzT6Kl/JD2dsHwQ1uSMWpIQ8zn3skSkZBQ4QsmMoCgzCZehyDkCD93gdjaG7rlFVWoSSsXMdJJct
5bcV76+mDp3VZ0L/zDH0FylGRAB1BUM68+QIeA6DBz2LuWTUbYcwkRzTaF2G9JkrN+TcM9dlpj+W
Y/mWnbSITLdFC79xN59yjMUT09VnTf48vJ+9yvQ5s2wxQXRR9LsvzZpXQZ/fKZEBKsFMH/f1OijG
ofPG+eIW0pApUcXg7t9HA5SacNcJTcGcnBgpdDQeb0f2tsnKYa//q/AVYqBkLMFnm0VNnG8ne8ZS
eMjrAgueSweIvT6hvpgUTSaC4UUkQw6yd4dP7itzHXcnENOW2sNlk7ZSkHRAurSV1iNkrdWXJQbY
tSjV79XqySY0lDB/+n5b6JmborUoNoBqdsxE04JjWykcoRJX7lREw4MIDzIr7UI9oo3i2uW6cdlA
pypzfFlwXY3B1VqnZbNtRNksIKv9/RrQ0gLc+vwRurwMC/LIVMAm97ShTVFakzlCzz3ykom3E6kR
MsM06hxnkvOvcawFzVEgrf/Ozj21WJAW1ID8JVoK8Wv+jOyOr4Ki4zoNGcMexluzlkkdSU5j2BVf
bJI86cSCrxlU4B6U7awhxP9cbyXEOHLYf1qTw2sVJFncdoCRBj2dCGs3j0aG5lftEiFtuxz0BAWA
a/Y7SKgTjnHSmiKChpXp9t3L1ieoKE0RIUaVpuXW+0YUqpmpQ3kpIeiiiVhTjSOz09+uiRW5EgcQ
h152eWBHRXKsnnSnXlhZ4xGZqfaDtvxNo2WpYVCa6xt/p8BgnX2Gr0BB1vJX/d4bFDGksH+rOfsb
Vq/ku4vEkC+kZ+J65STYtXHLRlQhEPx3pEd9DD5BOQrEP+IC4KEs+hrm2VT1EtyveKuUaM0Lmc7c
bU50BLXI430tccU0huN4aHh5NA8niZ3YLerndsVQEP4eZQt4kbe9+/dcKCr8IsHmjBrfL+VdQbE+
MgTvKiQfZqCMDgSlnJxS2F+oaYlNoXK83cyiK+RkZXViCynd2waMAoxuTLc/dRzL07wuC8Mwe4++
p4w8XBsiqFiDZEcF3Hr9RsPntD8pWaRm0OTjmtwKhAxJvuLJaFLMekcCcZOUHse++Tu/8+hZksvF
iguv2tNwAwpwZpxwaJHK6kx3ZjFCqNYL6DJlgkeKU/+KLsewO9Ecw9oLBzWFnCdAj3q9XDm88x7f
9fbu2s4ZGfVahy1dFb62LgblNy6dPuf3mLbetG9e6lfKY22KYHqaM/MO2/JcaIFJlF9x4JFzKf39
QlE2YzP6YN74+aogl3JI7ajoz8TAjHJHI4vB6Qo1SVFngHogekSEKurCC19kmS4Gb+3Ql0RPmd3I
jpE/PG/cpNxaZt3utf+iIxDM5LQnq+U2aPV1HgRlzYpxoel9T4JxsG3ECSd8zd2aEj5pWU3WAE88
T9QmZ8tRcqBoojH04kVxNuzkpWdjEsbIdPUSekd5keqJNcYdzPlaybpuZEJZOZSx5TKgFTp123QB
ioga6Wo8Cubz2a2seMAMSd8rljG1IDY9AI09yM/ZM+wi6PeY5PGoBbBvb3vgORWSG/9y6V+vsxim
f285XlY2ymEFmMjAs0LY5pDLO8HkrwN/rifzoz9kZcQIA5AQNHRsKKht40Gpu8ZtwXybq09yeCm/
cVnCUfuoSywI2273JQmv3fFf04/KIPkgzxhVSopjBNHNjke1GHPyb1G2sptmuSAn77Idr+nez0zf
yunSb4xrZc18s3nXDRAPAA7dittscbupd6xWNdsG8gVy9dPxgYb4SeuGuHKa1VycyQSG5oJ03rt2
dlp0C0RP9m26q3joTKbiriyVCt3wJ/2EqPInrZgIYiHVV7V0/NhQRolCvl9TfnxueA1IPuEhOVoA
DBPowohK4Q1AJpF98ee6GGk6I4kJc5xU4H+PrO6DzYHmVtMZKDq6xq6dg6FJxVNpIuotP9JbklyH
5e90v7ynDoOmEJI+zzX154PY4tg4aT3dldDqS/U1sin4JpxJ+XoRQJJgiY1pTd5KoZ8xPg8Ln7HN
tzqZ1apv8TPXluUHE3ZreI70g/rHlL5NDmZPEKVSkoDhfApn4OmGdOn6BbC9ayuEjHFnDLbXAXkK
dwY+6FXMOQL9dB0ol+EKKpmJ0MSiL85OWRx7Jr+Att9n2lefkuSDOZ36X+3P9CthfLBtFV/v89sz
lgVxrTStSjMelKI6cXIuW1mV5n5dPKoOlDEC5ZpYLT094fB7p1Wo70y5ZIswUPN81tj17mA47ibw
QGChWE2PO/1KnzkkK9JGjY3GfznmPGdLYjOFrWYy9OVHYvHJADTvjTQgzMqjGCp59+lpszTiYBam
XGodlOHGXD5j9sJyq3VMexxGQIm6CIUNtG0Cwng2K28WGo2UgKwwEOvBn4DaFU/+rpEbvSxp9BmL
4Dgnb6WfysEpX+8cZ0rMzFyF5XIxfgNmnvZhSVexyT9PF2o8gZXS2RKTcu+TMNG68dQuaM7pQdyh
WhljnysRS8kU1FPYVnA4hJgaMwG5iL5+h6ivqd5cpi6BQ1JT661mAgH2v+cfy9X2qdPs9r6sMT4A
HDWMHMT30I0vQSDlCbSUqLl7u6R3I2HGRGMwJlPMroFk+p4UY54uQMDKEbctFCBUUPvDtOOhW6tM
nNjVjbYTbDexgYQVdUu0Ct5s/AqtaItjujmX+u2JE6/Qh9OJayhQxOFUVI8IE3yPzebyxxpNwYgL
kDIMzaC8J3CLdvdU4MVKmLUVkJkbQHBAhngr06kJuZo8cFYXD/BB9P5dY7f5C0/t51RUbFYSbN7g
AjcSMkggw9fd6BcQUwpvlFDMgeME1ABJ0yZiAruHzcZm98ROjCXvrFqasVPJCT5pgjgvdeWVo4dg
Cz+9/57WY7CqNYvAPdxvczK35HdQWPoR+kpR2eet/0FGaEtMgeR5H/s5tyzSfh39v6AT78cH0bzW
9Ad2vKw68FgeDgn+FgjSANAHJZ7+jd89qntO1B7JWnyD4pIMQdp68n69cQuumqp4sWzC9SGsV1z0
h+i1//CjW5j/7vbEWz46F1Jwr94xQmpo2z+PLz9TAc4Y3dRgEIGh3ySkS1WRV8YyvOhsybJcLBhV
ToyTyvz53Xlz8rWQds3M5PDawMHC637PlY5db4uPKUkNsyrqJEYsdmfS8vlDNJ9xBlDAdu5kH5vl
uR5owvH2vwLXt2KUBzsSo7xxJb050KWajc8Z0QyDVu83l24mFtxDeFyWoL43oXcoLkbKWMBjGrMT
KdIpkj/+OiN2jqmzgg+7xfG37BBizABYHSJFBaSlsC37mgs2g8LzSmCdIGZCC7zUC8F+Do6ZDnfg
6ca3BRvBS3Ndyy9V5qVZtyesKjVwAgOHJ3Ly3c4gFlbLmRUeR+oS3SMadN7LgUr0dX2h2VHPIQ+P
fYjoi/4Orgd16iDwPx7OMq8QOcml6+YC7LJCBohSQubJytEwEa/oo5gbNTN6bNWAYFsmHEdVLd4Y
RxKDsPilxzCnS0peZVkqzPMjnNu/mBTIDtnUzNQpgUTQF/cU07WZ3WTbwYC/+eXK9ObX8GWXwR8A
Qr+2wZRvn08m6cF9Ok4qEkGy+d52awg7WQUwXc8g86Gph4in+5L7fEpJk8xKCykAR5FuoGcDo43L
q03tmIAeIhqdTgYau2suO9Y6DHNi+OLADplFWzH4aBqG6ClIDQz+Uv68VRiJhFrm5dz0k1n5FAtu
bwsVxa+lxAPv2kb+RZ4vvjmDzvvJFSi8SegeHF7DUDADuA0jfsAEh0OHE4TdzTofCYLhau5EL4TB
xVjS4tyRBLdGEHdNRkFNkhy9ZukmzG2sLS+s7LxxzKvyuNiySAtCjtHhtTWqy6OmtLpx109LP3xs
pSXShNLmLLsnUIa2LRWEELS4V9uUia8cxDuC/INzjA3WdGZ3qDCM0vVIRFOmV0iTONBRKOiEXUHt
wmrqZD10HV25hAlirU+aF6zLu1cgdRF0sXM6sjHgdAieUTLpUj6eU1+JBxRu27LCbXrvPa2vNe7i
G8WH4HBBOM5OHuqlYXHJqNYk+optPvsGB5z0obb5kD+pAbXwn+0+NqzPADesxUgpZ23dqciJcd1B
xmJt7HAoVmorR7dSTE7TOD2O4xzrL4z/nevqH6ombU35sPp5tfB734Rlw6zTy7VlpWZPBqEIIokU
PioCouGeZ32lMjmm6N3VbHfKQbOB9R8y40teIgkqIwgUE1lRJMTs8321OOl0dG3oT5Y3deqbI98a
HkwsKYaxkRBeDhcM3mXiyaEuPHznW+ziKjuw2R6ozEPyXZw2TmZFTQxDsv3VXjYb/PNfGdhRIEjT
Eq1YH1BrqaKDmalNfwcs4OodTUHe6iYo4Qo9gsOmNhTVqITyJ4JEeWNWVaOHG/uExoENyvUJ0S+z
KS0SUQgRiPtOyOLgcblZEHpP419tRcAIej53cnP9Lrk2LKXX6gSkxr6t/XCKEGJUGCC1TWrQUCyU
cCIg4KU7wlCnL+ubGfrOqZxESpKEj33EvSqfASIgSl7Jsb+Ek8aBoOm4Xq0hekfXZiNfHGPp6X1b
zjFBvL4Hizj6RKLgDWs6fK01ax5KgkrlSHr6uSz0nZUC9G6J/TxFJmsQE8nSjd3FCTU4feyOBTGm
0WCq8T/CBJOq/BdudBHRS4gsLM5FzeLPBeKVX/+8nYyt0PR1lbYa3itF9WM3zncDiBMN33q7AabZ
UlmsCfNnMu/ARYyMlLD9MPlI+OML7uqfch23V7C7AoLdGRXCMKPmjnGKgFujKXix2tqXo7sBUR0v
lrG5Xxv6UgoMd/jO7+xkRU3tEDs4l9Gc6pV0ZB7SIfxvtq4/xUgIpt25ydmDzqOslS34Nv5MwwbJ
kp2JQ0R23o6wS7FORi1MA+eOqQO8ilIaUhCycOoWE4px7F2OMDPvQKG/5u1LUziaeems0J6FNojb
4cW8pO6xmIDVoIUUPmeZSnuHwNlOLnh+GcNHA11N25CT3nxPJZIfPra8nXbEnC04ajuSYX1UHgBs
+6cjY/7MEF65/0uDK2O5XbNHVGiHm0yciWxKuuPCj7b8i75louXvTjt0apf/v5XbAo93Kn21tu32
+z3Z5Z2yhtzC7jJA5zmyGiKJ6zVBLjkzTQ4Qz9+SOywSwh21oc4f3IFolluMpgepOoT7TaLvfH1u
xHLh1by8iRf+HeDvGmTgDYMqBfq/dLMkTJ3dmAB8Kv+fl/WEXXzfWw/jrWyqSSxeM9TWXhU0XHVq
W7CD/TjeXwfAKXpzt602XnsJ9x44gU9KfPHj76KGTgo6mdv0zwQiDtTPFzsdi/hFtLXJZxv2qQAR
sQdbBDJxNqWBaLk6hr2loNtrFZ4Otoky8Bs6cYVBiQsicN30cSN8FP8mVpB5Qam8wqXLr1EXer9w
LFZ9qUI4k4yoBUKt8lre2GDmKBBT5p/KcW7wduKDIFhBMarxsK8UPrYnXJdhhEB5BCbNrL8t+UQ1
ls//uunC9trzZU0iHFY6L+qQMXi+g73PprzFeVcbnVisXQoaN7Gz729ZNO1gwzGQ4vMMl5aUCr5v
Hbby0Je6rAO2CA1eOQJIzQibzjxGOSPHewpNSEzyggpH1gALCPAhDZ/0wiJf3f+/AtHTAhbXWaVa
pxAk5YQUmXxhE6gqp4mLSpXybQienxVen+IGud2vS40mtchaZX/3OH82hWksrA/5f5N6z7kT/XTr
EXiusJYPOL901Pt07mZPLXkBrPMNy6AVVMeEKB+4PJYxNd2Lx9s3lFGHI1rEo+CtSq5IQ//xxhT+
8HFkS29Tpttc3ko06OC5+AxQpp8soSN1oOr1aen31lGbjZBSc5V7be+Yc+yk6PATDtdA3m5+s3TM
9aYW9wnJ456XQgJTO/E2Fw/e0i0q39nErmWc36R6T4M2i262vgzoDHbiGn7RnlaepN6xlYHEDwPM
MQOgZMZL4IX6I7uzbMfPr8AEAFaTLqCrAI4CRpYVeIlReltxHm8+3piUjbbPikqztW9T12YQ4cgA
HwY6APKORVELZ9DitP42gB2oqtd+OGz0j16m3cPp8QGH8OL1uAjAzHf6w6HFhKPA+BQSPwiBTxd3
mA5YTXDy5AyFRfZfQz4fPTr38EtQi2AFAFLM3+wyWo6fi/Ea3tL8ACmGMCLK3jZsnlGpDlCJ4iCJ
xPMANy7/OFquM4RocoNRJ2KM6t1HxAzQXmHR5U4+AqIrGCw153RZxCoPDP7hn23/vEA7qxGKq/mj
C1n2V4MJJ6gqqdCqcSj/lSYeax8scbM4r/35ytgDj3YiDwG0w3xJXbuRwRYFFxQtoial1AmFzlba
3EdVolqP40ilxG36MsUg6zZQVTW0l5dAhOWwTVeiIkHni95o3k54S95SnvtixgBW+q7NY3z3WQl2
b94d+l/Tz03xvbJ0ZeAI++QNn/HPBIUGrl4q5JBPNh+gVnfvYuQn4q3jiewSqSguzLEyFLQot2UX
bKLLkIgzJCIONSH8aKaLYiCUhqFt7RSgtiAFaV1olZWty2Ek3uM/U9tTzSy3O4FTiSrYX8i50LYr
XarEXXqb0eCwGPaWJZi9mug3iRJYchUaotIX/eYu9cBondGq9rBogk746Z/+S4sAHiphkz3vy51E
gtTq1vH8hqBzVB6aSx4vfMuNpukYKMcYWChQ/WaWwH7hAtB7zx1fZU75JcYLfcNOoa6k3h7oJttP
Napv9UcLyAGgdN6lzBKumL2X/O0gf324KQdLVcBvDaXQqbv3ucUCoLTI/sAi9t5iqxqLDE6cGGU1
GBBJOcgAjxI9rS+RgPZeLJ+aZ4ZVSq73EE38zO2qfxXIKB+31XDHq/kVrj+sdwyWUKulda67xc/M
SOQScwApCyN8wwELx8opm6jahWeRjfqRfAdRNOFTkSoE5/rUWmmjPDk5DyIiGA58B9vWtN9W7pvo
0nh5Y2Mibo0dY8nzhH/N/tHMnR3TfgCvLjs4Fk5mnLuVf6rn+J7d8dUJtJeMgvgo0pE/W0aMxwkd
LBHEu348tfK3ETcBiemPEiS2fkoyUPd+UAuaPiyFUSyFsv8Wb9Psd8Dxh4nKWoa2kjZ7Z1wPfaAA
2XiFMZo1vhiQD3Vem2q6ELzKowzQZi2BWbin6uxQa19KuxtDlDii7zs6TFNxaJnJP/viCl7YmCNL
ardHyuoDLlb7dxfzOWnpPknhPlMrAypEvQkW0irSEJ6UpxQf1btPa1kr5LHaqEyFG9bY0M3csMs6
ElHM6roQhK8woBf15gpipWZVMefk/9j1/xo2bPFeTHeeRWmSzsXR5NPTqLnieFsOItLAvxvd9W/s
QsqkJxiRpLBlcVEZNgPD0ldjojmVt6CPYpMyZ6hyoZ8H6YlIsu/kogj1LM/8HWLQNfuO+el7qDSS
dkJmpICyJ6aGgDUeS2Y2jzfk4I+VhTWdSzlgWsBrKO9H52BQGe+4kaPxxWheh96l0tUDgi/oA30R
E4O/kO8BwMDOsNgyAj60qxu6Ez4WKPb9CWnz9CMaaTc325HQsmrigQb1ITeq8u4JY66g4GaK3S9q
OAXzLxOCyHU1Ls+IwlI6GjI9+/B/7dbGxQ7wIYcUw+3CmkwB/oeDdKTtIOml01vHQGrBKoCrI8JT
5m3B+/XBpGq2woUd9iA4YXsIeIkvh650sYMeqXjNvj3zwNtEiyMYyPrjSJNKhHFFpopDsmVODBaL
iEJlFSyWmBqQbkZ4W4X6V9RFVvwPScUCOJlEvNZJtnsyEc7tTxSQKtUg4SOUCCyaWYCW+Lixp7mT
NIap77fXsTVYZUUSHYd0iPnwY75fXorA1RwRM5H7t2D68mCrgssJBGv6EJDyuvEmeUJIP/jjKER4
Qv8pWLm3JgoFl3JxGTEqryLIjoEJ/5RzpKfEwi1YG1wY1B4xS09TY4BBey+QdLIb0pz4o2A7eBg8
SwvqjoQNlL2KR+OyXpDq2BUaNjXpTqSYSEGP+Zz2uSraIgUJthjUgUZv0BS90LknJFnEtNY02hOJ
4b7OdBGg2WWAiLdk6MKZ11BfmDYSq/KTEPV4LKcvbxX07JsDxk1OIUK7Vaa9/6sf3cSHR3F/hkWV
BA83FujfGuvE5U6dw3KwZppIndvmvsPHgETxlUMbDYXLL6kPayJX+wMhxgiZRernvMsHdCWsy6oa
XdRki6YO1gHsY3SfgqbXxBU01NFSNiWjZlo1oKHLSKhkm7vWDI7Iih0gZOuWtbADR67MNe9KHr5G
NuvOWWmlPjOj9lmOs9q5uxs1hdhKFNwwyUkXJZs1kfymdEo4M1VAgqS9TUMzFIbLNGK0Gj4O4DXC
iWAdYCVi/wSzbbEK1O+8eEPl6oCcAvZ4lYmD0qUWMzchhqYv5gYeQc59FtNcmSM0U7HgZDmxAafb
n/cQ+U6wwkiapeG7TjSYh9K+e6dyvN2jAS5/eQd7KPynVpbxz4dr0tqcPTw6Sv9b1pbWKfI+/ds6
RKXgLhzi0PQghSWAUVixHiuyC5uyz8TtspfkOuJ4yxS5Ej1d9QLkfXvdGs0n30qUslRy7OT4PJ+Y
AGsHv+JmvpmxSxyf7R4becr3CJCVv7gdYwslgNLZIr9FRAncI3kxUQzeuYBm2zUk5jrYqeuGLd64
cgAIr+rAh+TxwusTDBuxhlz2Xqyug3X/n7r+ZQOJKMc83gy7eZ24Dh30y5G3L8G7Pi/JQVJ97/jJ
drk3O/spzmu8O437CLY9TAbedQJ8xK2UbtEkmLyZgNFG2gbmJDAMN2c1rnI2579gxw/SF6YnM6Dc
AZEcl4408oD8raJPnlt0KSeVxICrao42JzqDh8X2eeQIsMoC0rgRB99IRnfTH0KPZK0bdu3aWvPf
+MgNLybLgeVzyQeSPcTSrFtdcZpyD69KUDHK1tcf+BJqHYu7h4vD1Fi/iKDVbSEUe0gIv+iNHN11
dzJ4r+1auKjwifzczXdBAqHGVVQ6YLV/ivMfGpZI3STbip3di0wDMYZtZBhj/5HjvdlZZ6KzK0xj
jBK4+P8tJyaIT3bzp8RLJGL9DZTFLW/8skXFzVn573MJMMFtcgLZqTKKylZVSzWZ8TDunsu1JmKB
k4g4zk40zT/uyLySr123DXYxwmUyeXTqP+UzECU29GAk54rXIFojvewYRjp85+lqKVeHrNtVwrWJ
LHGa8K7hHLE94PcEgrIY4aKkD5V/uLhL8YffC0fGMQOMooRSV0WQQbruaT0g0KA/Vv9bd1I+/lML
tatceJv5NZ1udMClJmR0UtsaxUWjIbbpWiN6ewhNhnzo9PL92WZIDoDJbJAQZeqZO/Vy42hqTYVQ
Vh4+uzQYbVlvrziGH38P+V8UiJ3ase5R8ricbyKURbtv1vcyrEmFbqXsvfBw/0ADj4SI3h4yW4KQ
Vz5UE6ncaSFmN2OvEX9C5IyQZgXMvUJspgWz4RAs21Lq0K0L3Sy70IzJqCEzwY2SYXrzTpbEIOes
6IP9wY1v9NqrW2I6kbe5XH8a6fCrDqFu5cvBpb/VH6QhFadiTYpQKOk2PSTmuKY1qYZUYxZ6gyLv
rgOgXKp8GbeFbSGtQ11oITsTZfE4VnFqUUrd7i38DP52L59ifxdpilanpAwlXIGkNfuU5XhuJtrm
OXhImFAAnTJwb6k1OBwmXUNdQjIdgf0RkwveB+llXwmANsBea7Ese1ZqlzRy1mARHT3dL5MwFpBF
fGIr3zQCMBWQs1Ilsl5MZylJIYKqSYmx59KdIi6xUi/EVCKYi1YBsGWFVuJ+Nc7pR/Czvazmf5tB
HOm+vBzgYOobpq5peIw11BfGCGn3T9+PVpky22/ZXhitTXVnLkH649wzKhJoo1MHQ8QMaKRW7jaz
yWw+tJaLZoRRBLNSwZJabAYkoK4Lbb2W+h8zpM3BV5US9Xduabq/+b5nyKw4xo7CUeng7NOqaFRq
sYgEqEcSjN8gdSgge6F854TjseC7SvgcLOPulmcHhCIaiOonud2QQT6RdnzEO5Yh1DgMldFzH0CF
0W3GnGc7h6ApNOO8T/kkAPWMJKNmVm1ozRVzYfJbDE8kHBTqh5/XvvD1n/e561PKQ+dK8zu7POt1
HXcJyYBwRx/WlgpNWkpwu8Iyz7U5iGtSDmy9HPxs2ckvlnkxyeA75LbOx6TqW+Aj9b/9LtqUzMsE
2bEvAwCQe758OepYSOjjv7Skt0OKRiyizl7WCWgfhnFqRw+IK/kPka/6mYgAdFhdxK3wVok1M53G
WxSPqmacLxqOEtnEesB3cVaE3o/AeIr88DnyYF50pUqesL+nj6dWQd4DKTGJvadyt+Uj8E27IBgs
D2a3Pn8guyQFil7ch9V0dYdkVbifPYmK8hw/Pa8/Nw0HTmD0x946OInw8mU7RxmmrI3teduV+fww
tRXhqebP8oaFvqrqq53MhRVn2ctqLyJjGbg0m+68Zmz1s47xb9x+ouskxTu4qBv2dCQRCI7vxgTO
Dp4irETmg797XkCmdK4INLrJV7fiZAXY4R+r/sxvxL3kZJYbXvFSpBxbdiXDnEKrVH7jKdiJ+UbV
Wc2dDJMQg11isaD8AKQJocQPo5F+3T+Il0MklRHwZbMClCFg+Q6/02t+mDOuCjMpAD1yeQtjCkP8
aYd4MDYw06ttEjrTmCdPa+F+Qu62JSmym2yh1YE3HwTey3zjUttfijQvqY00WyaaDSQPdrly49xm
zLXvCwINZNzXWgWOSt+ZKYOeETrIFMymDkWGjOv5XcAATK0K5HcgHOpDLu4zLDIxLOJiXFz3QfGS
E81LX7bkYAnb/wotS/jvMg6NcSxcEqxKKR/U8AzbxCIBzzcmBmbJFHL0Z4yrN+8xzc3ZIEP20xzm
8G2pV/dl3adNZzGoXnWQvRKxmT8TwZhtael9fKM4tlKL2S7UYIofoPIY++S0C3R93WNIiYT1Ujl4
yMDerTkcoXt1zN2XqDbFw7usEW8XbRSoAcUyY0I5YP9gz+hiJUhHx+3g2mk0yJz9w4Ma5VkCuCz1
BVRmuS+DeZL2sIoRrh+VK70Q9E3ncpmc7r1nrbXCssTQUauqxuiffT/+7fV2Gd9t7LIdSlAvXdvy
bQg4LV72P/Qsh0TscMUUDffBChNPhhD8YBMrG1tCEwYBjRMA2QUuc6iHzn2iWqvHXeDQUxrNWck4
XtomsoTsggdzf0omZzlhMHc1yXkvk/LsDwa/l1Jo/eZiJBb+RvuXWL5U2K6xlVcOf2bjektmofd0
lPD7OVzSW6Q82KqOAdKvvRMoIgxCl2qpsIhycBb+YyVc2bDYkdTYMMnAy8m5wrleKMcbCnVG0I1n
hVkWNJZeNlC1Q9XE6giZFqvIRXJPfuTp8T170OroYOtP7riXZY2K6+/mVFoXRWnhdouZg0th29Xd
hddP81iyuXqdo1z3iUQuHHPI2c3QJ9nak3wR5id2LUSkgQdGz74Sp6lJmFUJNp/SBcfUM/J1vapY
6oJ8rERqu7xajYtVdxbbfe7gNYdLbvExzDLTaEFai16Kjhp/ONGfXPVf3ebbO8COqbQbQ81RUiUT
l8oKk6t2KTqaUajC7LpQhO1S7u3vlrTaubygpT48gm4Oo+Jn2HdddrevrPy9f3j1NPfIIlqVTE0m
IEHtmlheUdkDV0H7I+fndnutcQNgGI0E8CQTuNmHqB0UpcrLWscCK+7aOZ62sj5O+9s1szvqU2J9
qC7SwvWA9mXnFmzYNnL8GeeDtkKhQ5hrKXxJw5tthwOmWOH85uXgzjxr+vESsQJ1EhgD1DhjF6ud
a3pkw9ZKQTtOpepjAnB7S0/MxEo9K2vz+ONy4VBWfgh0bV2jLAb7kPCl0O6gMRUoCK6bBsFBMqwn
dHolL11adwf8PsJ45wGyWk+Z1+lj34tMVYT4qU4dV9nv+gufrMlbf01JDXW8K81/iQXDkoneTWEI
pvRTS5NXtYnWKbaMWD7FOU2AtAp26o5X5muaonWLrR3XpBu4suHi4ymST8Qnq8nTiAONQAG0V21L
C/CC4lHkVm0g6D442VjU4gTV0IbhPcF6DNrIqEJ5aKth8ow43xEUWtWAcS19P8xj69MUkHGsFv2n
pr2jBKHxLxozE3JL9hfAb+f8o4kMGdk1nulHIF9iISeK/akU5MfHF9AFZaxyGoBL8MGx/9GMEtBR
R5nwnI+WO66+fCQRJf3oU8yzecCWHMn86mfj+3Pso07N1m9SbJBa06FHPHPRKCmVDYyGlc3ziBD2
hFOnUiaHKPWopDf416dtRltDYotQwKea014yjU1JMXGKXnLKbSSpfzMWGtQL8rCmjOOiJINHdpi1
13Ha/4sfNgKGbROVtAgyrgXdHebhrLgApCI/41CXKKgUK6k/IHqGHdS5k3ZSt0g9MIhokCY2vnLb
ycUAIbnKiIvjss0RZz4ZxjadApFwCg7/kVxNQsAMzDD0CFINTncka8rGwmskjwHA0Ooslw3yy69y
vRK73/8ETA1gWPw+fYpfBuCcoFXQP0uXu+76BRDUqnlZsEN3cs8exA4t4UX92tl7bm2oP47//rvL
Vw4Ys3rRCVzJ0/tjv5vP8kUkrn0GK9UlPPuWmhfTHFNItFKQnWCHkdYmGmCgGtnmkt2KuzBJja3S
4kJWiILZYRjiRsnaC9j4HmW+LruUxbG8Z9ui56uFMFsEHWXQA75WopX2My7ZIEVr5y9snZJYMCL4
fSYX61N7h9CZ1PGL4evbupLlzlnSbM4qepDxNJEYi8LgAyOP/RJj27z3IPuygTyeP7NBeWuYVHtt
JQ9Xr5rq4OzZEfkQhNiKa64ZhUxae2IZlM2jJe3hdr28G5QkkUUOcHzCU52/ytbReFnfQHl0uSyX
smrm/d3OWbb3UMIgLs+vlIuqHQ+Q7lD1RfUPyNwNtgNEHXmJ6qcjqSPCArbhljyk4tuLzdv0xF22
4LQVrhGqU9SFnX8ciaM9Ybt25AQkPlmskO03Dz6MHmMZhJVRdA+jIdp8IdLO2n4XeAkMD++qUQVz
OXubVMU6PuM6WIemebqnVEiMvkVLvg+M/kIxkLPq4nfDgfxaCvp3PdXoRLHhD8C4aI85FfejMg4i
1EAUMV/ZEacXZGDwO3wirRerS7bAKuDb2jvbP6tgXPE+RJIWNiSctzfD0jdnBVllU6BuwMH1yTvP
6YZ2byvxwHeOfJvnY8RcAe82/wKKQpdwQT8BveyoWbBkr1ZcmVBZGlgda2uzhbdiO8fjWhmj1G0O
/hVDEgJMVHkpNJY6Qt4ZZ/eCpfEO0kawX9wN/K6vrxddcQr5paN9Z7EzDHdjZz8zQ5bm45AJnzbR
9FFdTT5bOnTxrS2q22AAHCVF6RMKDwVs2qxo66irF5n0Zs1ge5dtroTXzjtg4x/YAyBIfhJetPcd
i8TBJcAWDzfiT8b6d48APJo+wGJzER9R/CdiuJ2ev/dr1iqMvCM46ZW5ivbHAx9xoxA3e32d8HuZ
VIk8DFv14Sdtuhx+jcN7MdDcpb1qY+3RuN8GRSzvX3JL3VjdiQhbbos72QjLuQbGMyMZL0Qc/9PM
PkJEfKm0rW1AF/AVojqKzExi12IX01Gv8wfVFI+KGi8U3kEeFg/DfgDML20Z98Qv8qnGENUmDStS
9diIuOrV2i5CkXKlKYTc53qE0dYcP+v9LAc2cozGGfv+Qi5RCDrH+d7jbR4hZGJP8p+yVw3zhn3u
8lWicQO1PYsWIKDnklp8Za1+q6MT5dFzh4++26sFnd8kADi+DkQN9zWzcqwE7LMA+iKoWV1/05M4
nKiPksgowaunZDeBFEosnblMwYYNGRLIgm+bt7/sG7hfLE3fbfamVUUYNMUQ5wDiETWS42LIwNQ7
qh8UMprNRf/Q7o46rgEHFxBgZzzUokNRA4qFonQ1PbomQNoP2YlZoKTqWSLKj1mMBGhM+SCHFYHp
yXF/kt5mZ5qMCHCfoqX1aaqxS98rN1B7j2UgY90tNyji5uQVyFnfeW2USwYMT40HkX12s6Q3QP6a
BPgUPiBSvHqXZXF9KUsdbX3SNHaOYVL51CYxEGo89mkygiGg/3QL3lk+nZaDVyZuLRMChmf1vXgW
q4QmEbZZOcWNuaukJvBQOmfPDBMzyQb+klTD7IqmpjCJ4otGPTpmnK/Vh34A7RX+M1VC//WyxeUp
o0vYqIUhMtvM7C+Jg2CCJFPljepFlAQOm+AL5sK8nKx7Q7fp+4HC9f8KPeR1tH/hkl4fYgVA0OnN
NZvDU1QGIW16zxU8EBLwciNsOHnXUAGgPrXSvlddE7rX07g9LL4KJBoU714VVcAkyTDNTgoDQbq7
zskpn1lyJe2QcOw0Zn6Xdw2dtoyq8+xzpeF6FZSenGzuvGdb++be4Q5cbWJuiCC7fH1ED/0n6dDP
JLLOzKTMeS/JTy/RDai1ZnyAC40+XA9UZpKoqrXccUZ/8sg6ZwFQxefty/CCYU6goccGHPZB3W8i
8KAvGwLMiWMpO4bhvixFculcZMVOg6TWxSKJ+b5P/EeM5nUEkbK6I52QwuCvpk+2NOSAzmNiWmHi
dlAJ4cwN2/cuWiEGPl72Cu+ysN88JFXcuTqhLKY2qyNdsRc7M4ZcVtoneA7zjF2GbyiwzrVNYdZR
G/FLk1GGGGaTeNroEhqXAaX9pY3Dxdflmf4CHKE9NKIg2MduBYFKPmqpqjj2QFCnnUv8+flSTTx8
7GyxT3GIa5lOMpwpDAJm6ISqDASOYe0VlQJdpYgrd7sc0eUsElKpG2XpZDOTRrm4ep74W0E4j6iS
uiNbKB9eppND3Z5aG8VqF4kvlVjrU5L91z0Tq4lKHwR2MVsSsneh1CSC6+02akKJbqkdaGdJ2sgE
OsECfN51G8a7DEc6jAXiFWf589l1i8bBEE3aPCaEHqwoBPQdD1c+hIpT17bpZvEFcGJvDv3qVP6W
94DxTPt63jJfHHwWl4CPw3KMBXSPs2NlTco0IKIfWG6+8ilIrUVyOE8HlYk1WaR501rkWIzdXyDg
nouIigpXiUPC6I2YBO1Nf9von1UMx/P/NOCcbVdl6aDYSLlGq1USxM9X/IYfhNLVWcvoRfh149kt
sN/1WN+8bkr5wKQgeUJ82oOV3DPktXjd2YqV0TvgO2lLaYhIbxKWszBDZ02DqiIYixSF8LSiidKL
NJuskiN/u25Rgpv/27xNP5U4u012p3RxkmjI/zVIHTqMDlg35BMPh/2BZL117TZpL8W85MxMSy3x
WRYG27TWJWVjsQalAYNrFqceKIkHbm9aM4Ex8lw35hwQPiLArvIjaanbXEdralriySR9XhK1cB7C
1SMENmf/4blDJ2oDDXOiieFczk8O/zfnTXkMmnkb/1mWr9xCT4qbSlfrvQJxg8SDHYLMsmynb13+
MgMceslp94GgwIC/i0ovA74zUsqwLRBafD0zREn8EwZVppCUXf96FYrRs6AedHgYhWoAOAzug53B
UmF7mBwy9k8xbrang+ADHtKhEXwHI4lykMdTtVqzBWfFgkIZZRJevhHFHJb7sk4+nvgtDR+oTK6N
yKKZGJOOsgAyyngr8ha5sRYl6rq8gj/yCup/SBA0hjvJADPx1JgB1IyNfqFcpOgBP8aSFsElEta7
KpUn8bxyJlOYUqplWf6MD3zIQSLwjuEmvfNWdPJ5HEV6T7ssebbFSbN9Eh3U/eFlNQbYUSQI7G1W
F0WuxpWaGwV3Re+q2IgY9BwZGdlagPfsqOBteSgm6U3q57sJMBLswtWAd7fhvl3v9qN4ksy8+25A
XvTUFrjuxJh4q+9cVvyH4XZssbhwjKA6HO1tpqxHsJI4x0jNt+5sCOvsk2lu1JeaGZy08zXB8H3Q
w2ARUZoMaF0nP032LgUGWFoFYvFdS2ugvkecBkm+CvjdPncBOYQSxXesK3A6pLj7KDSbWG2XOFEo
tFBNsrGMZe2wRUVkzApn8z4p35a6ZI4lo9FJ23PUGhfZaKpAPTVwHNJ4ien9yXmzJ3bIOfy+M9H+
27ExTjQLolweMp3X/FUO943N54FGEL/RwKiu21bgLEHLnK1MFwJYNwWN6nLB2Dls/3jDPI4NTC9s
Z312gw5sP3QVbP4y7wqC9SWQItySO4TuyykSR80HQEchUpVJBDwEeGyHIW/f7+s+JVMYwkZoxFRI
KUn+R6+MgASKNc5xjYoJVICnK6Prtt/c3O2Uxl9U+FujAMOr2u2PrhWo5xisC4PjA9pBz073X65K
vEt+QEivzM29FkgwtwcKR+1yT6ZBshmYTpwm19soQUsk28q4xRZZTgbOWDE1NPOGV/ojoUuzYdQn
onE0TWWPpwmCEezayq6XZsCDrzonYgh0pP6o7T83au+Z5/O8Yt79Y5QCSadRcNgb8+97df2EhC3n
vwcZsR4EJdoqw7z17z3rd9Aozn0qSVcS5kw2Q9+agL5slB66LFc6URRJQVMIX7LMxaH+9/qCe0Sz
fiWIGL9G6RdU4FDfQFecu2DXWYZ6afUG4I6os6XOEnGBwSOCvy9vg6gpIGw5/z1rlKErnhRU8A6X
j5dnnk8BbCDsil68FQR4jvhgBGn269dk9v/Aq0LHP67C0cU1eNQ7nKDDbPJF5ZoZLyzhdyXThfp4
WDD2F+SKVqJGGNfJGHCM4W2B2STqqygOET6wLud1Hr2qUXVdcEtrHVdur8XavkLiR1kpFp2wJMZB
t4gSVKAYB/BN7OuyZux//r7jeGbwnvBQ2EOqmK4oktT8Hg0z3cFVRJb7Y1jZBjEcdMlCt9+h7iXK
yCcJwfPumSKF9glwjUk840+QHF5Qovx5/9vtNRSGNsd9Vpp6RXZkVjt+9SzhW58wvj61lDJxvNBt
fgtYN8WA8ODMSDcZA5Gm22NviaaXSBF6OczrAb8F15UAgPNAAN+/aP7bjNqUpjwHFuBZWjqnPlk0
L4a9r1VI+3kzMfTuHT060c3/wFZKdnIKaZM71I9OoC9bNi+Ee0jSEa6rR8i1X9azEHxQY6V+9ZPz
pnIF733eb8DV7c0u3dD1VMvRygaLeAKtR3Rze9+TX2uzGv6kee6vbrfklO/Lb+zI3cxYa3ce9OkV
JrIcHw6fcPQNZdZxdEg2l92nHymVCq4nqBgbRILkZlI86+E2wj7DcVsI2UYYSLvaKojY9i6hPzIX
xhbrPUdiC8xIxgsN6DqsEKdYl8AWaLlGNLYspk4X1Z8Z8yGOMa2pHgGpDhwgiPDuNpmyiHWVV1MV
MdIV0CwNUI1B0mNZ2GbnrXkMxvXOtw1r1Zih24wuC3U4pipiiOaAY0kinqf6WRq1asVRnFfGX7fw
oDJuKE6iDc8FpoyVCKqipdHLtbXAA+F/nveC1Al3iYJdhVXjiFG9/QabCotAdpSam67Ntd0l5oXd
K505Fuy8b5kVbHzfN62ouPoBqxdPHT4IdQnHn85taBvK650vzY7prNmhtFkvT161R+G4cNJbQ0Is
Q/ZwJQwNliCAIdsIhZzo6BXQUqBNm8mxjA71xZZ8DRmS6d/pU+/iyEBjXT2TXpZC9Y2eVOI9dbHH
RqnjnWTFpeeWNeXTDjSUr+GXb8N+7c79u9H8ownpH9GH59ZBsP2Ofb3WljsZP4zRZojR0x26nSTy
1TETCLaMV4kF1Ca74yj/95rFSV1ji62YjHXxR+E3qs6cYAntEOJikKdpgz/O9djsgvL5v5igerdF
NtTfOX7u6rcnikPJzr2R3TbWL39vaGfHyUvedgI5GM45k6/i6Ro2daTDpkoAtx4F1RDuHZAKwkGp
PkZH1iDCc68RqzWTbBFwtn7+ticltMIFGW2wvtplfpctsbAdyySBAtFCm9yJ4KNEGGsdk7GgRYN3
gODL+ijsXYBivJI7bphVksPYK6bQkPnCgR67xuSep+Co+M96Dek6NJTsobaxKZ03q/vtYkCofn/Z
Myx/TuvTtPyoD4LXX2qmXTSUuJ5kyIL8VYqbC+CUjTYzleut0pWlBBUHZvR/J4gghJIE3ogG/i+n
4r/HGgnFyBd8pHtNyYbnwo1KUIMaxm27jx/EjyYAS9GeE+96iQMezyqO+EgPZIOQgizs5EtcdJ3d
wZWHVACwHYAfZiZV2JYgpxIBsBRubfJJE61U5eE2BhO9HD/hmSnJdGGzZug+OEQ2/rcty7Gsqexn
6LpGr4cAk71Sql4CUYZgrFExY5mkyWaMbmI4L7Lk95XqqmelRlZFSmyJMyYlA16T06N2Ix1Va/xZ
3nyHotHH9BESmEmH04ERD2A4Bu31dluyqV5K8RgoPRl09cTlKRAIg9UvtMhC/RZHJUQXkhd49/OR
xBXOO9UArJTI6TylEIRlKwbsRmSeDiAjQcFLE2sv4sUssb821Juy+ymdeBQDhedhzEHM2FWQ/lqK
9Hw7YAGgomw+Fr8oUQU3G12NIZDNYRH/89y8YjfxwjjuodFoQIlu0KAsWCY8Bin+8+ATT19wGntH
54SnvOF2uMsXswmVCDeWfBv8EGIPJ0zFc1+LZrS0DptAewxl5oXDHeJnpPOf4jF8mcvMms5Vcvls
yD7inqWasfkGWAiaVVo+mMVK3E3l7Fg7UIAvM5BtAYfYO/3RAj9hpcTEAd7QRUgN6XNhv7p7vPPb
4/GbFZ2k229gL6ws1attEr1LpdnjSt29WPd1uR9AjfVHeHPJhRl6Jj1nmLTaWq0ZZNm3pVTo249o
RsQ3mL6zcM+bweMSMFZKFztrNhBw2oRJq0AcOdJjIEw8ZVzulnc+XGHPGYazLwyOlrusAzcvpSsV
f+g/bOp5jXACyjdrnX3bWkr97Pdh/awGFb4UtYfLQFTN4Zw0jyNzopJC4KyRTS0TY/C9kCTenQkW
tdX/iNglYvYZSzOeAKSZQFu7UOAwICsJ4T5y/03vtdRBBtM3GTx/C5NyN7Qlo6mf7hE7ArO1F4k6
ElwzX1mSVee8+8jLRgjSkOJElWHMwFIrRn60O6XGx6aiTC/qctxZkLuh+J2xO2R4rfoPQXhGKk7f
u4RoYfbpHt9RnCbAbP3ztaG8MsQUqzcMwIfUK+bsiIsEnQMHiWFYmHJKchq7s1VcHh13KCsg+fAV
FYszPrCOycELnkDJPZBMOwDfh0otib+pPlmqr6w9AAdwK87B1n+sM/ZsqhD+U9XHf1imk2QvkNhE
5NOhnczRwXboLwMRhs/2ZtnqE88gTc0yqFYo9oO/vMIpq42ZVO1PmgUP2u4NkVwd6fBwIfd7SZss
lGc7pvfeeBf5E7kQ3oVUp/IZPtuYiwvNFNPUo24wQMIU7bHZUbz5GUkWA5qypad+O5Lr4DL/2OvV
lXzPoE7PCckdn0bCFppItHaxfqiRVRK9BGE7pKqgex4gI2a5kJ4SJpJmVWeUU3fetB8M2tNu1Lxw
mtLBp8/f0QyYs2bTRSkiR9jeVi1vsN3dXabXNbLT6kpCa7DID9H6W7tcPL2FIZoJbdlLB0Ektt/n
MfwcN+ehrn0OaxWyTmJTMrYk8xF2Bb4wTSemxdF22RJrn+5xyHt8R4qymvP3MffoN6+Y/uqvxVJg
FCQaKP1bTEwtrprzXmHf+5SuQn0QADwC07nbG66qAi3VKZDQ8dMD2oPl7I9TCvxQchaCdtfi6QRo
UoX7c4TGVIA+H5aPlTBwX5EtXP6lnGc8eXdFjFrRxcM4/vdd0CdAeVOrgMyHPuMaWjz3HqXVmnRc
SxNdTfJkiZWXEbJKYbOrOG9u0R6iA7cT1IcjaeGmKxyaStWyy0wuE+IZAi9Elm66rizRGwILh5Si
CuAPuy609ZF7pkU2jK7ULsFzOGNoMkTg+CqtBIDwA7P/IFkIqVi7HYbFHQLWTX72WGvJWdfGY7Mn
9WfP6uhkU8EzC27BpMAVGfZN+qAPUzO4GLtIv9bUDhiyhm31hTLm8rHrnutMgdegHrhp8TZzpm3V
eLRzRtKRrzbIfGceA+jnfWWC+xHyIQ8a8YkNDgf7O2ScgtT3Z2urbb6j95cuKBxhZcssZ4Iae9dk
6IKNsaQXu9NQMTlgqvLruRwPws5Qx+KQRSUzlLF4PAYxo8INJTuhbViqDVjIFGWC4NPhuzcSsZuI
RWW23abzTJrfGdLNhvg/qii+dOYINI+zHpRZgGHCje3LquyoTD2nr9NHQ6or/hKw/tv92Fmmv5J8
VtqH9DDJ9QaR1YV5Xu/WDpXJcMU/wbdtjKSqdIkeX/+LVjJbEpuN62b1/4zoAUQqszs93Evt9x/a
Xmy9rIvRFRW1UXcHx6BBQAgIYj0jbsRFgyr4qKUEJzlDmznzC3UqYgLyzEm41HEE2sEaZMm1tWGI
BsG2+X6oegCMkEl9Y8zk09xegPF8CkNB7mrm2rRNCnWCOMvbztvjUEjfJtCjIPDZoye6bh2eNLUa
EuyyXZIxvHEyNwGzIWvlHXqv+XpI+y9XLRNJPmSTgbG+QVCiy+jPdPRKauMNWePfv8IHCrUcVHZj
bg3F8WOBufQDn0OExAGjOXGbYtDeUNdm81woUZQYK9fvIaemRp8NHLlx3UjJhVD6i1gH1q1DmvQO
MCSO9W/4jd0TKOoIamxadxxHO6rTsU4lWOi4Rg/GJcMlsL9aTXa8bhyyegQ9nW0CNs5D1qyTjAOl
iypnpNZMLSa2Scg0eWNvMmyPHLzKU4ffejmbmRh5JtmN6cc7IOhicWzRb68vtOIC+JjSBzNDviHZ
LS0zPr/vGfRl3c4JiU77pjbqz3Uw7irnM+fz4tb7SefJsVb+vKLy03wafApowjZeQ6Hme0MQDPrI
SVDXcePSzyR5APdQtmwyQ9FOu0AdBVHSKIX8JVdeCxEvDwgmwvphhwuRPzwrhwGEk4ETtuemacH4
OTzrXbY02BcgfVryx8e9CBhO8kxt5OQcL9XQw+xLPk7m7WoR5WEgz4J3IHw7hb81rsn/8S0qST/P
2XAXiv75YnQcP4u1ZrELPcDpE+OeeSo+W05gbRr+iteaiEGnBgKrxK0OqNe3LDeikkYJdCUsrvd2
JtPH1yVAQ0CrE/EzyUPMbIQbYU7gwEkpElHsnToRStbWbIJCpS/sn7YFcrZ6Mc+4d9rBok4W92bd
v2djnL0lUqT/8zj7klgAHPXZPr8kSTRc9/60pwkKHjiRUI+j009CM9Yd2gHFKVl8jxdytjG5CaAQ
QkiCHVXJ2c8UWhaRw+vucJUEJurNFqwPhEKqlWA7SyNSWHIEli+f5EoKa9HdROCtTTiz/vGjt3uC
wnnrZqaBw0y6ARubcC161PnyQzEme8Rm4CnifvD/8OJMJ7MjIHCYipUfcRI8U4y7+Avgy2wpWJSd
U6iRZ/tI8/CnuiYIB7F7WqkOdWjXScPP0pkwbtzVBCRE5/4qwJL9bZtXyw7+brqn2sp097jtwWlf
q+vVp7jj2DNITGJVFSvkSBXF1miQ7qO1CFyk7w7/VnlIuc5OLl+362Uoy1vCAPuYMl4JalKlFm49
mLvDLmWFcGEn7nq++rXtblNqajc8OaLm9u2FRFhS6ad4j/a0kF4nVBCv9SpHQWYTlP+O4dwkIwOo
rRyTAHkr2zTKNubWJTgZm47NP8akCzBEMWDaFBJEjO7NePF9UCF6CqUJBGT/ka5Bgr+iVoqUh72l
Pk/31KfADKmF4m48+Ks/0QF3zNv1Ymr0OOhMujl29CPiDGII3xjSM/mGr/s7PbpavstuYVVTdMZb
e69GW5DiKP4G8OXO3KgCmSSKUkE8h0sSOg5CvGfQhxBgfzR7Vu5lo4eumxble1GFrlmpsWVKYnNX
trNULqh0TPRL0cGEH3M5rZJvlcsAn6E/FP0W1atT5bdnIzn8PjJEOWy9XZqvW/4/cZ9kfgSMRTdE
v64Ptt8aHH77vKnaiNQYteTPXVb4HWGPvbopJOdZnR+qxdhuxiW5YJnxlqD2vm19sQVhSqB0tBna
kDL+zGyLa1nPWTJCBxgQghlhcCGL3hr7eyvyAztQd/OgRMQn4JgW1sPNe3wH77m0a66GkjgmogXn
w7eGBg0Ek2VGeLZLXggJzX5SKczxLwOHAnIrixiM+4YkH+41C/LkY5JbEtKNX6Ly3l19auqcYF2R
+9CV8qsR2ZJ3Y7kkWfM92m86qrgFTxy2wwoX5sMDMBjr8wJPdmIRxWpHkrA+kBmJn/eTl8j6X8Zg
FpzKVDMYqu02vh9Ojj7dmKIE8tqODtLhwmbk1ma/wAWNt4HNyEWQ4oNmcK7Q+2unFAzReL5pqCTi
jtZ1Q9yifFY3vsG9gJAqfex5HPTz1kCPgaquS1gNKgOgeEncT96YVTsxtVKz46TY1u/5tDTfH7eJ
fd/wNhiH1DaEtnH8zgr+VjB91913XCybNjk2P3NM1x4z1WuiTSH4wg4LPumA4T3c8yP3/uifgLEm
LYCQ2dJb87acB8iFych4dc7csM59fnVmpGaTVEwVSM3r6cLsf2McE4kkEuIcD2xZfxTASVgObSjY
xVmJsz+TO/fkmZRDANmIZDowwrqPEYhG7oY0oZrfoiUiVm9wk9RfH5jypq9w1AIoENoL0YkHrlbm
V3wyULF+clMKKqmkOAGDskktsJam3R9mSetUhAmKDwikFGzpFWsegGb/G4XkJLFv4QrYFPH3xu03
OAO+zN4XajpWUy4cCyGAPw8/5iUMuRhiQkUBaVOSQtcmI/+yGL2Zr6ydRD0N/GQolj30oqXEpp80
tDn+3/+c5myOUYoocsfrv0Rzzwkh6WKM1BR28X4mUzBBS48hhub00V6B+VIhty7IKln3TQ/kEszD
liG91bKqS/l7Yhs12k/oLPbS8r4oMzjBF6GO1qsvZvmmNWHux7W9jbk4XM/lhzhhQ5Ab/VJojACn
vtW9+zzQA/b+rgd5UA1IxhoRqSUPIlMXWDyOBk3dUFNwQxXu2G7u5GyxsPni5AmmZfvz5aw0xEXp
1YrUye9npfUaaKvaWUxUJsFqZZQmrLK+S+Bmkc4wV4UEtWELzF+nvlnqyVm/VSUYU/YLPjUwE/Dg
4kOl/Wyc5W8DSK+ju42/4pvyT9n68JfuA2D7kbfEgjxhxZK65sppfp0A+I+gLXn4x+Ppk2uhYS0E
EZkyRy4UCziavCkFMgUs8KzYeWClsTguR1/Suxmr7SN+MzWsL94uc9jxUqv/3DIbU7q6zKeOIMYo
XMQW2bgstUM+VqaBcXXofQBVz3QdR4VTOZZTDSwB9oCfODEVOelLL2HWjacWtvBnxMU6nndQkbwa
BzKXksmiRZHB2iTT2b3+JpBaFhTTGIwiRnnJLAyGPTvWoeTmt0agW6ZbKuYiJ+5xz14Rl/c2OID9
SkJCKcL2C4o68DPLOXDWwURC4k68pkublqM8rwA9iYI9/z8Z3CcgEkRIiPfleQZq4HMZAwtfa0Jn
b/OpR7yLIneJutissMHnB8XCVKIaOkym0FW/PVN5QYAlU99PRreV89Hr0YTY9qSLNrCxQBQoUNRW
BF6+9zGYrwNu0mZCB4Vfrv5mpVIfjrZso/q/2DoZSypZjbjNZd8WPPs3ucjPwhjBw3lyQg9QabdW
jCBmhV9eAFR4bDKxitwxR/Zyq0+GQO+cJb7mXB7a+O4LyCQiM40e6evTLNztfauZ5SmzlWi9XzFj
H1PRE2b8OJSLf9H1pJNP4e+evPPkCjdynJyLbWE4oYNEaUereZspDNwVqvolIdo2VKt4SFRc8SQT
bs49xhXrJv1W3S9TSbD9lqBnVuA+12xWTQf+KU7NN6+cc/62iy0VRql/aEFnfa6yW4loKZhuRmtr
R4LPQbIAViri3pcXqIJ6ADd3F1Fh3PGic9fli83d74lkIIxFpuElkT2wn0nOjjOo8/lgdfyBG7AY
IHyr3cHBFeF86PlNyfk1sSJnkJ+d9M1ZEWyOMexqS8aX1BI5kfol0mRvAt0kaoSil7wtSqYZ0Cji
+jN69AN1UriJ2C5QyJKjESTG8x6WG7/V9h2kvDUhO2/wGZHWeLTbUe3aymGLm9bm9U/zL1gIwwAe
EpWttOxpsb8NkaGQiqSg5WqsnUdnWuOFF14KblEA+5M8rXZesS5is1aa0bPYXEdHZo4ViNBtNm+d
hMrXYFWDt5IH0r/4hFLDozN/2iHIfcSpqv0A311inqeBcaIDxt7sZOkpxzvTAIb9yXI65Cc7OKMs
JuJySlgip+WoLcnOGMTsxOYF2y4+mgL6kSp4xyxnj+ISP5hTDCCtgrUO/eH7nnpYytNqtC0Zpb1n
JQQut99kfgo4UaB9gJkowp2pNO/6JrWwwvBDx8zhiYMFNwN/dN6ZP/4841HTA/RMty/idLF7nFJl
crFbv6sufSiiD8wgetppbfiXhlNYoK4vlH8RD/xBXN+oRgJ7DC/zr0MzEPNMCveHyJ+g6NAuCEEX
zISvM0eFV3JqtX5XimGDpcbfAF4KA4p+pXkRZj3yuovBnjUdavIjC6FEfHqwqa78HzFiz07Eko2N
AJ4FaK8jMy2T0ufyVwc9/tnX83EzeLtnLNNWJ/R3qOod+DGOzPOiW9sskUkYrIioVW+fm87e1pSz
jlVer62vXrVowKxnmadFcDcK2CV3q7867KRF7B52muTU4Wei3EN+H2EMy5UbQndAZEEzGVLILxBP
CAY8gk5nqAJqxpDMfcE4TKwdbmwSsa4L8i6oubQGLFdsSRz/6Xc8NLlE8PvxkL6wxwKq9lY+PJ2f
L0n0vg+7j9nZm6n4Kf/BywTrxf2sEzy35CZBO7EcExxuHFIm73/PmGuHSOD89k6fTFeZc7/qpWzy
LcB1JZsSZlLeA40bw5vjzuyLtcYniRgnGrb7RvvdA5xZO3fNskS5fxw0qHWIUyadRHa/lIbXuWU0
xr58OhJedb6wBOE1Q1LGAq2XWoVnJ1w3exWV0c2qbNHkMfUULPAjxu+HeCAmMxgqBFQkv8wdbU4x
cf6Z45TH2eGdwKlZArX0S5XeAmsbSGqe31dBG5nDpFGL/HFVqXnu0mrtb08pRWYHvKOJkBdFhvAP
4DT47+nX1gvcFL+/n5Ziqn2DtRtpmgx5aNk3rpCDPTSVzm/pdpsIfzdxuTz8kVoK6vy0a3fKqzXN
MGmko1aYvY7v1NjKwq2rcA67W4p3AAObgBBdS8dofz2Mo6VcjC1Iv8OawOc8uHdqAu6Mxz1zx5Xs
tsku9Ka9utMPjeHUugT22gXYX9zznD4V7hDZ1FtlGrjrubZPCobZZq914Rr9kqrcvUoQecdyDKaN
2jW1DYhZpPZ3yjRDiuQM4dhwTeRSF1ptsWqfV5EkIea3281t+UZ+/EUy4SVttRPn0+XgmXpdXCJr
6B81lilbd0Ft+j+WjO5QyRyLpfw/yIAKzvGxblA+m5XjxHxnGYOzMOsTHrod6ye3c6R+wiVVYClI
3U94fKeV/LXllZlZLNuni1SyCZT4wU9VVLtLhsG7fQlzTzzKp4ym1bqeMHbcFmjML2MgqZqrAvPh
ZwKpaypN6SjVKUORzM8RY+Xu9Tg+9PtMvXgSFF3E3OSAxaNUW1ouMucgz5kSmteVIpz+Q+UsDkrq
HQ1JWiE3SCHqs+28JI46MKLclq18r0V0ioxMAyGQxI2vxleRWolrzqj0tFNste6SUUVam4W7nA3i
SwDZhIc/yoPtt1HQt8FiU7SsNcVQBSasG8PkYmz2N4eIpguGypctC1UazxrcGjbxlzj+2GTMDYVJ
IKuf3w6qkUp/2p6IOB+2/uoNqsgUtB25NSY2heyOHAYTz2LMc6+5TqmEu/9xNrXL0myuO3fZ5KuO
oiYTlug9diie0Z0Bp9MWtKmov0jCo2hyzHIWfZw3J/WamYpM+3Uaub+PeWmQAVeo8sEKN7+ep8cl
H1mG/hanm9qYPsDtgfvHMMIsCsVLbeBkvw73ioLWEotwCQZaHLqDcSMGnUDwYES5jmdKAAKKPL0C
0cj4w0sUQAwF9898BUdhLHSX+c2avVZ+vL8W7u9fG6NHvIBdSufq369Ny1S3dEl4KopyETVAJrLb
kOgfkNzOzBDSZMFSvDbRkSzL6yzMA1t1JO2pmP846s7CKqAJScYMjxSPKKK8yWlvBZ/yDkJ9w00M
cZOVeyCC9bNitcjo2lzM8cgCTddp4ih3V2it/JH+vZYuhbTCMjbkJmXAqqe3wWc7XLzpL0J6Cqzj
YtvvTEIkt5x4hO5LHWo4DoxFdW0LpXZmx7SmVkNJh2xXUIW/WMJsvDnfjP69lF8q6zfP4D9gvaqT
M4gu5NvhbXGvtqdKxbmomwKyJL9TLNAHzFsarYp49hUAWo/upUmHqQkwsmwh5eVYwRjfXuTioyI3
qAe5DgMjNIZVShGbYF+kcT61FnfPpLbfV0DFvL2IYc13gku/xrjmO4bBkl0bOASLBiuuPVzvkEdM
Qm5t89DZ3odrzR2hzRB3Uz952/EtnyFhr83NaNORRnuW86wPTLcK23Xloj7+TVKBAwt4L8A8l+il
C+QtARUeHGvbNf5azuDqbAB43yngr1dzW+ry+oCvfn6RNpPo3zy6R380A+S+o0BGZbuZmtg8pMuH
3SY4ifslihdBY431tdM0w2Nk7NNd94IvrERmUJCxii9HGoNDv9X+Nsl1KCJq7AJ6d4JXjLy0GWS1
Nyk6VWyhhD8Py+9gtuidGE+RRYuWo6eKHmkJaFyGpbGIG7ItUkaKNebpFCaeJui54igx/HdnzaH3
lCYjdZAyzdnurPk8rN+l+FLqTIzR8x5LoATlGpMW58J/Frdy0Qpt2bJrw/mvEUEIgIou9kbUlGu0
r015yxiEIHa0a6l5Wu7x7YMjHRHxNh6Y1M2v8AfWcQrigLnxcCd1JtvNE/3DpzO2fBcf/SVZXq4U
Z3mw3tbQOqUkCbLq3h5j3P1ceKZeYb+JMok04YHpkvLoQ1bj3S5urJLToGI2OHIYjVKunVJlQa59
8FEauv1aUpCSSTRjiDguxviT9LWj4g7Xxs3N6NRTRtRZQrFwfbPUl49MXdBEgcVvypkBMjQA008E
quSAdL+a9vIHUHh2eAqqhZgomRt1g6dKu4Vx83a7mtTXN35/x5aOAXAMg/nL0ZFHbYPAzYrHWhZl
LCWpSqjpYMZ2EDlXMHcjUMzIiNQeIkmOe0qGh5jDiEYQP/GVQcuvgqsdp1KcnG6ErfYYPxUTE6PF
LiFsCpGmfd7ZMnm6Ura0x9hIm/fSgRDsa5sYlZIEI+JSnIxTd6hq73jZIihT4v0/oItkZC8P0tXx
wY+3PFle43mhqprlzKF6FNXeB08A8FLUko5kOJF6iWoDk8qvUZaJdUIIGx3oFfoaoNS1LTirG5SG
mjXhtNmx4M+cOBLaVuVYstR6tZt+Ac3VQo6nHT5n8paJuJ7hse1qTprkS4pvgyWDhNsS0FNxOT4l
M8p4Jpu2f1dDbgVhVYMRTQH8omSGqEWu3kVH+rwzF+rmm6d2+ZcNoxXf98lhWSN2y9Q0C3qsMELt
3uOu/peqpDgXq19qOoBv+T26zzuarvTtijYSssOTkEDwZBBjq+c2Ml+7SMJCWOw5bAtpsHW6yFpu
2hgcFoVK22JwrwcTFgcVUqLiiNVNo6d40Az3SVi5voUmDdssHqbcz4MtLDk5slvK0ez4OJ9/PC4L
agEWQtHg7cl1yKI/1UVva/46EyxVqZthXuNvjZ28nT8fOPHfHhvGGcTgCvSpVynmb0eSk8+UOGID
zEe5rEDzJc+3X/qH1mzs4rq7qEG/nimDz5STzBasg54ZBK+mAsgBXt+PyFPgAyFDut6oIIQpYWav
4i6OTJqU59atUxjn1qp/zMudswN7YbSZyJSQRvIm1OaSm0bQAazVK/0/+Gny/b4yeNabYxYgboJf
/nskrc+WLsY/1XIxTESSQ8s1YCwAPyTe54YWEqp2fgfZ3QGVKbm7AEMKWhX2TPxG0DQdqY1CIesL
y6MzHqflJi1WvRKFvOxf81Gg7Onxo0R03XAz54vLMvXfB/7EQwVOe8PryDYya89OicaIkpcjYHXi
xtBspCXcTDGkS7w/pjTuQ63K13ymfFuauQGSuVRej9Z7jab4Xz1OGyG+4AX30/N9WWVRBXEd3iKM
ad1kGhvWE7pAz1DypMYAdKu+EI/IA4eD/VTAqU0eM0lm/1yzBNF5UjakEfl24CjkwTu5mWFTt2Ra
Q70EUeJYvVOy6B34Y65qZuGK76XeC6zGLZWDyCFS+heoVRpT4XmIPQa8oX2U5CCQXKhW0ppbpPvz
4x3dmZ2NwEIavmob3MAD8rxpBcn6/bFSve7B4zDxVsKWduP4A5tm/MqXaoQKoEJkZTFe6eTCaOUo
jhXVr0KgLHfjpN2NZSHj8cBZNca/HqZrZjyKCM88s5LRXokjr8rrJA7GGS+f9ldg7picmw2klbr4
SUwUIGV3nme1Axqnfa9/PkxNPURA+tlBSFQmr5ku5Saq1LkTNxqSpK0Maishpnijx1BBOK0duJ5p
YprHsCqvDe2ylx1IZ3Ewj9puDfBwKPFS/X+lFW+xUtSlktVaql/PbmxLpM+IVqWy/szYC/8DgQU6
6ZkKWNmIe2mPc+glhPVZuwgbNz9GvBtsMJeVWvvHjPuRIhcuGUZ9ZKgBpSz8uXqF/HTS1O/er+vO
G3+BXD+dQ1KsnyR/QTVrrBg6fVI/po4jlM4ujrftJ9gPMnCxUlKwKenK75ld4NWEKcaUUMZCp2ws
0YaVTsOkUHBWtxCcO9HDFMHdN1lW2BiWLZEHOn6mBMd8wUU3B8Xgwv5aDogZReE7ul2rzy+jeRlX
fqKdhtXaiXrEaTBN9QMNtCnN0QOHYYqR2rtmw/ydG2O2ES8g1VxUw7YkLpLdc3zOWF35pQWZq1Un
k6xeKD/wmZHe1e0PvVQqfRgqMH5yUKmJCthoaJnpx6pdxMoYgmgK2r106G+T5qb6DlOBNnXKO591
0/l1Nxi48WoTAW53oBkfMqPLI4vYFp8TDwAa4vrD2UgKf4q2YNYR8LjuOh5QHO6Y3naWji2iVd/x
rdL3BHdtXfKxXtWdxaNChLKI+nCtfX0WqpWqd5d/l9v5q8tqtwZSwaO/xMAfrqjwa9Fy6SPqx6el
EV5wR0Tw6Lcjopp4bO4kvmvRCVyd3MbYAVMa7mokSPShS/Y7osP56uvZmZWEqRbe/aHkDaomt8H5
/rj6XXvRX3Ro2y9m9BsRuQ32c0d1JODIwDqbRPDrpYbKVJHOaJ4zePKz1bFoQH9dx1VOQCxs+Wcq
D4ZWVG7mF8VUZupS1F+0eVEn6DVVaI+5mTqAIZ4+rJzBLdKUc20n01X7Mdd/BgHvk7BrGSK30m5C
aNUXuTBQ81vAkd8Q3lT5swKbvcnOg5MoexxkhNqC6B0CaqjxvA+JYKxxxUPC/xVR1f/A6XcMk0g1
1fhNGDj9OXGBq2gRrl3dOK7SR10WJU0fMBxC7Vgu79SkC1i5/YfWDm7bPohkhdQlvsf8QInVAn+b
4i4rtvHAPtPVedNSsbobFNoGG0pgzxN/gFR/EeC/Hp5kP7CpMiS2/fz6wv1MQ0RGADaqM9y7lbVv
n8UbLZaoxp+tBYB1OQgbVMDva31DLsoZCy54RQvpEbR9k13oDVgqqlssJcP72cp2IcLSSdW04kSh
OV/PeIcLpwp3dde+IHrArLRuNoSBnhqWv16HUzk40r0U5sQg2S/Xd90uIG7CJXcCsatM37DTcI4r
fRus3CjvC2KZWmYBLNU38O4xuQY7U9eUaIkQTg/yoAI3wz55y8eLdyevwOcanjeeGSqPmko5bvQ7
4AsO/c0k2jLFybnOdBM7YQ0pkmrgxNss+WAu9VE+wp88oEerHisIGNEweKgbDcbPfLT+yNq//gWA
YYkoMqdMRmyneFL7WRdDCUvaa8TNUiKvHeo27GYM3fPqkvtA3GMLMo50myc73vabFlEtIDrIRmeD
latjCpKDWh0gR0eMMf8sEFz0E06+evkTjPozSnGcf83YPpTzgMQ/DKip4qGiCNaMfNjmavZmP1Yg
IrzMYJzGco2GEXh7ivMRbEqKynSeSqghM7szGKBgzlhr46zdhuLsnuT69HmwTohFX3AtM8+oepXP
Bq0Gje236SGdZOy9w6qz+DyKLjaD382zNqRtDBEFTis6snz8OjnypSJjX9BhzQuxhgb+yHSWxTCh
70OZJGttGlUk12+GWAK9r8D6z+pKF27sl9pYCK4V8N9tqYUUUGyk15iW5m7kq2Du4LPyFrgtSdFS
8vOkifgGK871XD1IoufC3KX51zD7N5mLPyEjZS7eRFv8H4FJ0GsLaP9/LNf1TTTYhaI+RSbUqbLc
UvRjd2HK1263UVN85ZurpFKCObr13g9/QsM/l9C297jNFSs/8mkQWcCVL68iHvd41H73I/AIVV3t
PGrTA77KXlcceHMvpa4pI/VUywSLTTKlQ/XHFdcpYS9nlXxtRVkruIDpILDmxNU7JfeJchH5aBmp
tZSOH3896RRNRB1wRSGq6wB01n4jBKTr1v+05EdA6Mt3czX7Quk+P2gErMOF8pF4MEduUrMUbt04
kuwUvap9+OdgQPUqN5ycm7RsYvEY0/3itkJB0NtBLQAx7IS821ntGQxlXd2p/1MhlN8vLcUWt/px
Y33l1+nvXEIfz3sF2/3m1syv7m5jweOg//CP9m+/w/0TKZWj23NYCz2QxwYI9K4Cvs4cvk3B1Eue
Fi7GKc/92VXGKwryqXz77MV9FB7vKko+0llaJ2PhQtk95w8uAMGsEX7ocne/CxqUz/qyr+PmHX5M
vNtsXNxHixknPN8uEcvDhh6/tfpmtU4HrOJuooop/wAHUP9j2io0j6Pot8iVd6a/XBnQ037D72iE
npK7EqEKUStDi9+1Z0rPP7k5Oox6Z5mvW1zbeDEYgVb+eqcYTFOCP9DxZMbFSrNSf8Sl+IJbyD+U
ck9Oe9+G6zINuP0EF8Hnj+znJ085y8cUuj3MBwhE0D7swa/xt2tU2LibKxCnmtEt6BHq67Yp8HRM
qVDIOcK1MfWAgxvJJ6s3A2ZH+F0ZmgiysFISunjGzo98TyZbHTziAYk4nT+uB80GfDEmcUl1P7Pm
PQ65jfAEYwqUMzdxX+jbLqr5fWmxuW6mcFAgdGAGBZUldoegfrtiQUXyEUS8Oum1uv5iWk8KK/pk
tkdWZFX+zW+8fjXMmhr9cm6ezpMymicuNNpne9oJxT2RQ+gP89xA4e7M4fKBTLMaH2FpQkIucbMF
w9sYigyPW282jUqQ5tFDeuLdCayqEKOI2fHZUIbZRV8X7Hmmgg0mf8UZ2HQeUjZdqwEjR050Nk/Q
1JQr/nHUYPUnAnTTXQplKDreme7rHRopqJCFcvZez9wuXZ+Ijy4oOKV+dQprJ/RMA2czhPcxV8p/
10Q2GAc77cSk/iKt/Mal6ov/TnCmgloanRhrfRjMsyxaR1J5gutjisvWMopeJm+NSFemfFQ5CmCH
Pw4HnKYHyQX6IzhIiZQtQi4cYAkm3iGg0HlvkLl+ncvFMUijoPmXGaVPVqcs08wPy/zCP4j8RDdi
SrhgM1s4NMyfhiCgL9nR/9HFDRL3nHTFkKkNUigieUxaEsBV06IlmFNNOQ+gZccZmAjF/2dUwBjs
x3HtwocTybkb88qSEP/hfaWF8EhhW8EGEMO6fL5y6vxX+DmCiYZZ+avgyTJWYHZdngD0StB+4j0V
L9d/r8OMwlYaqLrpRSJ6b71HTc1/4+w9mDzbelyUJpMr5AFAtDv30PVO78btkpQ7IQHS0TwS6irA
2O8My0bEwctJl5Ebr/ujo7FZ+Mkd32UDp9cHHBdpmUHoV5Ls/akxnexG9jSqVv6j1n/QHFzUEWe6
ERBDFNsELfQWQ7GqGrw6h0JkwzGv3LzxLSTDdtOqqjVZJumIb01oDJTAnJaqV3/JOfAZ9zGQjJJD
1uNrMLn+X6+MwUW6c/ZtKbVqbR95AXGdc4/Wo05ikOtVE6QBUZzOsB6n1CWJk8Sjx+6MCSozo+lJ
3GKs6ggN7oittaCyL4PoRmMk8uLQYbvjg1YEy9V2z3s+zh1CkMJpSxbZzhuMjqPYc2G5FXHfR6L9
+7ENdqEeF+MqL2CvUZJ9LMGxevou3dwES6vPYIIt4y5ApzBLBHHaAfuOlRuTTOMqO3l1eReDhDPe
9yHDIw+TkBLBGpLlaYsB99wdnB0HqNTpe/LBiUnatXyBXD2yxF0JuIZ+v9Fw26jfmgfean9IK/X0
2GPZ3vk//RWPNNGVswnDmtkOpFblk/crokTdm1yzlqhYGp5S+UzwS6JfcP/rZnE/PnhI1d+JCMR5
77C9YNDmAy1JV8bVNpw+PfSF3bggXUfqxk8PTWkpDZqVCkkY9hWIBpujhxSOcXq0CXQCTGUFOK+3
bOuEZZ02+mThwYzqmgT2HDPrkannGlhzEVdtJQbK6c0Co+HfMy/iRQfPwPC095/37m9hK0VtrsJ1
4Y3obmbYn9Cw/4cxwHvRUHBtJRw1YRzC9+0w5UbOmFV8ollFfXp9P/b7wP9dfI4FbLC8w6nn+TO5
0jli0dKuQKHgAL2FYz/FboajXhbDMVfh8qUtNa4OGU5RKEd9fgC4LtcgExzzDwpKq4X4pv5hXeGt
+s91hXJG9FY9Wvnoi+T+2jUF/RfBluBBiK8CRFATkn5UD0xO2WUhqtGpakMIKY6Qa/pNCg07X+4L
HS7GwsNLtell4ReHHJKdKHmH1LVNthQ0Cf0u+E77dMh2xH5k9OfHeKZr+xCpQidjeipDEny7q/mA
dXFq4O6N03s15wkcZUkR46+CYFqwc4sITcJ3idnQIXkZU26Bd/M0mLrJjsbMENizwL0Jjm+Pauk0
/68wiG3g5KuWxU+HbsuMceEmdixZ981hPhWMDUsvnbz0n1VIclGHabnxV+BqbAHd1BdatFKdkA53
to6TpSBSLPXvZJmqHtthdkEUVY+NsHqh9Y4fe4g76zVUBQIkOyuoJ1zLGZaCpTwu8SOoyaiMe5Wa
uKv3KizZ3dWm/tQKhM3fcoAfNMeaMULvrixq3FXthwNSEZZXzLOk/c5vr20V1W/waPpP7C+5/Dmx
w+bD06yqGjTlY6ityP88b29QVV+S5ccWwUxzA6HSNLciW9Rjg5azbwB5D3AZUZ1oBoBkgYukuPQ4
i7Pq8fEszx79bK3XwSleLnpocKnj0y5rQfGIF37rS3yyeK2Px8dgWQxyuJLKUvPeMo6TQAXZ9aeA
HYlpaSA/0EvSVZfHPm9835igIxEbaqCJIJ5JrwodWOg8EPjON59zBsjLu0fiRuOIWRkqQf0pmAOt
ltV/DRwne0J47SPd5Y7UOoFqczhVDdFc/o/ORcUyEl7anSYB/YYIn96jOESUSFK1C3M9w8mO7aTH
Z8UtrtUEhgWZlRUJ0dRsRM2STh/BPi7dwUJyeveSmeQyCjVCnyn7Sjxn4F/RdaMcdndbYOkL1HV1
pA9vxNbIcAfBsE4jgv+lZzVBx+xPG1MVyiKJWKvY49iaDPjRLWL9X87JdK0rNtjLRqUjwpU5VaKs
E12fnJWl+6NxM/0dbJfcPVwErtTmEqD4zVm3HAH3kp1+IIPHGSE6ajs5rpuwnFbqG6NfZdn2hO7T
vcmxPU4XIFNU944mMaz6fP0sAcIParYChBu4sXzChSqYJxeu480WwJbFltpJLO2Gff7mttD0ghjk
9BSpn3lJZZFatd4zkm+Hq5A7vzW3iw863VBOED8FJ0c/yw+oe6yP+5vzrkPyO4QWLsOV3l8yVw8T
jbOuoDhux1CBZVZ8pFwdalIgOIjf23cOWhhctw/UA3455h7Fd+S5+3YkNtYZRkqB8V+ahwlxsJK0
u1JBV7CH27LNThbBXLyenAiqnCAkIaMCBA0UXXt/DHmDqhFv9r7NvOQn1deUXaTZNllgsjeVZw7L
z/GjbW7o18ZEaKjNGOLkrgg1aseMuL9jnE9HtYoxC2zofuy62yjPAakjpAlLahPZohZGKdfVYp/E
T01GsrWoz/uHJZlu75XHIlnF2IdQBXsRaRpg/2hYujfAOkx6k+GIGHLtiwC9rOqXFhAmPZz0+Qlq
c6od5cvuyFxB2WiyhLKYISxCxdQ/GBGXOXIKj7ahzcFBseN5lVSsPQBf5O/ucV/oSDLOAC+zwYMD
MQ5P4bnKMbvfPvrMUgDLao99zezhcyTgaD4h5DxnWFtXuluaX5sV+iYe0Ayk1uo5h/LCuN+EBDxy
Dbl1/+/+uAF+JMlAaGKHI0ig3p4HsSzcuPmdSwcKU3BuQs9YzO8WIArF+EcCC1aLFouvctyKrjQN
qqFE6PnC4CtLgnqSuADhUa4ZTG3ObKG2WbG9aa6JW59S7oEDn98mr8A76ui8PlFfuv0u+yo9bD24
qOqTM8X0bdUbMHOLQUaReeArbkR1WAtHCTBZ7e4mei7UJZELhYOWtaYyeKLVu8ZzDVupl+FrAUZE
SS5gjxVogcQW62uZhJ8tmUmgABqyRNviHGiHCATikepPyRveE2+4xV4Q6odKAFKz4whV7ePgvlD3
XqapNrD2xj4RThSkyQY2xrcuf4GMfSt8zl5+ZUKf+m5c20pW/DErui6LkGNh+2W1u1IjlSba6d9t
uXS2JtsOUdNRtzTKlYIuF40e2EbeEhIKKeO6gmAA5xypx4rinmH9D205hPIp1Sh2vaTzidUR2/GY
zU9uT5ssA/wXvX0EBD6M0i1rzpSR7dNXh7uMUg/RUR9XvwBWaoN9FWn9LclX5fAL3YhCO18wX8al
whpwbFTA87F5ZjliCfqY6BEiZ3CBEjHwTBwCcvvKpBOzvCMetDDHUZfyz31TmtvKC73HkkneEacP
YrvVrfKvKm0yQ4eGr8v5ovNY5zNRKk33EaQtTDqTR5emCrU9HzpOxxHg0IEIMIQOjKVD7Qr6+s81
RQADAJMaCcx9yR8CztuU8icQeJc1tXIYIb7M/sdxQo//nU5vU1aOhmwe71FNdN32gjlsl3P55O+6
jg+L7V2ln3aYqFFcTpMAg9RWyD2tzEu7dm91ZRJbi97i93adNK5dXgsYm3QXxx8ETmdtPxi6+NYz
/EnT2IOtyBzIo8xoUmtfXbfzbN71vRwzPEXsmEKHN1vAS1mgmrW5exN9yONUdG7NiRRm16tdKa7a
2U5qmwmFMTjwANCx8dvzxc+iq+isyBRQxQVLaXoXSkR1PT9/yneicnw0BWiLt2yXmIvCZ0kTTyVM
091RifWfnTF9wNNVvyflO8wSO5NMsLhsXnm2V7K6ihz5g5JZ3XQvCRRpNj8w+EldEASIZ8pjSqP1
Pl98Ycu81EDG14RxY3tc0XYdOvwaUm51uH3pTQegAWXi8KGOGlQwgeGsUdd3Xa0eFSIiPPiCQuZY
cYbAdfvFvRYojETIt7v1BByIkg4AcZy3IxMGavcf/RfhEI30hsgcbhweKHrqIkdTbdZ9Le7COtsT
IRjXfJP2aNU5Hw0gp3PtzNEGGQM7ZpPh9df8AVGyx5q0Dhz9G83UtvEEeIB+UppCnnWgiw2oRY5k
MkeawJ8wPXUCcio5KFGRrXqxH7ALhzRdQkQgLlXZPKAyrUF8ouq2F5yCv86TqXEMKpgj0RK+qNBV
VZtmucWRY1xPa27V4KH2JWb78oOSr5t80bXAWAvRXHKAQrgjhQz2Mq1+rXAGGqaWftnWFPaiDfe7
76hVOCMeMfX+BZUP5Zed2rnimUEdqBXm85DSdl4cHYTymvO3EizX3XDSh9FLrkcN4tHS7IQUztmL
C512PRyDWpPXy9+d14TJlSHGDGNRrmE1fch/RGCskquP34YlFKX/IyCrVHHCtNz8WWrqEVsXne5q
WDfPiYuTAjqptUXPpdeZ8nH4uUv/Yh2RcFwTsKA399rV+8q0bgvO6NIQnI/9ZOMQjUKbvo4DUycE
kMfCV86mpmMGphM+xUAI2tLxWFKxRJMARQDzyykJWqRq44FyKdkaS88MyUJZZWvZSGtssC4qE2NV
gAxWc7x6qhQ3yXTKw748mA8zHEoABwvpnGSiYPAp/OWjlDr2/AG0kjTuXQczde0hHROwkxA/VImJ
DQ1vExV437D6xrtjxXU2yVpC4nmm6HHXn7eXC5IlmqV/C5/OaxUF2n0jWP15ktaCqpH3Bg4vzbGr
4yDs3MOASA7qjUA29iHaBg+YDY2I58rXbC2UE+ZIFPW7Q81pmvi9Ng9iC0A0Bo56EbWvJng7sMPB
uGsJxCL2NZ2SgkhOeLJ16qgdeEYJOKrNQFZPRw4Hk2ZiP5bQL+LbpPTQ4fbhRa0ZcZpVaBEYPdJh
rWvj/0WSjdqswysdLt09dZhJjB1YmNI5TMxDZD6JA8yqH4wqFhSzjQ3P4MwhaNTZcDq3pnKZ01Ih
auzgkppekdc2f3/VY6s7uY6q/tPSWpCK1UCCRM/GCQD94xjey9s33GolTqEOm1KGN0LT6Wed9w9L
aQ/3oZI4yzDcbACGqGXCxHR6XzfVuau7vB3gDazUBGWsqxRSblQN03pQjTsf1ruABXNLZJvnCBMt
bODPzur2P1ONVtyk1lS/IPxnERc1mIgFCCqSx4+26wXnYc79T/naWh1JUghuQAt4DLKrgR1BLX7v
94R7Nd1hlq0ETRryecTqFIaCaEBvfJZ7Q2CKgqik+RcMmEMeRg2Q84ftT4PagFHABHvMXquFbcyw
uMDu91ZdXNsTcE/V1wz5H37Zxrj8Tji0Es6QdGrddAq1yrQXyWTXmjmnlkiiCv6Aq3V7ZZ79ESXO
EEJGgVe/9saz4TljAvSMDk0PWx9nA/Zo9F83mb0Suhb11uHJKFNdiPCa2pqOcsT+2OK24zMbGu/N
o/r9LLPGyu3y2uE1Y0dRNAp5BxX1kEDsp9ySBqmc9+CA8jFqghcbtaYf2guCOUHJ6X+tFRQWyAag
wvcaadEkXMQ1WUibv0tyiGOEB1ZoUofRViuf3uWqzjYUwiUciydhelDwmuvFKPHHjs5T2/10DoQl
1X1t8oUiwHN/x0+XEvMjGtu+7GFfix81/hAJ8DUM4qqSgKFYB8f474m22XfnjbbXiS+/crmi6FE8
8GozqKcPpdA6ufN2Woj5NQTlcLrXmShJD83ezjg2MUfgE68IacP1b4aAoG5BN4XMS4r+vxm58QeF
HzBSoOkUNmrHOmstWFoMmPn1S2r4+L1N8P53G3OrXs7HXKcVtGPfSx1DVVsKF0wqzEjucUxMVRo8
4MSI0GU1M7I8jL0xw+p8n56scYvLSYq7pWA+/f7R5YFvXH6v3qHPNCFO2JNZyhHXSPN1SG7N8ZVR
wEHq59GXdI/0KKB1Ewb978WEqG+Q/P2KuEzEIBXqMkwOCERvmz/R5B9xEugHlsQYCZpXy6jcyimX
9IWppjRiVvAUnhACFSXN1XDMAhD8may1ZRgSMPDqlLxlNqNrWtzKB2KHM2b08hAzzlP1C4udHJGx
+IpjlO8SCwpRNNFgsrrDIBuM5oFUdWL8oZS9zIOJW6EzH0OpOQoxgMB2SEkSvVUFg5phhP+tx5cB
j1hDtu2YsRvo+qBDWB6OFJfeb1fWibwFLY0VVuX5zLUmbkqTvZzOChs2KWfh+YGcyBZlSYp7n5Xr
dmFAkoMBOY7sX/HE1+XZH77z9hVezvAWEuI67mslgbppBMHPrTvPM9v84+9Oc+s4gQ5JUUCH/vRy
yEVD1MnMc0R/O/ALKEJX8drrkCyccbpH8MKGpmh4krdmcfikr0kQLIk9KPFNORMh4bTasYOzfg2U
sfI51QyeangtYS9kh64vYlRtGpTUMIGdEGAgHwXwiaQcS1pwy1WyixrRV7I0CTRtXDS1VKcR+CGY
dkGCiIM14f7qG5xsrPsD65/dA6Qqs8lNOFmiw4Y2ZHGMrkc/mW6hzKr0aOO/jHOs0IPz74/cjwJO
rellPvPO8Q88Tjqk/hK/+QmhYyDWv1vB0iaRucG6PZ39MM0HVFNTv1Oy7Pij0thuxKO5sWNRvfIb
TEtdb+EHTo8OLHGFh/LuIVkL2mVnOTYO7BZOvvzbJskqjz1IljPp8D8hnOnRYEJ7uRdgT1GP2JRb
/Ps51PhZ1l4ZjNNJdyo5h9Q2aYZvKxHIr1TGKzgRb6mm6zIth8baqZQylPtT5PxpLxoVklh+SiMN
3Fjs6XHkUDMwdVjQsRnVvfbMo8lczWkH2vaC3/VcpBGh7/PeFTzTaAmOmy+8dwCM7q0lZ1MqG3qA
ygHGhYK+5BwaVI6YbelRLULmlnyykAMiW1oYW3Q2qiAkRMtRdqfBT1RouIlxrIqVZTRSbrnf/VW8
6vEedZKL+AP8ld4HuX2WRkLaGxKtbNwHhgOeTvZ90600iY5wn05SgjQHwyR+MZ8CvtQ8o7CY4WEV
5Kxezr44cxL4a8L81fASkoUrzf4O6KiutixJ/chCXpqQOznRDnuZwCILws8u0vYwIctTSpVpCexm
fMQG88P047Zg9SODAbJ66D20vA/A98q7Z1456JXq/lhtaSyraDcAmviCtT7qNPBKBTIcuHdUXeBD
rQP1oFwbm3pCvV+UJrRKvefM9INapFm+FB+nE9Z0fOGdf8cw1O0lctP7+wOzJ0gG1amWPOXW4aRU
MpMQbs8T6gJYpWwaie/iv/2koeqRqN2OVUsX0Xb1yE9dUtU9DOxrQt7r5X5INueUGABQs24+8GuZ
xXxOGge9l2rR3y/okVAMSU28/nC+br/T4mfpRs5h7GWs7YF6xIG5XPczUuiF1YTOtgJfcDYmB8lb
FnCrcVLk/79tsO3Z3OpDNLe/LTEUAtXB6IHmPFEcac0HUhaz39SpwfcylSB4niH+6BCWIJFKgVw6
NOUedbrBdKyyvsd1Zar52yuT1F9avwFdgFV+1GVOM661eNBXjJu1K8Bzl8XvixohRKawyCDqkRhp
fWDSqIdTGKTn7XpdqHsTXMIJxUFu2RE9AWheL5JCDGY8rIZLwlLQpcBgNtiOaJOpdJhrQ8bvQbfa
yhv1giY8XekEAr7DkjxjM1GuyLv9gf/St1Ho+2SSdNgbiI4dlpMe+2bXM44supGi6GWJwrs2FqFS
F0yDRCCLWMg2P2Bqw8S7Bw2NKswvmIsmlE6D6asePaC7kXzd9mte/5XV5I7JDS4mYa6RY9ft2vwN
YlxOVoy6GHaWWm0MmQhH4U1ovqkpckRFMR0tEaYRUtGMi9MbTZEp1DTTApqfGlZcclqcp7tQWr5D
2Ar4NR8mGobawbmMAcex7XnXBScpWEmFtfnUYcCxS+cBMKJ3bUhs4/mLDWBkWZ8UNgJ/5YqkEuq8
o7Hf/GvSe1qQpFf7a30wh+xMuYFfcI7+mcWx/mWR1QsDTpOC4uAc9DX+ja9MJAo+u2ZWoN0OYTr5
2W8aaXlN15Ky7TvU7C4x2kjoGIkkj0XBdIdtSVdx55Cc1nR2nMd0wl0pqt4X65gGjCvYQnFMRL5o
Q9/2J16+817inVexJkH49bGFUpDO2dn0glRgjdFJHlalL6EGOnHK7K0W/wwcPPX77gdLrMcivU9b
Cv4Ve3q6O+oueubxN9c4C1evr0mVtc/H50Ku/I/mPNuNhgDUfRBZkNiRrls8BmxvZY9g6n9TZMvC
BwWuMDa2Z12y7iXwlqk65PO04ZMSvxnY7kxaprsWpoHUy944qYlFQHgGXx0Q8nYpKWAvIyO9cH2I
oWJEqKNQp3WpRrVg1T6qpn7MwK5rqqfXzjNGFZMWZP5yt9eOU/IXhU515a0aZmHlLupAquWrFNJ7
c34F7qYyCKyFAFNXxH+OnIx0ssK0RKSfDrXLderyy0GdiwmqyjQtctl7GcqIj10v9sBBe1EPgMOa
HrftPIMdXbe7a273PHIS9hr6UzPCiIJ89um6kZhg/VzuP2kwcbnneMfTZK97g6Yo10Ym0wWgFeN2
KVn6qeAnKOVVwMJNO9Z2Ca6Khda8pWBmAjiYhj1nJZjDgNUXfusR1jvo2yvvrJb1Xg/RkbnsxkO4
83eTq3JBiH/vkbF1twKbH+2Ku6nf2PIlIQNH8QvDNgA8u3jg/avkCOXAW7gnzXU2Esab1SYavfIN
cHgEszb/mZvQTWEBNUT/lt1Y1P/d2N0lh6KiqT8orkZHEstnZDsaHXQjy8Wwq+kxp3LFGM02QQug
p1zdMRR/h54DXrtjarM45WlYxrL1s0dA4XecK3GyEQrllFwSfjxgE3mKs1pAHDsowIta3JvB/pO1
mT1DLl6zyFTnBUlM5bVhkVW8534eG03wB/IVg66mnBgJ824hPZn8Gv2bzDOb8TNURAw0sAkDAr3s
AN5O3wRFEeA91BRBNFkgnaLdzpf6IS97/7QYWpEEa6bODqECh75nC1G/IdKl2p+fx1dhhVqBzW/E
MRxVr4PclWEccCvgQdg9jUdYl6kqrmUlclfuhcB+ByzSQ7Wcog9GzZcwE1tqTl0ARuh/JqjBfDzF
x7gFtUaFwo5LVcXlxoOgJBGzaAfM6DaYcCFMGOg87aaiSxwaSGqaWBecImFqGPUgUgcCA3Q16KIg
uLuDaEg5AoWVshsPeFXvBw4Sb9ZGjZk91XzEJYea1tA8M/Yjj75dQWMV4G4+gCImfDI56TmWn5KX
Z01XpWvXQHdSmB24mf11cGY+zRDDJVC5ycRS8fg25lR7KsEA2audvjuUGG4sn6rvMdDhiUgeddGF
nRTDtIXnvuVTKUw2p1fZ9BZ5jSiKO2S7HdMzvJ6Ln0EXRrRXIgXl26nr8O1rfeFcE7PD5h6kFWGf
IQ7C4UiTOW9RpvgLLsP3oUt4uI19/ndnN3+LDg7X/J6AIZphsOj8HANmWYyB+8r0WM1QKO6UKcEK
q/uj8uZGThq+BSFIoCHEHMdhdKs+i+6E/EWuk1+t4DwtjWvLwUCtaht+LyENXFk0t8hhNGGpfEIK
QZhdvjhFIYiXLYgGvMVeYUYaDpLqGjipPSbnGGrjK3CWS9sJdvnnrin2F7t3/VQUr24jM7q6jT+J
xxtong3Eaglwf55ZVOz0XLPu6/IAhSE7gvIQ1fPrMrzul/WGsiwB71rp8T8hX7FkVTyxHYj+9/39
wGZLmQcZBPupK/v6VcTex/3lw6wqT8GOXGVkOhbDCKh0o0brXVJVaQP+QQkVe39C14NdIAwyJvFq
PxEDeFhLfJTYZKYBf0DPWQmVqA7rQizXp9vUuGApjnZyHw/xuMUe8Pbxt2eXcl5nEsB3TxAuoECK
sI8ol/cljQTFV3tQJwyYft44n7TysXqT8gc/TN/y6lPHW00Isj9L/oc7zQoyxxZMxapEpxNVp0BN
2YY49V9uSx0Amt5+n4CbOfjbu/POwHQVReaBwXz0o1V5xPbBzfM1AElU2QvfWhfn4CdZhM8t6htP
gmWLAlA+ZFufzVIhz7vcBWQAdCW3roZJQ3cJN09O7mHvhiJvtVjlMJuWREdR6634mG/kgGOUaVIj
YpAnXdauxGyym9sAasLphj9nM65aIzR/aztLDljMFI7Gm190eVrsRort1j1BSdcsQIL8FVvW8GoV
UXblqrSN9PnVIbX+PPfokGxvuUbe3mxIhIIhXNenN3EVGFyZlDkLeeBiEomENbfjaGIGbdEMcG/c
jGtYSgJmF57DqAxwaDzFN4EHlJado9bF25c71MXqobitdG4MvJvIfm1OBG1uIqho+WfB4meEcnTl
3ghtZbNM8scjCMKJGRoEftmhzfuTBt5PUN3aTIxOE1KL4IHxWtZ7Txc371+rS+qT/0gEiGTDBvKu
RGly8y7kVU3H1avqTE/XCNxpe3JSqhrKCBE3NmYcVy7U+6Hy12ouixn3FOismd/aM3VJM4JTbZFT
Psrgxvq3xt/wX9iSDmL0+AoQ76C9jHOp5CyDOSiYZ0Q84VW1uwLss6XS8jQ/AJE5yelJElzRk9Ak
JziJy7Q0m13ahJDhXTKXm1M9eHgHEvuxv7SKyiVlRloGmnp/KTbbHxDszebAAYXJmOe7MXryUvnl
pKo04BMV5FO/RgngKGcSJJ3ghSfNk4mhD3iQ+AURqBnoC1Rt/3Mr31i9GiXOWun4aJLYarooCSBx
d6pJGBcfN+05C6F15TYElzkOM6Lb/0fHcu6Fne8pPqRCkGzoqoAzViW4AxvlA8hLlVV3JjZKDg04
KtnOLO3PYyvTH0Z39Obsh2zSmeitjik85jtqPs73CUtP6lD9Ndr7NzeFB7Cw1xjnkzjQhJcv1u1A
tX+sz9HjDFV/SQpR8/fWFvgtzhykysYtSEYtmxJJmgn8tvAqune1xkfroHIMMu567653SYbZw806
zsP3q4tTwwqHNzWN0IBUo4HDDUBOgGRj9qs1rWtZh3gl4KZrHpunbjHtJjOqrUiCaCIyC7Rjj/nJ
og1TfMCoyurk3b7M99w+th5zoPlr8Tx6VE11pyl/XjIGhM/jZNPHM13L5Kb6eCdmax7GQtL3wdbK
lOt0BmeUaOZri8GXMK45t6taB3+a94kXTxE0UP5eABcMcVxBOniswJi883Q1DLW0i4zXMVpGDqK+
JyEnu+BXpT/kCveGZlix67BWsI//WOZ25AlRenLrep4PqTSALpoHk9H9pdMDzeo8jrydoBq+xjmf
6Rv/XVHzsamycWjNbCLrAWXMbBjNiVPAYLu1VsK05/+SvLfrYRQSannrJOGzzHJ+JXaRGP00ost5
4ASm6YxY2csmgVu7cnuwHVQ6N5wWnIODiotzuPauG8xdGX5YZxTuuWMfyQuqtM2jiyD4iB4JVT5a
MrL+3JnBey7PqCaiPsW07U3UyIgQE5hHxARy7j5fnOF86Y7xatJAwmU1pMwL037cHbK+NnFz0RlD
+o13WJ8JSAggefwH2tTCoKLK/sjbnylN6GujAypLBmRPPYM7NtgenTEJsSIzmKC88bFK84T/wL9a
QBhjxiZz+JpKc8JFW9oQvVU2HCd2RY+RRBRC9OVfPw3N05vmpPWGKVgg97NotRWttUaCqqavg8/K
UDdk+y57SY9keAnoWNXdPSISoRnfSbfIFt4yx/MDw+ESo3CKn/DZFJMpveuR33UG1Ge+Nb/fdD5I
WHbtTPiSMfWiXXiJNvJAWnQTQTYXG7zDlBovBecyPzefrZbK4y9zdPKgy5P3fu1NcqN2ARbmtqee
+RVMGAjsOzVoQR7NC5xMU57ZZL2IjBSsg07LzhW7RyUgGp/jZ29R/CwPC1+/xFmbx1oqq0ZldsBl
OiM59RvjCpSK2lNK1TXN3A8J+5BIaZ10d3qAMv+PhH1bFV/zYaru1scEGup3HUmyt3+w1SR2biK/
siHgBCXoa3uVlVholVsZN9tXpFQb5kpgY+boEMSQeDuwxWxsrf9nFBW+6qDwM+z1cmwpP8JSqARb
Q9ieNfHC+KZVEhUDEBsybhwEYZ8ybSAj+lmUet8Qi93e8TwbAMaYw/q3eYJkyVh4Hq3/kHtlvVxa
+SPjyslDzdRb9joZebv3B+HiFJjRClOs6Y0HpeJ8gNGRqyEQDyXhTlj+lCOCn0Tjb6hDmYUIJVKr
MA5bFmVxOAk4ktyRRn0S9lEJuuv81Rg87ypaHLmqMbD5nbm4S+AmlezJACI6sVRn6f3XEjPR4OP1
8e7y/nMySrSntlyZmuEN11+QMta9KsBcAqVlshMgzdmpUGlAPqUHkR6oktrmlh+98mduD07XqRJz
Zdb2AiIf4wVgxwzGRH8DbbOO/vChVL5dyyG0UbInig+B1WuulCZvaVGtMf/sX6zfj7m3VrVQ+tqC
MuVx65P3Hc5S2YesNS+MMKAjtsshAzOs9LftWieCfMx+m+qbKG7Xocob+AMBGj2vVSdaZktSpyl6
NCU8UMevYsRN2mMwHC1k/K1xVmTmW2mRLclnL9QDD7tr5wFUNCyF4saMi+R0n4mDvAq5twNWE6/g
9DTE9uIh/zrJPp9bIMmR190Imb5gZcuofFOUmety4r8s74+wyQ5rnRCMFHSBoMp/zGK7eYTSfP30
ReCWGUtPQpDAIIBJ3qslS1O3K9kbZNIQ6pUl3Iw9A0ZgyrLzDdIPFJbIArM3vvHU8rzMnv2m4C5l
685LdIWVpvvDFGeJZBC/W8pq0YjdU+x78/vpijG+uTcLhEbrn5euRAIBqR9SeNpvby/v2AuT7F80
7L1AhGgGXISpAq4H6NVkmJJMW+92UIrinIXpeSgvb01+1ClQCYic3yDGAV3Wg8eI/jWNc1miEjbB
MwnQQ1rvYNeAjaBNW3jqrc6ikuBA1yz/BRiZL+80mzFG5PpPey8cJL5Mf4MS1iGC9aNn2zcbp1jS
O907Vb4XF3KvACocaFM3uwJvhBJsk//wBfv7ZwC2KHTeewNX05juKORlozgYj7OHppXess/w6kZ3
s/ZKPAX4FGDL6OXAIqQ3kbAGiCsnnLNcBOBMKUlEJnaJY4JMNhMW3IF+WlZSKEqpfJBoROlIdF24
THmlBG0NUBvlli3acBF7LBT3AsjXElCrNyYPoVKNnLGTK5qVGnynNUCEzJTDJihLjqmnWc1of2aY
DMSL+K4klxQLWfq7Y6XesHfIYWX8hrktBx76HU8thKnw0mE1arsQxVFdMO1DUb1aMUDej/iL6b40
B3yz2DPKAdGGJI2RZseN+8rnBw6fjUUORE7iKnZ+Q9nwF1/CJvHQs5nUVM+nThiQx+GpMy1uHj0q
PK8SsPuJ9Tjpw4MQidGNMEF3ZV9bCLMizO64Niq8fCfadivJbcfeWeEsuv0dFs+H8xzHGdtbPI5S
Z5+Pr0a108AXRF4taswp2L3+K9AsPGMFKeBMXK3KlKgZqEOoQylShxMAvraHabg9Iy8E2qWRpvWX
v1uCU9KLTBPQHs/SKYFMHZpmC3psN97K54QXmB5WbDqWEgSSjAQXZka+1cIhrJ8wixrHF0PbDvBj
Ylx9pNL8qGB56M3Ha9M869Ra5vZm8CYGTf4eVKuHK+KDsNMhqB2kZJtmr8uOoh0qlEizlrqTuCol
s6gXUp046uXg4se1q4edhlqxSW1tPyjwCJfsns7Dvm4GqHTRVN2vq4Yu40F17qSNx+NF9NDD0Gcq
bcmVwFLHgaWnQU6DPI18Yt8mKgofYcAbXmijDgmXpHXr/5Boewm6DaUtmfg8yjWPEPdfGb8frqXl
DxX2f/GfKbRZ72mMhiS6F7KwR9IbxnTHNjqVPBYyefiPROmocOkYPCbu4JkGun67KTr7b6+xL8HI
Pq7jmPO4ah3U/kpzcYjUC/WhozC10oaD4AA4R0hJKJ0DZi8njCYOjOYm/+5+TYMPAF61PFw5UCIZ
6vsg74/O6a+IiNqaF95ijO+O6MEPFeH0LqGjlSaU9YkFmkigLFrVq0K4O3/iROnMqPVV+PHfTRK9
gtGcctnbRpj2D9ol7lVh/Tsco6rUFNMSu+AkfYAzn4FRTRwj6nTBVv1ejGO6mKvEBmrkTWGki/mP
TfqYNcckpNnH/CZhW4yLo+m36vU0w8j621G8Z1km831lm+6esMgpknrt5/Z5erjhzk9ed3YfJakJ
jlYl9TnQLm2cql1lUhVsF2LdOsFPGq5NzQv+HHt3IkFXqyBye+XkWgtx6XuHBSrD2fb/CQHZ2WLy
JfcNP2HPAYKiL4a2JCkLjuGYHIMEB9VKMd/vIFBMc+hCm26bWY0ccd7GjzaUrHxUA9DqhNUbqfR8
X6zTsS0FwE07wU9Fs0xrH7LHMX9DNvM1PeHHffEdgHXI0MVKtnHqFjxUOJ5s60o53BsKd8aZW94q
lA7mtpbzs2Ex5uGeW1X3Kny4PyjJXrlqtOPIPox8TIwq2cD2wLP0pyT9JQCYcJfdE/V8W8TP4+Us
wNBUR98gD9VE+/9OCPsCaCw6tupsDSjROYvHQc3py+/zP7FfLi6+lLShCiS8EPGaiJlx5+Ceh7Hj
N5b3RIFDSAsTR6248TuCYY9t3nk4RHaEvOe2thTYGQaiPjD+vFYUAY6CDXs71iEcosE81GzETwdE
biYjagwnPTY+JOnRaX7Ru5cN+z1fEHV7fPmWqZbnX6sox2e+oCEnv42UBLY5xwyZSki3iyDqrhsg
rn+6ATU8GIFuODWY+FefowWKfpONaC6ZwgsmxSpaRqIjSFySGfkXJmrViXz5USjQEmOo30rRXnMg
7aYfOPu763Hf+bIfrjj0el9/PuPs9qhlIrE1y8mYunlJ+sqJ9GR74EOzcPB9jSbN/jVYQEGA2w0O
hOPT0dbbOLtYAmVcTu5hESRU6G4WMA+iAeQb3Fone/KGNVvWmxBj/8L8ljd34LI463Q1Sqj4r16q
B6NjEDjaFV0OXglAILrxLUNQw4eX08/1v9DP0oLMyLbaU6azuDcmzafImjt88t+23fiOoQiIxmZk
m2evidYB62zqklFt1smIvwns2lSYNALhQYfPFp8irYBlSb6oJiybzCvEmCSNzR776mpGk01FnqwE
LJbxnxUJyJFzqTrtpk5dyxrouW8Eaz/sF4oT/IWwcsjGvBtDZ3z5Oht2mV0LBE3xEiIdIlXVnJqN
G0O7U8dO1VHUDxiiwhMTcTsH7WO91mlcHQFODyIu0+/j19DKqxPoyFjfGdEOc3xZiQzE2xYjUuaP
nOTkypDrHnyzNz0jq1nEUQdvPL2HNps+uisdc9E/ugHIH1yxAHPRm2zlKkNo1OZzQM5p/2/gzlub
dEaFFb7CyEeGRjqSxX6u9LCvC4ys8gnFGtIYoYGcAlm3nZiUBzqrcTbED5gf7kiemr/BT//i2zT0
zQ/x20c+mo9brvAS9m0BnVmMsQ9RzNLZKkdDgBnhGylH/Fzdr85cFEr253xoppHjYzKXeG8lftRo
fTgExJQ4WU46z1Vd9RP+godqrPQ56v+Jm2k24zeEK140zdrkWCdMbR6NAJDx8Zu57p+UzAu1umcu
2xKWDQmQ4mnr8zoXGbF+CGHxXSn1yRq101ACHsNTaGBHopesETA8mphTQxgjE1f4g23y0IZX3g9/
VwHZjtEV0kmCNOBNBxvbjM+wQMuYLvEJu5tDIZ45O6NFiaFFhRX9/9c2renpMnLGKSlGE4YgUQg9
6CFR6C9Myu9HgLkHPKoo+C1EWqdTLcRZIlPscX8qTBlbaVGnAfMygurGSwJWnyYEINZG22Nbbu//
woe9sLI4edEBemkEH+uiMpjKqPhQ8ouAwJ3/VZ4xqQn1uwRMm0DLUPk5I7u47BjE3FVDCRCu20u+
uevKFIfPYUMPSJALqCSPg20fJdG90PmrD8uskWX8dqxbhv3AJ1pjx7e1tpqma39ZwCjC5dZ6JcwA
TNc4vVvNqV264tQD6agWgYhrjmM3q/iz8SxRU5wK5NckA2CgvEHbA86K/nczplT5YseNGxMJaBVs
IUNS0RNDHMSIaWwhfvNPBtrgJqXiXJFdtS+Rx7t13jppi6298CV5cuAdTA583WsRELXrJNuCutQ2
AyOoZMoPb7BCDwDED5OgPQzJMpkLTxLbcfyL0Fi7mXdNZxGhl3r1R2T03uz9OBP+AecdvGDRV1/+
RGRCgncxb1bik0MVTrK5TL58hHvksDPHhWljIavKvxfTmQaE/CFjYk+S+KqLtNfhumLksdJpXppv
uAUHzYa5PyLbQtyiJ56JDf9Ufw00j0ZZ5vOBqQkGWw5IaKF6Rt/O7yTSXFEMJmSK2jDKLw9OdvFB
qB5RscEzEPZ8Rs9vufGzUJYSBqhKdRDQrF4Iv/JjkyEsxL1op5d+2k6dsIiul5y8CXm8F94/vCXr
b3GooWs9duLpvUPBCf/kZefPGwoF6gAETk2DODjlEcNH2/LG1L6FyeiwGs8PX1OVsCiJc95NNGaE
KKf7VTbCKEkj3LThKUbKu0FR9HRVUMLOKuh5NLFhg3vG5dIrGu2NApCwkZS5wVpZdDKC3m/iffDZ
1S417T/HaM4Pk4tI1hPaoceLFPv8gW1+fejvs7KmNqTn1l3cdHuc/jm7UF3uouJWV9pKomG057U6
vHhQUJC6C78fQjOV2y1w3DLG7AJG+AXfmAxYsdpu2oFiW0M2CPUDr/2EJomH5PPClhMJHpSINowW
RaSnU6lBleWCLCqVmroiMDRFaXcW38Q9nM56fMPk0H9E9FSxl8Lh9+QO5qZD54/SlmT+2QMvXrxa
WKVXgBmoJ88mi3hSK7n2cpF6L+Vgow+QCQyQDoztCjjvyOzE1B3Xn5Ph6XuUil6c5WKeYyGNNQg3
sb1fCaL5KXOrm9F5vE7nYUXfU5QELkZG44ygCgA7NcINgqWs/BushgcODBJvIB7nptNL1R4sM1wl
YRjbbfBo2nNtOS9EFz/6CK2ZQCcxEBv7JoAxTSWvOPtrFZaVJYTQf8KfyIchvwMt4oRqLTGpD/ll
9o0mUJV/CHBEjUNe9vOiCF5fERDa83Y2l4/UqcBe/nM1jKZDFedc6zuq19RVN6xR0/NOKkClGco3
qDxeE9Lx+ktkHxh/eDKkqKbIXTxJMWEJ6UxW+ignjCCth4fh+O3Hm/FBZjSChijcl5ZCKrykxrcq
vVxHJKjGyq/UjF3ct0VflJh9E4LDaTzkPkHi9tpkAvvGp1U3tJ72ueE5aEJFXZHI6J8sskjhe0mq
0dMf3e2atr6zhfu9E6WlulECeZeRohboFp+LMSHuLoPlgJ6QVGHlJwMvPUAIqEqGfr8LY1SsD7o6
3HQH5ry2k998HZTi6RLXddkqvGxjwbc02LmL2qo5zSvlCWKpH9ZKJEq+/GfGP+euQAdOwMskzC3V
pQi0YHEgjUmVnDUw5FfFy0bi4UCEbasKkdimt4ZVLpbF26tW8ZZQH5omQ1T6quE0I4TaOLyFRdmQ
a84QZ4SnG3qHa6nemxDsATvp1lUy++Q7YWDlYW2dBsyDKg61mxQHmWQ84sb2IUQGd+X+yLBKG2Oi
oZomWvHmiHMaIwTYHlA3p6MxKkh9aEg0FjpIoqslX87R+psQw+WnyJfK01tWy7uESdjxP0YrQG+R
KXvpiKNfjK3x1Lo+56ZYIH8bX9WxTzfrJymDWzKp0syNMj+hA/M+3VakD4hfdTVojbG49G2RJjBK
7lyIyeEnaPbntiNKQuOz+n8VstG73IZaDwNdMoSnIVlypEUll93hr5Hw7sy1qX6rqK1G9ltc/jph
C1ZWvY1ngAUiLjFyGIoCqf4gNQfMT8ypa5QkZAlfGhAVizDKAD5Twl/FSht4Sn7rN09bwl2lHflh
37UV7cRdjuICsXetbnYdDEnnlzq4aIxpaFhAww/0kABuOCK5azH9+/jZATu9uI7DdoTslsIffiXS
gJOKR3ij9ENcFCXh6nUpqxt3Tnc1gz3v6GM4YghCRaf7ZDbBq7rZdAfyJcG6Qk82sQ3GAlpu+tAG
hMgg1yDL7e/++UPyCoS4GMGHVkT9AHcgLu18aDbAg0Wi9kHQ7sqPYiF03ituLWTakAkOIe4ceqAL
rTU63ls+hqUzOD0+Hj+3P+xV18INQfXvg3RaqVCp4w4mT3imUi+9ChXxLo1Apy/NLJ70A4PLDiNW
k2krqEoSau7BtYph4JH5/EIkdHnlkq31uhGwC6b2KCfGGjl3PqbnDgp28eMLuznyt2ZPBBvJZoE1
fzkmVxo+v6cn5uEYB5X04Nap9a1wugLALmTE7btzHAXL7TcVp1yvjOc7sCP+PgqJC7PUw17K5pfE
cbt9btpUFzpQGIWYHWJzhcBIwY1TvH0nsuxV5RvdqBPrr58qHhUAS5q8edxmy7YjLdxAku2GZEYZ
AypAnd2tF55/n0J12sOr787nU1SraOwpYnA/MJ+5A9SH4uoj22nBKvbIfIqEJpe/HhLx/hBlHome
+o0IiWrhvziZYG5Tn7dLieM5q9Um2y03mdEP85QgedxT+sdX2CMKxknOwmZ5d1IynHZsgRtNiAIW
yQbKsd7hh1hKMgQ+V0RpkjJEl777yCvKe/IE71/t1PDme4pDRc7jvSdRL5r38pYLhjtrK3rTpWm3
yPsR5ih/XJxkaw+U4KJlBeoDZtfyyty47HenjOycXHt3OUk3p5Jjjdu7BxYoK+Xc+OXnKy51bDNx
9fVvOeCd35dz0irNICJDUrh21rwJib4KEauMrAhP9UzQi1IQ65sGd0EMa8pYH/w8cWtBto80RAE1
NSB2HinmE3pe1U1XvhwyPB8taYGkyGEbFJqOlurkipzA6AqqFjolxtQlyrqUjkAEmVzFTOo7cDSU
oMqFNmbk/xMyA1AWjg/s9DzwChQqzSQdYmJTe55/aO3fJdW2j8QeTSO0Tm5jpRJy0Kd3MlzjGu30
g/K33hXpJ3rL9rIoVyyBbF/adsWMaTmUuhfVLIVobaQK0WLhEB4d9fDXD1eLp8eHKFc9eyeNHvcM
eqeoTrKNK+zDtVy+mtzkGNAYX0d9y4Js5A2JQBeta7NTReJNv6+dd868ZaGdvbqvXlu0/BNi8L/Q
Yv0OTtLPNz/knVp1QhGKQ3CvqD/5xh1gzicOvrEPsXLEi5Ui1qjuVDtWBd9It3HShMU6Wfkx/emA
VSal1kg2sBLjo5bthd+H+JK75wpnXmcMA0sREDgxDb5GAxripwk1RLGqxZLSuQq9JhD5gAclCDO2
BL1aw4rgLmB35iw/n1SffhaB1inCxwrhMu/1nefAAX/sMSNX89MKIGhMd/0Qp9W+C2JL9JnFcCUG
itIwiO2Y0BbuGXf4fg6UdwepUzjjE++DE/G5aV1xRFF5MdsInWX/c5wcYHQQOQQyyNmLiA3+pcuO
8x9/09uzMLvpTaU0oWDv+829xCBJOe0OLqbiUvKa8QHtPl4RVWop0wrc7ZaSjyrOi7g6WqnbICAj
ZGzMhYR/j58572YfJHKJRMvaafGA+NSSDTGv6a4sl78aBa7fGUdauS/e25dSC3ml+2XSuXjZX+Sr
hld+N/6ZtMC02XJLgdbez6HxpTtMLQDB3jcu2M8ZaNUtAm9SlFhH/R7Z465Oao7/aLiOddIwOGLS
jdx6Uja3FFvTQ+ihIQPD13RaePpg3WpxN09jv/9OtwzibUa+sMvzulpZ/Jtn6RXExoJMiOSVw4Zo
Q/xsuHwHoNAHWhUAFJVFljW2IzM7Gl+iOVLXzYEx6oMRd093uxCadOFyTwRdhW9Q1a84L3gZuuPd
OKULFxWNjgDrirCoO7HxkKIFROWbjHIJG8/zQenFoNxRNX6iE34Kq0Xu+JIYiRk5g4DjBHKSvv7O
HBW9oDPE2oi9ybkrNbkyt8Y1M/+y6mm82ELu2dQsPNLlEUK9djB3pmk0fdEmygFbQxIJgqkq+IMr
4XKgiUg3C6xDBrkCHzFDwb2GanLoz4S9WgEijB6cbIMVC9lajGn8qa1ZdDDs9asdfYsE6r+yYUQw
6cMjOqlJUrUuP4vZPxC6IayROd/s3RVa0V4JMsBMGDf/i9VbE5rJxk2NyJm9DXjTWGbtc91Rqp1P
oWVGN4acIUjJdc1OLsOgyasNB0zNoKs1nzANgCxtthsRbNBraErqZBDkLVvcgfAeFdeP4fZp7P/t
kR2G1r59lvKO9CQfKPmI8jrasd6kNraGHio1hgEsY9LSEjg9MYiK9mGattpNWOntaK/AiF6ybc7z
Qs592nIkLhPMrR7hPp/3OPcKV4YNCAxKdHhyzrNbSTzgJK7JJKmCFg39JJDA3mfKpZBCCdMCUKQo
kPIFYiNkpydGaqm7F9vjdS9pOcJ7jIoALXWwtgRTpNrK028F+ObvhaXxVNu4AI5dw4yZ6AkJpoSa
gEeCZJYgL3U4LHPyWx1/1XHshS3lAtR3FcQrYdFX+Td1AmDfVeGhOQDEK/MIbkHctDjBYE3Gb7m4
m9Z++o+mbZFMmgXTd2Klmx0yPyymWGixIOkYkvFys9kmroEShlwEcvOTUTU3+8wnY5wGdVD5pB6a
+bR3XmscjLFsxOfiU4AU0XuI4bfvwVO9XOQKXj6ghDq733SCMcZfDylTtuVNJQlZNDCR+rG7mI2i
Ph+AeiVKiM6W5HWm+wTxflN0gHVMV9ghI4G6/tKx7ijgXVyNbSyPFX/2edV6Avm/xbUDeZycWvcN
JzInXImWnTkalTk2GqHOfdGJqrmANI/DN2vf3xQj4Exdx95LsWRZYY1t9BuJFAbbZeZGeJEOCmEq
WQxLfK2pTO2G/pevjK1xjo/RMFHTDv5Aw71dfdFKRjh4uu8bW01BU1RHUhtexdTzZ/bSAKSUb7yj
YbY61pxSAivFJLP7ywnySGDejRPEj2RfYH/Qq3Wtmv6jwCCY8NoV7/ibJ71TTbMZ8EVe2NLvXbT8
aGLxT8C12PV5v0dsvP1bcqK94jasVbZkTPnOPiwTSUMs7kiCR/aQoJWgIpLO+0SGjwGP0dp0eY/b
18zAJNZa7HfcWOI3hwhObpQwMRQyOXzU7sOW5+KesOLXFpxa+U/ck9DfNAfPtJWfq3c9Y0/voTQB
SHv5CIU+g1tPAWWfd7xVIYxsaS/cGVKgvTmG/UikA6kYBaQx+bKPjYhCSYL0foeOWmiQS+mmDK9m
zi43I7+YZUmdt7x8dTEmh23iWrcGhYjrQUQJH623F75YCMvmoeNxlb2IVwNBH99ovC2SoIaTCYEZ
zOfYeSF/cpTHa0nHPgVvYqBxej2QR9ifXi6msEhRKWe2bhg/tX6FTcjVwvVQu31omwDXOjkxpdHc
uN/mL6lnTrTsFgrIXUZh6wjL+ABHQKzkORCvsPyaLVm2YkYg7bNkvDL3g0JUC19Xwb2VYF/oWW85
SeoASlGAJaA1VA/HYroZNo8nP7qO4bLW5INnZfxzM1+0c3H0z2zJ0HONUpHNKf0S0N1LaPYIq5cW
g0y66TzWby/7qgp8nZ9wVkhAcsxf7G0cq5q9NlOhCHlCNfPceR1czLhReDYWqVKsecf01KCGTiff
VonqyrtLwRqQbqHV7oh3FWmCcfbxATcNYStjUZmJDgOdbRXbWfBeooFZMoNembk4qN4RUlWxDl6a
Bm1qCYqUjV3M9GcExnp9WIXORn+BxLC8zxeB1kqo/lDD7RsyDJLHxrtPefrkXgtxHyIqYX9Wr47N
FMNlSZgjxslFOOAfBgp1RIizszMS5SkdIKALg2XkaT6j9OXSB2MucHtbbwOGD9r8fy1tUddmlj48
l5YarRRzK+DweK5rgP7mNVbDTutFyiiJhFVjNj0q0tfjpmdIGnvbTA84w6MLj0zjJWA1azBeBHpJ
6QjN1hCp9aku+CpLSIPAhHS8S8KDaFnm9fwoAiv22DstcCNZ3lAvw6hX4TlBaKCIZwdo8sxaDzvy
WXXhcAROh4juWO83hrjRT7oS5zqiPFp22LWYK0bKL2IaCTGQAtSzXxxmRTB3s59FBQjVMge40A7X
Q7DZVmUMb4+iv13zavPLMBdHo6h821CDX+7Rx/ItoQqzK25QNEOVDu86tktUe2+HJRDyI8+5OJ9Y
TX32g+NUj0JE+fdwPlYDTJmw9Iu0W/V8gCZwE2xqHEV/kwXhiaUWi4Gy1tn2ms78qQQCzpSnr4O0
ZJ5arkGWFnu+/LArhNX5ygpMZXKN/+4Ptd/GPB/qfFUJkbfOuWBosE5Mw2YLsowZ1cjBw4HVkWz5
z9Tk0xtAQ1+pFMWmkJG9zbLn1XCdIzizp3kX4FQdFsnB557i8G3QgdnHhC8dAlAR1tPJ4K1N1dHy
HVAsMSROdwJneL1JNCxrSxs6FSQ742kGXTcvp/34twRbtgVJibHxldK/TeRBLdV+Z6XFWLYeqgc8
ej/0QCcsSibntUV1eMsgCPBr70HrNVQWfJMg4lvJImA0g/1Fp+zgbglKx6AZzk7IxLUphJoPjBNi
ftM8lNbHG+lmdNOgV4AUAyheiB5zxLe5cj2hzY8aBHJEzPlFlKTbRiWOxXzhm9kdbmPHVDEyYXFf
CVm6nDDSnzPuNDPoYm6g6DscrVh7b2xfCiDGfxxMj93Uul+EYiL5TTt9oSNvuEJm8UWOhxxZxWrJ
lOGk+gXCHncYmd2amedl+tJIG7YQZvK3O6XpwZ5+FwijFrQRupS8TjjxCQlo+7EIjTyqSmqdms5q
Xo2hx6M8vpOD6yPZZgIcDO2bxyMT4DAdjtz2j62GJ+8T7ejRj0qTWfpUC99rYlzyNg23cB9A+LkD
sWo5hAwXXuzW5plR1pWKoWWG/HOleLjD8FVpiBgM8yYVucT8TZ7fG1u3K2JMDDkj1pzT+5e0wIqI
qQ+KTzh1onHvxLf4Oh8lBB2Q8BJqwKaDUlsbnBSadph0zVX4zusGb6U7rSQU0cKEV87n0RSFMWCK
7vtJe6/l34f+idCAuf37qSFMvcQUfHct6kdyjCk/ciU4k6E0KtzuA2qB/4ogZPbLxgjGvg9YAS8b
GJXwZyMq+eMoAzgPEGV4USOF7IeRHXRXiHV0yBEWxJwhzMM1VyObXSfraJV+TQtnt4UodiBegObK
YaZOD8j1IWhSoQmaj3rwu5JAJyR1BmmSIvpfw/zobMhKB/J94w5a7TIj9YHN85phTBaDMtG7sSRH
XczGNcfFAvKGXQ5rg7RR9QZYgFRtBMkXiICDeIU16KZZ3ljqy0P2GH7Andhtzu8sFjbH8Fr5bKV8
LBJZaiYK7b0fswCfPaqHambC/T48Wsvms5MDEZwH6UXq6O5SCt3EIDIZSnU4Hgosa8PI4fbbXwUt
4ATIuepxFwEFvWahGRa/F+vQHS9IDihTk0soGaUvf9pN3l2YoN1I+eHkn6dBz+l96j6TQhfaNiQC
Jg5CPoVscZwM6FdvhiOBbuL0TxAbYbJhMdeMb4ryNbHIAtcSyKL/+ssXDTLOAwqCpSoOUCtG0r7Q
enlBBwNzNqJb27jBko8QGoGU50HhmzzvZJnxAdb/4bnz0v4PAD0XlpomOzYjhV1I4fd/XaQE1bfG
y4WsP6niS2hCGTN/9jFOK7MJ+/aW/F92QpppS2yRtMiSh4WBc2cXhKerf0pG9cBtiD0OxtIn8WOy
jyCaF/5T2GyKHt/0rdHj4JFHXIRUleMKHVpj4kWl4NDscGIjOLb3m0dzxI7mNyeEE0QYADj+owMs
hPuHw1a+QRdQRmBJ8tfh9iBWsaGuEEpWx8OxEW7DlBfoyVzK25o0qXdEU0aN/kHB9aMFzKCGW0S6
4bpcVlJ1PEDK8MaIb63DXDCtDHw5lQuAumvD+Jxt2rysbsdspJaBsLGpz3u3NTSUQaDPppiD6BFV
2W5+mI6ZIt9a6Jg9NUzFQ+QrE0Kt8MxS1cCPNPcnbgc9EeMpKIM4jmcJNgG/RkJx3S0/eYIXw24e
vC9NrbHsZNZ2JsaQz4b9gkYbGcvjhwxETwJI1FYJaq056Rw/Q539U59/iHFRtu9LYozrfKk5xoMb
pjJ48aqViVTn91XXfuAOQOwmgKXpogpn2N2iS9WybKx7CV3jw2zBb7hfQfXuK+Noil9EN8AG5gRN
alPQM03tCJ1OoLijWYDp6yqJuphUSucWJlydRVa+yMjnghnpzYw0NSZgMFL8TrQh09q1RFiNJngl
YRIzuhN9zv9VGQJUf7VsByB4GCSazPAycZbVX+V1OQ8kPvIFlz0UB6dDbgCsJo01Yq6VO7Eq/RWz
xZWwetpuVFt80a7vNnn3NaxCxoxiAzVuhAq/nQQ39zJQV+P+31tdjrxxPgIJzvg/gKLMempXz12u
LJDx8YupSwj7b4vIlOkHb+Y6+qTq7MwTqM8gdYjVDSlgjA53AvnjOb0PaC4UfLUnihF3GwzHxoGy
qvWbgiL3ltI3syi+BIADvL4PutsKqtN/RUefagIHTGc8pf4l+FaRslyqp7v99Gb2DYXRbOtqnsGx
OZc4Mc7i9oTlzPaYzwzqFBe0Dn7DlyEwiwSmqiOBvbsL7aP0beBmmxDh1tsNkZBkBPkQ8nrfmr97
qut8WxB8HeXDS/uYd9aJ1wHjjIqZJv9USY4Q609I7PozSzZ79YInmDy3FMHMl67NxH/dmo+RxVab
JEr6l5plgrPrgotXtceJrNtuBZyj1U4NWLsLr8s0HMgmpTGt/PQ0cXKR5JDFtUR2Kr8n3n3IGA8O
bV4TXFF2aRWHxtzYhCeeO4rVQFgg4zZ/M57Qdnbf/KKgrj5dCOQj/dV7vHf73Tw2/5r6Ik3Xc7lR
vJ9DRnP+Hzrc8pIR2uxRjAN/jcLJUZMXHQd5UHTUQUOWzXvtWIQRATKLmSnfLZRUiUy2SjQJXVXY
lXPbrvyRm89/hem+bAHFbb6XCU8Kjar8PoGKFiCuu8L8Vj2A/oSTgbq6tk5WUJRcb5Us0Eus5A1E
+m5qGvaRxA0vy89/rmfBQXzgNpfKehWpL1H8N1/gIHBzf91RBi6Cs6eHOpHFr9wyO3HQNV5Lb+Ch
QwM7eJf3fM97KrJcNLEuRLTtUOQtXbejL4Cq66vMS/vkdMmwbXZOxWWKIDbDDOjRS5ZrjuxZXJ7o
Rnpyta/47XUVdp9odeorh5F+4/yznZEjY/D4gML2Okag+DcD2p9gGzy1eYvd5qQIpGJBvpAQRs5/
BVqdkvDZQAjYYrSP711XvBv7EePvQn6vyZL1LHeYn5UgLAK8tqVzNEwjFOwo89CyB0Kt2FmJdQum
lmLm5m3/GdTpCyTcRQoonrENDyKFed5pk8gIOo3xDK1J/xZQTxnZQSTfbLOYhDn82VETba0FNkgX
MUUIRMiFqJL5SzkF23nzpoZuVICmurmxlBp2vdZGO22qqZwpeY3ik8FVWePeZ9uxUuKKnyl3IioJ
E3+m63XY7GokbiHf7PbwHnO8QmM0khc7OoIlimUG6M1Co0BbHfhmKDVAFrhV+vzcQKxBKf1ZhzyT
r2XUZH0Bn3f+XAAEf25q8/U1ctszrawoslwyD2+1N1X8d4458Pe9jQyZGLK4qF+rTEpxLk38HwPK
waP8bCjYGt9KgjhEDKuPZiBvo7KdAYoD7/UO6CF0bB+7ugq8LH99pdZHATEtqkcyMygCSzgBeuph
p84D+YGXM4DTl5WL1gWdke321fnUrUs+bfPwjWEK+yg5GhCMWdLynPoVz3G+PKze6+y2bFGiT73M
RhAPvN6p4S+bOzwLeZUhepKlwW88ZFPBAx0vwTpfddxCtbmzQYdIdSIdpiHuwFoG+2OKJsw5PYZr
KT+TJyhE2ri0hmxfLNe06smyfe6Fb1JvzVuvi/6QT2bsxi2fWu+wu59fVDuAaF3M3zSnfUbl/55d
mDm0QdVUNjzQN8blQBnRL9pv+gsij+Yjv2+g7ppmgVAxvjN6qCFdiJRi+JjdRgbTCFIMxSSguBb2
g15Tv2d6j0GaaixxUmWadQJWrd3AGuveH0bJ36fa6HZzT76WFiQMealJfSW/qv4tyhuBiTr1cAgP
f9/zF/3+10VWoEQ5bh87LMuQge4DGYnFzO9MKV4AyfwfRwd30ph5d0j8sP2RARg4gnr5xS5zITg+
M2vRzVWXKXwCOzqrGHpNMcisqgH74w4TvKQpd86SOwu9j0pPzN39r4egIqYgcABoEx1DQyOgq2dQ
M6Wn9qEgLMjNGDxcWaruPZxJrZ+oDOEZpicEqlkt/2bIBSOdmkE6rtgsjHyYqlSSeAl+dG0IYtvQ
Ursvd70vk0KS64OZe/2opKdQZ8CBbTEj0sVj0Gqc7iyuPS2BmN2EAWd85q4ymXdbHXV/05fyFGly
mrwJMABalfuWBg3C7pcTTIcjWjxT9vSsTfF5EMA5Bm/KwLXwQXFTNDdIce8GiGugtIcoXfm/MATe
rRTeXwbhz4Vnxt6wdgs5+GZ3T22gInbhU9fYSimJkjIjG2VsCBDJc5HClqzAdUrXU8TT29x1QGFa
XUMR4XkhPcwBJldzyXTvkl8GbkGfFT6RZB9+GyUxbuiFE5bE2bp30Bj6U71/ouQTUtuWv2T+vrHd
ajZaEM1pxcpT2ggnuteAoDXgDiaeARwb378OJRefpF1Ncp69tt+IzLmiiwAQWQRsa1ZEwvZT9C7H
oIY3jM/RuVB15UBwcegZI+9CxPXlAE0A27rjVL8nB+sLoconHiRSzVe50MDl4myRpV/3ekMdb7uI
cC5BFGnljeeICVmu3JqInapHyndX9cgsBXQnwUWSskzFZMQWm2+jRpk4BkKMlY3Zd8Tg5k1V0cW8
rjaLBQE6c4n6RlgN3w2HusQQT8KcnDVqIijXkPgYgOwSvwCzLDne56QrYrnw1j2agDmyV1+7Z/NF
k/7pL2Y86F7PmMOY0MBSJRM2wI8vwcH7V3vLcPJ7CZ+PIlQcmMj2zedYI7ebzMH8NpYuah6vdRhB
/SK+jQHs5+Ajp7B+lNcJ+OAYlUmi158V6rYMj9PDrU6m5LbNsXcqaXvlTrFb0A32QdCXbhh8vsud
MeBNM06Zo8BTKRcZt99BESq+iSMcJ4SC/ObDb2tdgZJaIp6/8JgOVqc77h3RJhkzPv8rBX1zeHxm
iP0QO98DLfUiVxMH6ME+UYvWkTyOMPdle+PAlMD96NvlMfJMKWqcwAuC073dc800U/6QI3Vxf93b
DkIahCkW0xK52s7M1Gyw6qQ84HtT0+r0KJret+rAwI20AJMMeNRerQwaLCuEgYIoGLMyF232pwjf
MCpryR9B2bPTgXJTtLWYg/AuPT/Z1yft51516jX54d5lOGHgyvLMv6L4knJcwpT7Zwnf7U/PLwot
y6hK8p71EzHu1rwjxsonUcVT2rSJPPAqXYPlnyq0iCa/4LiW1sL3LF0osPEoBFci8T14GoUIfNXn
Dy7k45cUnngONeuVTCmcmM7Bp4DxSfRjBjohlXFPT5E1fIKcaQrlXf7zdpzwxujxjw6s/rY/Wisj
SoaCPs3IVzm3YDmRV85+NsA5ZoZ0z1MguRGqF6T4KPrFXxljLXyDoLB6CSussw/8Rcvb3aBTzYWC
EdywNrSngqww4BMNKDiHpJuyx6Y/7cfn00xLFMFd1npPCkT5bHLuEeDWtaklDotts9QK7ZNOuDgy
YvzriHAbmRLoHQfs7GFRQxnNiOdLM+Rj69Hq3Gy86L4GUsx5mhSt1wMRqInS5+zjukLGTdSraInv
J5Hgir06zvBRUBlOLtcb01xFGV1SmWeAuP7tk/7/qRG26X5yw+5vxfzqZeY8NYQrBRHnYzyJwsPT
HOuxfJJw6gZs0KpRlCGkM0nLrf4wLxjVsrNwghJqm0aTFi6RxGpy2rwlZfklWMfWOVEm3ef4SjqN
Xszh69xK1zpoXcYLVFn1zsL888Mj+yT/N9JF4BlF4KE/olH+QmOXhL0oS13h/slwA9nmsxeIqvzC
zHQvjIqcK8tpXUBXaAaIMX9738mQBp5cNXIhMC07Bv63Cec6X8XrbdLIjrYCWK9QXUoQ/cnpY+ts
zg6txQF2TVcptW47POjWTjmFdVJ1AFfaAbowj4Ut9SMB0JLQJHQl5gSBzJwG4fUXM9IzAXcs52Bl
KtrS35K6YZ/Ez7I3Qh8tP2imZNjGi5NVFB7eyjWWVo2wbq02TV21WGNF1oFfGQ4rt1SOg66hPgr2
x/N38U8Lbz1SqfslLTHJHL2VvVxpidWa0k9eu1Zb3EW1Ws1VuzSF54A0wzM4a1ZtQcGpf3DO9Okm
QVcKfZwvEx7uykXRW6OwVF3th7eobnzxAxtl45kUzyEs2eEomItYmK9NW+zxGfeSC6wbDc/vywnE
5oUNH5c6bfWMvLSPTsDVj4r3cS6Dj17DKxDDq2WZR1vOeijXK16ElN0uoT7yqtDBA5fT13PPNoDQ
3zRD0s6FcBTnxuHdC1Qw5QqFvW5RmgzXV52CyEce1wFr82ria5t3WA2at2QpOR/Z46wLNwZRz6hc
3uJvY2fiA/Y5/EtK63Rn8UpNNueL+QzGZuZaNpKemv0UibSn+4w2YnDsBT/PEYOYE1ih4/f0PFvG
63bX4wUuvdhA8fj8drWoA06nWt4TLjQYOICvw25GpZL2Lk2mBpupLOo+67aqE4CJdDN6WKxyffIF
qpFG6KHLgxEfmcSEdLr+ibvutrfZOjlTPzUGrw2+t5Vk/52ZSTZrAgXEIzNOWW6JGXtn7i+vezsd
Wh0x5AiQ/unOn6AbWuu2FgkuqjhR1X6zeJp9PMXu1Tx7eS/EW6wr21C3dmcgU/P34Bg+uHbXk1Hw
LwyFsU3Yy9tP9dqVeXoZwyAeXEAyFrNarKaj8Uruur0qquFNDLrhqNxZBAR790wdeIe+7djimJra
EtpbKjm7hPSevTpWdAzu7GR73JLbyZx6VlK+c+PXtWfkH1Je2yK/4QBuHE9Him5DWxNa+Ok+oteK
BytsP0a2tilx110t8CU5Z79z74PnCxfRaoSQ6uFWCbY8OUUAaVGl0C14QxsQEbOto/m7r1+IgkVa
+wlbelpaH94LBXu84aSzy2pNbcSFcFPRtjjSYSF2z0vVSOCZgvjuWVZ8bY0OTt0dh/5qPH45TrcX
gQ/RhM/6vAKGicAZFo5n/kTCoTI/OdkJtJ4IK85XsWI939aGSPi9gRgRHWt38LLB7CzA13aYXQNw
QG/kVg8YzjGgWW6G3kZjlIrpcEoqeQHRjh0/dFLOCzhOee2pLZInsSLD3kgeu2ykHZZT4Gu21Ewj
z53ECCRRsBIZ1nu08N/+M5HC3IDoz5BglRfrsgXUSOgZQp+WuqzMINMjXg0palCxZMKzSwX8JXqZ
NHLa1wE3q2FiMs0hYfDFtiZPal+cMfR72VWWLCOkA9olKLpRvsIDUUyq+0AOHXC7voH+N3NEjdx6
bdDtI6Mb4H4rSitQyD5Ni4l5/KhlxJk4Q7bFr5yDlrjhlriUiBx8ccA5vGCkv8Hn6pndKxAW0BTK
w29Rwqrv3nL2C1HWxWfhrZVzBd9Sfol/FInv9vg19lZvEnNqsiLQN+r8aOPmbrxn7HpNRMuh2ddi
yzLdGFA/KEutujeY3a2YQHsMUVY6SMZqRQzcziiYPF+CqIOxKDouUSSPLe9XtfGjUo7gnCTqupjI
2g0GUnrU1S6TZcvW0X8Gw90bMKy2tWS5IgiYW7qRgoRHMrpEDX4Xu8LsGXPzYgqVvTIx1nQhiWpQ
IZy7v37Y1nHRTDahu/fHZ2xrr5wJKQ9qaF3z2NMHgsTN+Z1hmIMCbOn7PzSSscoPfpHNZj73Gv8n
xTjPd6Fd8fBrYI1bycuvJsg6TcI08VT1Gwbrj9/Op1gRcaRBcF/8SKbVER1H6mGwNajx5fStQmVF
2Oql3PnzMA4lXQWEh9yMzscua5Q1nnxEgDvy3AoWbCB+E/InHV0eXsdIQM0eeaSx6D/H3OhePmPv
hR+l+zx7gLz3OAR+xcAwOjL4RKSAs7tnaj2QRJFrL2+ApdyzPpbZYlD30yPR6cED+Puz7T7fjT75
mkZXzcpXYh24vdiEkhQjJ/z3X+2E5YzviNouTl5dvdzfbcWO4tSzhM8dUhoLTGZvU29QEu1rfWXZ
VP1qr+KpWvhnIpwCHpr56+B0p637VjvWHq644lBFQ4ZQkC80h7OE/a74woi4ahJG4GYHsspuqAjj
i+3CfLoJVh16aKF9dPp8i+KmyK+nKqYGygojDUevl+OE2PRlAFHyq9HYYPfcm7jIe8lf8nR/kVvH
gtyhjzk7VvdEPtrqq2ZwWiaa+6JiYFeqivoZP9Mfa8Eeryt+yeXYskobkUSG3EpyFOPDKDv7jGyk
kLaS2hd5T9RVUqhvwzY2iNi0yPEAxBCL021VXbMa0IunxLRCJE+jtnnD91qzKAL7x8oZ3Hdz3lBy
8OrH9SYQvoTu0fGWZSnug0B4gU8IuOJ439hxIYwo+KQ1X0l16xAhayEz2iEJkOSBSXSCu9ywzjrA
3Ag4OId3hmv3O8phYXfLuuJWAz+4cppPCMPhQ8wDaID00tgqn+9kwG3MsgTsr6bjffY7HbVa4vz4
rTZvtv2joQBvcmNLzud5EmdIvTkY2GTNaT80kXtnSX3xZ2F6y+pTgqcySHvFXt1wEn6+25gCHidp
8F0UR7VvTgqWIgCvFdeGottaYHFqCWY0I5YV23GsOHLdRKC0qAzrjqkeRgbTsN9GHH/ixfRWL0yy
ad8fzxsvo9RCzgt213JwjGDbi6WxGu3P4hi7+jxOShPjNDo40H5rQ/Hc6mgeSGb3SLhijvJ+yS2u
1W1c7W8WN0Ov08kqXXJLf/P5d2NfvFFCEr0Hme/lWLqLaMarHuqA29TPHYrplJNrRuorzrqO4K0Z
4HdYWfx1G2R5ZcHWXd7B/zjhEMEjMOQf6utu+r3u90n/zZnZVVrIdMySNLgYFkw/O1W121cTewxI
Pq87DAmjAPg8+a1UiSScRZt+i5d/Dzsl2cIp+7D+oFqnk/fAotyzaeJXZdhszkWJldxD7n7dYQ3g
7UhcsP00yx6qOInKnFZFAAITsP8ncrxKwTDjtg/vdRYSke5LWw8plpMPx2EDu7uuXsp1PZ1Api+g
jP5nnmHdiZ5Xn2dvU3tdYm9NrAkKcSsdbieUetMJ/MLpZT7Js09U0b5t2Q+ZaEZUylqbd60lel36
ra1Ad8OAPh4klyZAb8rdi7pl7yL2fka2cC8vh4a8A2vHivA0+MyniPqtzuYFW/wb6Mqk6SYWDZ2S
QiIcYRhW5XYpuJLP0mVqxLLSECYYCQdEze/26mxYj0Iy3+QHfo/vPna+TbddDOOquZlb9rqLbH3K
hM5SY1Unq/F/1N+x0OD3ky9ulKubW3x+1FkngCLqMomiskyk3iWIZPHcbVMGjv25FD6aNcLogyVh
rCXOsiKYn29CKd/c0nfI1C0SAKsDlNmX7/CVQAMA9CiMxN3KFIrVLXMCeS5nFVDqFrCOPNw4+GbN
DatmtezGskdacrnvgMpBFIehd28ceVp7vmPL3G3TG8YY0I3Pw3Tzw8VIGOthu8boaauvE7NR5SEY
PUFwz/9EBcMMLs0JONmLBiJPUAuW792c+EfeokqQPXK9VgsA104/OHUi6xDZz2JmBVkSBWKje4cv
KOR6FMMS49/CP61IzXys9rmIWllhw0mb2bTMLWUmaxE6vcGB4cg2zz0DCC1V27+1KWoEM/SJtYv8
fgxx8KqWjvJaZuBIz95tpHZYHPEDM5pvmdtM/NeqIoF6P32c9MF1z4SmASvmzxliD85F797zGlW2
Ednom48DJA0SK0qdUSGMXeAo7UE6Y9hVAzxAxa0yfhkJ9o1NQCFbwaM8e13oSmxsygNv78IJikv2
AQMf6ndm9W9q25jPxIlHVybfqTVLe5GVPq5PvJ9Rlkb9MTTSlFwCnjxLhFqJNp+2OaYQ6moeHAU3
NZcwcT1r3qvakj3ZweGJo3jH/aWGzTaJIEJDcQFRyw9fUeo/W9GpxJzd8XfFsw526RivQDGL8JKZ
0fXUiej81enYCOVonv3kfX0zQnePAY7T8cMpTk9p8m9Vfy/ipU6bZS4hGW2y5Rjngg5sgxjt4zE3
ZjXU6GmsiW9FM+zD0FahkZlH8OvRtOsBCWemzEX9CImN3aSy8+MDL4357I2glc+lmvfPEcoXoNcN
kTqAAp9dqjmNDNbWkGVwaH46KC97zsvbmB04IUiCzMSdrUZYWwBfIwgy9SK85FdmJIyuMtQWbN7j
HPms5i63LT4TA6npx8zCBNmlaxcftQrsULI3NT+vfU1GGkzaJycH87C4+xiW3Er49616lTnJ8Vvn
vTwkU/wHkNhtL3RUf7nS/x4mocsXTf4vyEaz+z1g9C6/+mpRGfmktQtC3+9xOn1IsgD+jFNv6Gxg
lQoFga9YcHUHx8oWauEoO2RYRt4KlffyNYLKnTMnVTXBBLYx4MJzb7+QdAe18goUDzuDAwiQfcFj
j47PH38vSAqziYGJQrNgoqJREKqPHFF7I8ngaJYz6XpyIV3+TqjNxbGC5+rCLcGGKJis4LtYuCdE
AzG1NEbXqFiZ57raossfPY4V5M2NQcfLNtG7IN5bN5xPmn980qrbYfQAZJW9siKO0DbqVaj/kZWs
7/0x7qJwCmlCoeOjMHmXEEzoSPNo57P/bVVnsa94VjTjsoKnwGoZYuvF2p8Q12SKhtccZTZlYdaX
LvfQ3kS0QQQk2GfgzMDX/9hxfA6jAigGNNf8MOc9nxwysLllwhgZqpZtRSUUUc9oAQctSoXNU40h
Lk2hAvZrSNS4FR/9EjWjLqISuumeKhc2PEGOwktWmUM4T0DCbjn9gLfRBXMwHvPDSzIS5zoFuEvn
K2NQmTLGmbeA6KFI8Wex02qZUXJdj8D2ed5IgzdJ0mbAzvZqtSOcw/kaeT+TaLPZ5BTbwJd+CDOG
OmY7H7CMnIgxgWIR3xm4tG+ZDqNYgrbIeYV6cuQK51OqJnM9kqrUk9aoMuJ1sEGGthYNwx+8ctXf
ANMItKxsjBcd/SrgAvUYo4UKMuVxdT22XCIQFQRClNRJ+Udpwveh/HVkSSXClyFonz2VljtYxm/L
VEbxMgIN2v2BF1jHyzOITL7szRzbOwPrsH4YmEmfy/vqPsQmu2eVu7vwibWI8QGt26tmwBePoWWy
oRYVv7/281cHLWxn4N84/aKW4dDNBtYc1S87M/Q2GIr45picDquDgYwsvqkjp2x8CQCebm8dsiP3
UJ/m5M0lD/t6XB6GgtClqBHMnb4It8Y9nx54l9i9Mwa6Oa9RZ/w8Yt8g4FjjYNXd0w8M/Ef9JTvH
u5sa3nvhlD5SlFZeIuuQVIUKC94OqiHC8D+zlA8jnyZ6HIg90Lck7u7vM07bbCDucBHOpTXtdrvx
dIXi35TwJ05T382ZTWLPkVCOeA5vOYm35I96LZZDxC4IgpnctMEzbWZsvVCHwS4TOi2dN1/GsP5E
Z5UneC2v0ffRUTNEblHuU5WagYP7JOZdyd5gte1aDDHV5w+Eycuc2ZXTq5rI6wi5R0rYNGZ5//n8
b3q1k227VgtDOU+mU95v7udxK2IfeLHaOInWPHQySEarLFPPZV6LeZr+l7EQzdAmeE/KD8An2BaG
tVe8+KP9RWsHk53uyuDcArvFH9OXSZfPwD6X/Uk3oC32C2Us6eD9UmVlk1FUEaHtQ0n8mZ7ddbXq
QnqlXv7GdBVl23XLdOUyEdkQ4fCmzY25lEterny5fQ1/O2a7CYW2u7oZ1zkAr+dSCULN90g+1b/T
L7LBcVkQk2Q5C6cXmTAivNSx7/kXT36h8tzgCw0Zb0Kem2kkYKkLCPPoST4pdIJxnbi3F3+tFhMn
duUwi2udIXu5THr7oMlAowMc2O5P0M96ur45g4QFKVHm7RB/vE8GtsxI/A15lWcXzFrKILpeCKdY
1qVWi7AH9rVegsfqPyh2ELaWxQW2gCpLbVN4D9bXL52BmsEJE/OdRDaXmKj12mqYaqA698k9jgrq
XASLmqvISDdQNzZ/RLeOKUWW9wyddyGlibKtFf47xcGRkCZUFUIK3XSo/WY/rDrhYQRZtSjMuk3G
5RTR/fK8bp1nqtuvnwPzY7Yl5uJ77KAcyMkgVHs7gNNitv2m4QqKpFxLVc7t25XN0uPmEATOhbex
pop5acg8BpFrW9gjuU/JSo/QwdCpjcLHY1fv3CSbLx62TenrIbTMXbS/yo6/3iIjoWQQAqKRhL/k
0Awg6iv92EYzuyg7za5vz8o29PgY1apEKykRoKInRgaYh51WZZgIwAp3WgumYYPhwygzluw951SR
uQudO2cgv6w1PxM8jL49vNaj1JZh9MXBV30TXCKeR25neA61xi0olMggVeiVnzv5LYIIEzNpqMwk
gKTy7Qzke6wWfoAOxXiiBgvgeqClpzcyuKgrWxWYW8nmpATyqFksH8oZ8kqYIqKKLDwwSTZTutay
K5MSj8FUPdc8R7vQVgC5k6ZckVm7x55oFY/UPDKxdKSk84z1NalrbIevbLYV/0F/40EZQiOYgjoR
myzPVxbd36TJ5kfOLtNjJw0blHgDAYytZlQuiiKsglRho4Mj2AwjjRUs19b7OzYAL4nNEojsLNHa
Xn8VeaJ/4ELEUaXmuhUxjEQ3A78tzBz2Kpg5zlBZU+mRaKYbWQK0977L2QyP147Hceg/X569PmO6
b94dfxfnHW22QtEbSCFQMteozmrloSyq4/Uy3pCiv0b12IoBoKpakF7dTaS51HEO0WZBdBJRQF3I
c348J9NrdtiCuoFdwRuh4mvni1MDzt4j906ZyKWWDNypU38nyWstqzouf2tTbL1m3h4Dt2cQVeH1
uTGtUz4JLq9/U2rdov5o6N3DLuRSwwI4ClpjwKbGfjSw/kUqasuozja7NLDMo+vYkmBk8mGCjmoy
Gtgm/cEtAdhiky/f3TNyfnKr8n+Rto1cDIMTTaWEQcBBgKz8xMdeYusXhWMKwgeyx1Xg6mI2jXDo
0sfpYRwYvvwntWh+tJ4b2KDKkdLn+WDTZn9ghjmUGxLok0mHFIpdB92ZWuVMmmZ9k2Tv9Ev2DZgK
tzoE+IzKjSpxI4xn/ppNZDgbEn/jGv1o2BUObpiZA3FtEm55/TCNiu5Zc2/kKOGEqU4prNP5oQp7
gM9Qzc82wHmJYVDzRBfhvjlTmsyNy2IE63Lk+xzXChyFXd3d+8l2XT4Y/L4n7hjApMv0eLystnoW
+TL0fvAGzhmNK5KuraUcILIdBeDudJv+fTxxgG2UdFpqMjdsztY8sGWVD8JnSZAINP7vPG8vhY8Y
LV5XgeRPx5DvLIUCu+8Pz1s8jS0zeEqL+BuZ0bUCFkl+mzDI9/v6aWZ4/Hc5RbN9GFXJbQC+aM+a
uSKfpiBozX+2UJG0hN0MV8nJG/Ku/8wVNdT2ld3x/Kg68ezWm52+CHWBFRm8EGLxzLwIwkWtTVcb
DKkq0kkk+dgA3u2izoOSD26ycX56S+BKRc/YxNxijuDPKLuYLyHrEkggrggiZJoIzto+RpAldnIG
aJMPhc7rW2jlRcFZjzhYjzzVezFlgCYeLacXlLBa/7DGumckmc2sn+AnEiG9PNYjjEDMF/D5Bw9V
z4OO2WqKX8QRMMDF9UIBzdYxHV7HAxG+bp8Nl+ZSdSPXp+gEM9Kg4sqXLq20WSul4VPIgCjw1/1Q
GoI9jBlV7MfABvmzO1UzhuOF8AjuBSSY75t1X6R2vozaSgM1cb0FTZTbw3GnNBESdMJ+zYjbnHRE
k2R0r12JKvvCQdBVcaVDNlDWrXkDV5Y7ZoljcOaNi+mGI6YRY5cp43PjOcsQpukKt/sFHskYa6yI
obhaRFRyhe1cPi8E0FgADE1sBDg3EbiEp4BiE+JRPz6uqWUQlK4otn4D1GSgS2fxaLt7sCDaer5f
FacZBrcHLrO0g3As3NUb+gk8vZiBcb7r3q47s85pNyTqqQtbujEFwVodrOZ1X9MDWPzNDTkjC56O
hmcEnX2YMr0/s8XnH4kFYb9zfjl3UoCwwXiAxtNXpMI0AesY0qHe41gwh3Dnc300weNWOQSFP5pv
zAeLTXrKJD0EwHG7AGD++lBuYbyh+0rKvNXD5oqvYni0j3Lx7uTnYUSADKhWx3XPu7ypbV18HAkC
VcDifYePsjhdjqNGL9TwwIoptDUqXQpDVfj/tiD9iwlrK2JKimB5vCMUJtIjcY3TbKnfolkNoQ8q
Ygn9lUkka0qYsWndZokOrGaUzjunoMnxEwLVPm/X/PzcU5LhsNu67ihOMbg5kM+NRzxFyO2ae02T
m4ogzpDagBiHRLmHhBp96EqpnW9/KMY4jTUardyI6KTG+lEafKamWgPCksP1uNtZiceMWLiGLW/m
c/NKJN08CQ9aWNfZj1au2/DAMMn4GJh1U1LnAONowUJfMRWl3reM7HtQ4UP60UIAPR4s8gAErSvD
N44dkAZaRPnsdm3rqGuJER+i1eB81QdqFbvQ7DzN7bkQU2SymVLi6whtmc1Nidq7zTbT3ASYsMji
Wr3y0NyB5jGEi4SouYdwIp7LHcF6aVL61lrrjYCe5/eBZIQWfEbXWitD7r1LwzCZkF/rjgWPVozl
BtrWA1RNu4HAdg6dxfLAWMEb3PXoIUfvKqUFb2Viiju9gWq8dnv7g21iHwewCpfZy9LVoIiksA8D
h+w1PlgXdtwEgB/yiHTsYr1nhWExz2SCF1fKJetnWux1sqQytwnnxXqxdN+mec3GaW9NH3C3GUKp
SAlAyVe25RtkQmUCRfiNtkPCldxfxb3uO5ZgGPRps3Vp6X/QXwu5rzCais1cgqWHH212mONr/fwG
1BFJGyGlFjqNFWk97gddqOxlPHC+Ww2jQOx+VYPmGvqjC7vWMsAqRWGRN/llNWpsLkN7CZa80eZj
8HSFoaR9M10W9rjsExhJ2QDNob2byxFXIAKTFGtJ1Fl1O75ucPlwDD7kgorUIU9SOQjhCFBZFbgd
HjuvKl2E5nFhCy7h0KN1Zr8nj/YTSDEofblCZqC9y4lTvRrzg02BqRmn5iaRrqloZs1MO+rWG8Es
0EUXkF1ZD3PQUPomDkZNeEvULtNQ9kmS4y+CLS7l/GsTIdnqzUrrSLf1fH5rOAxKmS+sN4t8wIs7
EqRWUgl4FBvsiBIb1GtmdTcmuVjGLZjeErYkFaGy3bVaWmAbR5KwHOa3pcrpvB3I5CUoeXu9fsaZ
DW/rLmkLAR2n1Z/AfzdqNs63YMLLR/sXHfZHch6Sk8dqiREQEToi/csGPL16daLONr2C/6r8r3Kv
zKYgK2S+GAa9T5ttqGrdMCoRf8HQ9zexN+nrQY09eDkBLUHGpOgnBmq1J4byyY/R3NsilFpNSw/O
+72UFV06/4P3b5TMv9T8qzuhBU+AHAETSEyX3QRLJkoZ/MNztiseKXIW/fDvSFjyABuMKmlv0OnC
ADRbFi3+xI/oqR2u4T2X8tJqHwkNQJR3odNsFbmCTr9DRoCPV5EDdm0Hb4BhnBoYos1BfdP3aGWM
UFnB6j6KjabAg7FhEa2HQRiHmzmNWlkmQXyOs9S8NvjZccLT/GpRnOwbfHLnS0S/KuWmKvYfZyxk
LAikpCcnRuh+VJAKnD7miuwrBYrKOvgP4I1QipGIokEacdzWDlg3fAlyweSsBNaPxm5MhUlYwylM
PD+1W2Jr6xLf6fxeS36uoI009oPn9NjolGCnatxPvzsYSXCobq3kkaYxRg/Dcdvb/Xxwffl2rrKR
PUUvllwfo9hXCJcIY7AFGuYRxny8BGQa5vVp25PJwXDRGIIl7IVHcur0Gm3Rx7q8pDQ/6/9yguq8
y7e8gxqdienMPOjNYYbq1rah0LMeppiTyWYvtuBj3ASaDoyPFzuuyUxm2AJOuhR6nvBmbyJ7jPZl
JdZKa+1LpDNH8v8/nDc1w8t+XTImbPcroC6NnKgvSNAqisbZ/hZULciPocXZyQtFnwVMZGmpxGDz
ih8kJb3OoWep7BOw19yvuPyTrIqh8FPynyIfyjWOqQjoVc+JGsRs009SFhClvzwhS4onA7PIF091
kZufySEbFtnW2xLtY+Vt3vI4XbBEsUn2zI5DS+tGmOqXQRIb3U6/8RWDjbhvRdXRr76NR/64DSom
U2KTwdEtWVzslCZXPFwrxINKSHUfg6QYf2vsJroYaznc3eFchl0Qqs26dg74aVSyodDYnVPq018M
XLE7BJ0PA5DidWjOMMxx067iWME7CIg3igdHpfm6NPUIjWKqmV7htYyeQLVs8yvoY6bj+YmXUF1M
kW+8wtFc5rm4ZoW6vcXvMBoKf6JL1vo7w7/eM5a5qQI5B0ZyBtuR1Adf6Rsq2+Hsc0CWoBT/qn+v
aXFwjqwtxdKHX2k8+fYAm4BvmboAaKHUYvXYOZkXesIJs/iDm9sg/SyfP03zb8pLPX1llxOGCurP
xkdsuJoRyq71WMgnMFMc29r+iH0W54nr0qmSTP82e4rZ9xAsedPMynjRaLW+oFE+7YAMGnDjrdLl
TO3j0z66FpgD0CCQb7PHd5jj9ElFfTafuvJhn2ROlD06tFkuIuTwGtpawNFIYqMkvw9CVtTZsytb
auKNURi/DLv9yZjL/0vqTaMPRGn1xkNWj1n49c31T2lMDr+5iEnxVIBG/oyt3Tl5JqnCKJ700rg/
k51d2W/elP66H0D/5xAQFuwFmAza1Nn/gs3viiUUjTv0OxvaAwYXM5CDLEmUFIk40AMGxSaJz41X
iFlzM+8+D6hK3jZZX73FuiCgFdPV+XLJ26ZRpLzWx8rld7qpMPIz+MiMD/GRLk2bZYPPWZ6o1sNp
EDV27QOkM5Ec7Zwr9+6gZ00eznAGI2lnkzp+5pF4S7JoyVNC1ccqo3eoNHg8NlwF9eQ8WW3p9qWB
9gN/KuHRZC9fRrz0AmNzlEfO8Tk8otfYS7HUHo9hW4ERekjgU4c/I5Ibigc6U3L+so7RdQcLuEjA
AJidSwJTuw7RChXDHHF3zx87bCFWuInZIBk25oPivrxk7JOIIlZiuQjJsVTzuQ6Ebj8zBOKXVB0v
/yRZFAx1dmgAQp7S6oqZKNeCWBSVub6vnbvnn3mwfFFDkbLTE+FJPLB0VvkGWCDr22ZjcUe908pQ
FGSffInmLFO/gpQ82oBLllmxUenoAQbSx7E/KTJPJgDyXLmNLJMjsgHRQx00kTSP928MoTM4EjaC
93eR7TLjosOA3i4+x4zfBxOG338XyG7yq1Z51Jfm+muCSMM6QTK6HHlfSc6yCkFmA9Kl+dtrgDAk
5kbcsVu66UtA1sziGE8zoLsZVC9bQi1O2aa/Wo4qpVomchBe0dIkuZy2DWVUvQTkdXGSbaKQisw9
3vz4kNDvROS6Q1t0GNgPhl/LxULTAnLjedbh9uQX0f/B0cXc2rQS6/ASk1GDxfbnImW0x0FuybuQ
jLGhuvuli/8xiADbG3oHvzjDsCiyZfykuCpHNhhyfT8chhGk+NOVq0GhuFh+UmiR6ItktBC1vOCE
mR791g1xaFo+x38v23S/K6QPAznopLvzfasmCH6GAK9DGSA/aH8VWP5fx6orMfkkBfrrLpq30mAk
Mkkzl5PQduhZNK8XVr5ww7joIB/Je8+hRNNk7N6YoA7C3TQQi97zSNLX7NRdJagvv/gbkS3LDcvg
nHxvHvlk0jmTLvp5BTOBw4DxYMNtA3wy2av1dWhWGd9oqeNH/SqfjgpEkk0H0DT30KUkabx9kcYH
VFGjsVdtPb7lDYMjQ9Xf3606enPEhvmsNO5SuJnbqazlgY/ilG+IfVXCnNruXdPjo0ViBbl67LXi
A6X6xnZ3+ydGzUkg+ipp0RmTkOPb8f5/IV4kwVKKODtZ8kuW2w+C8dB3lhFbmqQfwN760WolSMav
JWgAn3RfKbgcTO0QSGwb+BG3H3iZEkuKRfh1jhbqidnxJIeoAwfr3GaFmHvJqK4num2zj3nNHEKK
wN4elLLWKQkSzwdSbQUBIeLRoiB0ZFAqv4iVbOc1n90+sqmB43R2mo4tlYHergcdAlgxr+Dzkfsa
od0Eohaz7uInWP8HoDCClg9Ft5tFjdigZjOHm47E4NXq3C1i+j1Mz4hHUI1lTXeK/TQpTc95CuMl
0HCdW/GftHWrBjhVpz3+8mWC7Y1982RdCU90+vaP+eaMMey3uaNP5f1Xdlwu8pvA5RYZ3aQ42A0M
vRGeHfCz79OvNtqWXfyIi6J7B1GbYc7/e26y6Hz5nXlvd2CPxSYnvaCKtu9qGeNWWcU+76/e8IZC
denrAftbVaM6HEe5Be7ToNGGyAiMIET+iWzIs1OJ/hgJfZ3VhbTrMcUX7AV0ILoNZFX5leeHHcAt
MSV+ar/Zdy1miEPzO+rIbiO0lBI0vRxr60Xjf+83tHTSbrex++VP1YouWNmSkzbqReHDeDn0QT5W
MObH5FLY7FakYo9I0AIHD/iib0LlrNU+BtyvkgLOP6mg7zF5g6NXF7UgtTTfCYHPAsSuDUDSnTiN
N2EPsOSXlFqq3Jk6uJ2poXY20rA9rX/HoBuAJA8KVZNFIcamLKEK76PCHGmsbbgTjluGa3dkYG0z
jpmIFs1D5+Ut4qqYLrarpsj2W7mZqOY+pg5mPYLtObeKJFN8TWA1LgMDm9uNH39RGYnxvRg47vG8
4g8NBb7n25LMGx/0cNXREc/x+d/lxKAb7v8JtNU/f8G8H9DOnZfFLAlPBq1b9VzW9qrzj7W9dqX+
anbVV8ISPhimiNIpdPl78FchOkC16OlUgZ2KMpgvACValAwXnlfU1wV99ll77y6LSJ1mTCqp6X97
xqSAHgtmLkaEvQsLhtUFPm2F1S/HTRAaI81OpmdwR6vyD8GH8BWaBGwXkU/Y0jo24JyG+1JIE4vb
nHzi59Ch3Lioui08UpBsDt58IANBo1yrRcG5JUyK9uSlv3i6BlELJieOXEgtKhzCZMi/CwST33/4
4cRjF/P0Zk1Z7RYu9xhduhYr2a7Aj0a/pZbSh05Z6RJ1ikN7+LrSpUNBb6/ZnaRZIMOvHkpAh4Za
i7ndFirh80yDbNrEjFDbWkf0nu6Gxmw3fY5DYZP7U6lA3frVgIc4tHAFy/uxxAwL9cuo96OBotIa
265bFnVZhS6Z5M5A4Cp9SCa3Xhj/euqUzo9pVlnpY0ya7uwpa6YYY5aoOztDxgQi2sr/zXfL27as
TGrKJCPxFgzUt5B6QFoqSZ5aXeiczGwD3mzdp1e8ga8IfW5tfz+ieBN4DTPvITZdKctMUQsluAcH
QTzCs2TFFro3yf/HlEe4LwUDw8fGO4MSKQu871C6c7a6+NNvYSGwdqlcDDVAWUz7ZJTOGdNlrVjj
KTn8lVHXNRIBsFOp2VR8dWEISl3aZwlGK/B3SR7SelK1dTV5gTU0PMaX74/2v0Bx6vJe6Nb9T/l6
O+UpPn/SeqTpO7rjDSy9pFFVzNXZuxG3hpoPBb69mp9GnvT/AMdqMOwycij1yPGQOWYGUcTH2Su6
qNlBauq/Yoq/qaAvkNOT37IEsfjBM0+PpYhNR2P2FwzNWTNLyX+lZFTKxXrtdtsmGexHDLCD9SFJ
xhaR9wQK241Bpm5jEDJu89FYxF+xf5nAPsjpkaa3T36aznrZvrmhVissu/jGP60lzCI65HDRB5tA
jsSUMmaXtK+p0lEqVkhspMtyrXgAV0HQqHTtKdDxCQ/iUlNMFUEdhzlSgrnhJiLwrj7pspHtjO8b
hS8JprcnMA3RESRmzKFualmcRKgdjGBbDK7y3kzTzlks2P0V4uIZMkeJCd5f8H5bT69sjzuwZDfw
gsfRZhYyz0IaE4aBGMECLLLppq1yocZ5Ah3lSunzv8MIJGZSGxYiLYl6B3AMXWgxHe//wnP9gFgp
6lm2MuslH8dfuJSeS2r3WP+5pUf9eM0yywTAsW8TDy6H6mwlbrMa4aqcQ1WWhXpP6rRJigSYhVIb
H/V590GcExGw7gW2ug4ZtHopk4JrrL5J3d2vWbBKsiDHVP4RbwT+RqW0mUaAs4JS2lISkAKmkXy/
lEJmQ2sUDwqST+BeaOgJ4OgqMhp/P0iZ3O48M9beLiqMElV7vQ5IJsE/YVo4c7c92jzhYqGA+jZ4
PUmjC83LpvX8zfBCj85hn3JE67BN2lN1Ik0WbMj5XB3G56H9Wskr/uMw7J//He3syGIrUIj/NEXC
oaj+UC8p870HEZmP58re9+s5+Mr9XVIotuiw3eLxkkcaI0LzYoDxsVcWL1+OZbYrTQRq8PlQOsOK
GO1lvicg4sr9rBKimxJ3+W5zKff53YNOONVXqn5qwfkDXuEmyyFG1oYr5Dif9XXR0pOrthKNfQuq
DwAp553wzsAJde6D9CJDFKWXPeqZJvmNzR6Ev+ZU4GtkMME/vzyALuz4KAiDuGbquVAgR9+hYCH2
QWKw52cBeWbaDZkgGOBHWw0xTjS0K+RDL2g+shIA5tyMD3pGrywB4GxWPCK1wwievrZ+k79AvMbS
LhlBQGFhpOak1QGZl3csCpT8bgBotl2lF87vK+osdTTjQzLkQrZGNCKOKxWLJQwuIxPgq0gnUZEO
23+vPe+tW/TCC7kT7DZOdwFaG1xGCMT/DUsXwQGkz40JOEzQasxrGXAWHmw12Fu4QFw8qeX1vXT8
xJGvirg1ejSTPT+IhBiZFyWUWGMpjDyBvcX8e1W0kjew8+cNf+BP2KnwecsvnQB4wqKqxXGxoFIp
Fl7l0MwudEoe6OK0NpxFf/UrduXnFwK6k3+aFHQmZGFNvY8yJ4A6ElNK2NAWM3/4hMLU7Om970/v
xvypjVHQqaybOoPUw7LePhcvGrPAfJ/baqIahS5Ok8TZxVJzgHvGQSVxP4zFfdphsH+7LSamoJuk
+oJ7mz6nHWvPImKwL9tAbFtCxVdxhj2E5cjwbnDWusZ2pZFuNzdYVPMFbxbWO4Nf7yW63c3GprVP
pgQTNP6fcNKvOiUdL/ts/Y3srZCO4+NJQ/nG8p+xMWHwdvSQQ60mjJLLT3AxuS42KoDcAtoUBMkd
iZFKVysQwe/2TzEKCpmuyfiGoWFc0QAOicffNHtpbpxzG31Kf1nnxiWYXNrta5pXh+/WB/gGnotu
UXRpFiTyJRP5CThEASp9CF0Gb3drKxrFfmvJLb8+C0b2yE5Abl1lFAKOPZXyYoyUtUiVnu7rwJgf
ov4XJZr7NQIznDbrNr/Mq87Pu30jJWKYdvzwW7tezO4sr9WMqYAzP2nwInnlQnrJAUI+9eh+mTLK
w/Ntn1RDnzMIr+l41x3l++1s1hsRICzolW5mcTygtUWpJmilOf7JH35tD55RP8ztO3QO98bBycq0
pFjU3OJGDmLtDqSHwL9c5w0XfJjNZgTI109r7XSbEcaick7/mTcqNrArkor734KU1+PmPTiBjD9H
EuilgOGkwtGJmxLi6GmxfcgFhXhpTG/iRDOLjB7S/l5fKyZLVwKJSfbBpqrfITVeBZRehpaRj2eU
2T4CN1Ro3kqXEXzRbWsu/3F80828kZGC0Pj+wMC3egWIJT7NhPXphjyrwjWNEWoylLhli+F7ElBu
rHbM76y9pgnWdzF0vmzeigEmlbATW0b1/KU/d0MpYNRldXNhv+TAktlrkX4GY5HY2CEvJ2VFeSia
HuNBboUJjParDUpANoAdSjEwqNCVNbrEKzjFnQlveboLelYptSYu7e38MuQqdmdZd3JUJWeqN4Ic
Z2P8+P6ga/4MUjPIJVT+RviRR98+E92ymFxKB/0XfV5rOz4rBBeQavSjatAny2D17zpf2NIS9TWX
/8IiWVZ1qAy9B38c+JnCIBf784e3PUiiEHPyFjz2UmywUo30IkKbpH1+E14pzcKfDCixyuyIc1BK
Jav3rObb3xQZ3zxiZ7tKn5zuKCvFQhBB39wBFU4Pzwo2HBgi1+Uo3BOaDroEkBi6hVI6E+WopFTJ
KYReq2sNtegYvBIpshqrye9Zf2k1WNKkGNyObme0OkHc1tej3MRYl/HfGANbXz6t0fx15j5nS+FV
xNpBp8w4Zh7drEF10T2L2pHegctn+mt6d9n1CXLZXADT3CJk5qcZwPB/VBgiTPuqf3vmMkZaDItU
3LREJpFKm8Q5LhHQ+UdRI4fm15Zfw+AnIFhSGLQ9GLtw63usBI5S/7zIogu6NaR1SYtnNlPtpjx7
9pXpBT2vWP4KBQqrP68dphpx97dPF7ID/akZSpLYyqbObkIRofx9Mmak64iv1y4YK8shJS2DqDw0
jbb/UfkMliZnKJAZ9aavj7PvpdGegK2AVZkEkT9zs0RSBan+FJEm6N82rU9R2GadbsyAaxfmLS3L
ZKyC8OZax1x06ZoFxu0sNwaWMRx5Qgif20Z19mP/xT6KpPG/fy/qRnlwf70vLV6O9lR8/zBzaSo5
QzrD6DmM0i39m2/AHenFQY2ZaP+FnnlxqLqAGEfnoDL7EUwFqq66/4LhjS3Gbd8mjlJSVsRAzN+0
EtJ86MMxf1U5klLukk0GDElYh3XfocB4vvEGxtIL/braglpix6gK7cgljX+QhGJvSKApMUP+3BA7
t6STKs0e9ifSjcRpnxrUDu7J18aLwEB0lh5OJLYXR45tfLq1nDQdiIO3W6YvkOx0H8PrS61SoIxS
Q0zbSYl5SW5cSCBnoXxqaNZJ/iKQLs83IOGdhnz+xJSx+Vs6vE+ualzJXHb/thIwVGGTawuxC9Y+
Lp967S9OyRV8a0mMUIUREPyNNk7EnMpBqLyUQHMaluikOP0D5eAnaQPs6wGtL2vnhVodTJKEMfKt
7FZmYkVMi3B57eteVIiOYOwmVW5BGIHdXIqwEcNdwLA1N/7cn2ZeCiX666mlePfdlwC4W6yMhgiu
Nmvg4HRnAhBGDGSPS+tDh+B8DyhUY0R0GKMJGiZ0+FrqvZ7KfjKNhNpP18REsALkeBjsO0Dhcu+k
KlTiCxqaXV4dbhoYNhyb+tcGHTiZFfUvbfM8zTBJwavdtpL0k/B5U8DcSw8ARx0P/EZvkQnUHgGf
cJ5/CCG3yrFnnPrdhSfaakKAe027tX6xK6A77PT42IwNBceWsJa6DDT8pSGt5BXtPi+qSLTY/N+z
6PaF+ACifyoO+EwowSaBiGpeIB5H5oJsdJu4ucONJDqvXcqta4CZuDw7ZrVaXzcLBoRXuvqbq89s
OgzOMcoNwcYYMtzEO0/sVq+dswVGjHrRuY7V7EOkaGAiME2S3P4Wj7fRx62VGXycVnDG0lNGeQaC
ls6MXvqUciQFrWmesRh07G2hvKkZ+pR+slsW1kk61HpmKZUT4bD01D2xMO7tTH/qal5/q5PKUxl3
MAcd3e1pXw6jTJVdXCEINagtnCmZR8zFTkEuWGwmJcVVK0z7xdP6HNn3ev8Y9dsN85ScEHcRzJLL
JUmm9G55PjG8KaznMaYHP0vozCwKN1rrSI3KkmAe+eB1hiYkhLSNskF4uRtqc9/LpgjPF7pMvqUj
XxkkJ/RLZe7/FpEGb6G7XB5F7FSkGXaH6DNh9fxdM7uze1FxSZTn5ZF8rsiAlkCC5Oz1/uZm/ivl
1PRXI6Un+4mHktD4sP5rXBgGQqKL/KBSvXDI+QfPxYKfxo1mNwgl+cvW4BNVm8D46wcu36QV22tZ
0S3ZTE6UofgfQ+F7OXVwQC3mT9n/9ObF4EnLaPbwpddNJtAd9kVVwLOmrq0321wbanArOcrZR1/o
iM5iOlDHitTBdahL04aUxnWvpXUkT2d8a87yjy4TCHvAgqdkr6PXM2+DCH9INGf54jwh5icfDLL+
PiREm16jG/a+Hd+isVSkbdx0F6PPmxcS6UrbpQFQuut0+fK61VGGVA8WRZ5dPv4lkKv5q35NVoQT
Z3KItFgzVIHVBv0TnoSM4yLWLDrs0aSzV1kBE2rlA4P+QQbkcfJCIEWi7IcLNkVcgxN8JjyZVFRc
wPHo8hbdnRCtD2HI1MZnymVQL2pl5D2gYgmuVow2ZmPhvlGFYHWGpJw0oCVlu8KAQ7FNMajSEuqC
HCXQCqsFpXL4nNfXpi4AQaxWdaIGCIzhqiZhbeDWExikBsflxsVZmSx5HbqZRNM9mCqSmc8f/L/O
VSLCHJ6+ripGdfHswcdcTSP8ok+uwqqWQWW1Ieyp6pt2rOefVfHLOn1DWji35EqvIGBpwgHRn0Et
+IbwF/D378sy2I5pV8ibzuXuv3F0FrkEE3il4CEsc8UIQvVMywto5yX+VhPmqB+GxJs0HPpQaOT0
oPY8z+5eoay0SpY48hQwGNaSu2LbP2PqWlNpJk1e2JAKkbCZ4RE2/t8MekCNGRNjaDrFZ1G3YRZp
rONSp2UKDLcS3jsxFzYVKotZCokydJLT8MIeN8TN/GmqkTGsNHI8/LNkgH+beBbxNgA+t0svNK+p
y0RhnVirmKtmv4i3vK1ZI47qTaiBREtPewoLt2THSfUYaZ+d+8eKzwp3deNmT1Tjz8iZoTo7P67O
uMjdP2f219X5yxQhL7mQs9tuDJl9YW9+W8NYUmhfuBOMO638+FCgHGBmrcfAhheSYVHXDVMQ/cKk
xR1ctFXJ0PCy+VdT+nFwQQAMhySlrHlarKA8VPRGJc3av6icsGiLKgNrlpku9NScOS+alGixfsHy
L8UOhhGXQLDOLTAN74nAL2W0e4F06Dh9waXON53/KQMCxWvVXF62GnPKYMMdbQ7pW1kyu7YFeYE6
s0VHd1ws/vO2z3JxLLZsv3vWdgk56UF7O24OqLRzpFRTO4vw9yrrFv6LNUM86ytZi+NC6zJGXkaT
tWjYH51h0P1pMZHKKSia3S5f9C/oRJ8trw2rzKN+eWLSUEw8uAwSY+hoLhP8tHnbnbSJ9UTPk9T9
hPoZ6mm3VUQf1hlFwpbNFP6e/odX4w+Q+qMj3vGe/HN1yw/maz4IHetLTMRW+YdqXklrJc25IKeN
IokOOF9x+wQOp55PK53N5SY+EXgBBOghRsOZVy1MIuioyKyl/iUhus+NVzcApWuHevXDRW/4a7qa
7UJQ6jnFaWeOd7FVVznA2Jqg1iu/epIYnuyJAUUiOBcXnv9+ZMviAJ/n3MwZl7x3VW3VVL9f8LjK
YC/KLv4K1dT8EvVrMj/IFRGfVackVxroISNPRyzxC3FxiL9xKK6NSB6vr/eyRhz6AZdi7BE9Uh/Y
0XkuDtQXnzWFN6Tf/pTOaOPe96NDXSxsar+gNDGr+OLlzTceGnXDT+0guTPdVo9ah1W78wh2ciEP
fBSWUB+OPJFj1unB5R11/RY4jTHtOsQaI9CO+BM8XDlPRMfubXgBXDzYMPdpwzaujumYbIN/4/TO
qtwMBRLgApSMKSE2SNFk2rk4ZR3RTz0kGIdvXL3cZ1cELFqW8wNGLkgUnigMQEtyOqhAfaZGKk5k
sUSYzw5mb8x8YJ2C5vSGD5EEGC+byROJkXexwhOkp25IavBfauBu+LIAOOJCbvGGBdzwZXnIGpai
UNse5D112kHqc6SNSITGLr7uF6rv1EQaS3d0w4uYxIdn9j9Y1f+/yBsuw9hfrbPXo3rZQbK95dwS
6dci9OZNJetlERJq2s+A8u45J1z1p5wp8d6qh6kI3hmyR1Lpv/g+WOn/fp6+vbu3+tk3N+jS2y1i
bA2igqcql7YEqT7FWhmzAiarSr24SezH2YfLkcXG/ly1n1E2oHiRtXyJdGVMO5wB5ZexN5O/6lAJ
VaTi8HefpCvHpkxMCJCtMkMScPXP1eCvS0IbQBnwId5TWRc9by69HT3EA9qyIvJEmu/ODRIzaHop
GzLlODCUiuhod133Gj/tBFjotHgewBP4/wH8OQvbTxRwQJDRmmkNRzXP6NsdM6vOKg/MzTQ2LL6b
kYZL3tO8ftPKDs9J3YXlDN1oK0jLktpvSV2ugjGHzKMZqbj3SeXwp5q/1pnm/5UmmO7poUdeaPt7
g47Je480v3Yuw6JcGf/JYr24m+jzrlsDiXiaOn5uFmnz0OF9Z3IPM0kMwYL6YPEO9BLBEFMjCc06
oQT2eb2dOWGCgaHxrllHFhetnQEbG9CyF2yURiI78zqzlzs7/50KPHC2lomfVbj1//u9i+YbgYUZ
qJTVNXCYILjeGwXqB9NkG9ZPItKMJMzxM1SNwTU3FLERbdQ6bK6GvGSicqhUmXg33y9mHRW1sLhC
SLnNoQNS3jxPVWXmApwiaUfSgZrQOMQvtNgBPQ/w1o4RoUq9/1zTLdUFL2GPSiM9KnHid7JcZ9QH
wjBDie6uzkbl+WIj6ItcIQndG+E5I8rwVmLmIQnosOCWXrR7UWe3Nf4QSL5BHKsMb3DXuMjpIBn5
2Q4+bG1AMiuTiZOMOPbBmYI3yW1IIt0dBpBtcdDUB6+qChbJ6wxqA5plf1DeCDAaq4eaphVcHWo/
WTVlefig6yNuMxuOYY7ofpGwt7pSq/Nnv6J0BHd8bilmiH8M4pXTvuGWOXey2aUU92D7cMVPB1f7
8C8L7Mqci/AV5vWbf7o+GU4FAsaPpOOaEena2jguPiGuOeMgQ19Q1vky8oEuCY6MmI020ql6uhRA
XGmd2oQMWDKsTr9m9RwJoZ/Ochh1JEPS1QmwgTEfBBI9oUlX9EhTkaomEsCmKTaf/61PH3J5/elB
0Kw06KNYDXnviDRWZxNgROa5Ft6LVDeFI1H21c3CRXJMtr7ucagXRyD6rY1qJcfLuF6c43s3HJh8
dW0QF/AZa/OAd6dvOqLqsyKEa1AnNy30Q3gqqZ80HxNCND14M7v+zqP6pad1sirbcds8YWc+1qp3
24QulSuHEiikA0gpPc1AKjeegr1B2C+iCxdhea+SVgk/rntWW4eEdro+LBOVY2xGWuFtR0h9S7OS
er+Uuoa3hAviuKQCvuykabP/i62aED3U/wXQAw7n5nISRggK5h0OTHJDyz5YEioOnOqoIhFdxL0r
WOagicHrL0MrYuRjX4pXDlZDmRAQmtETE+GzzBe0bkTR/nGEISDgk8z+uDN0qYP9O3lmUNXm0Qnm
y9Lq36WFT1SbaGS4QS84DsQ8zKGMvwJK8PFWIscziAXNasrgGNh47S/KjeQkcStoj8uF4vbVsce6
BOR43VBvydIYMVTq3WNyjPKcgDRG9lvpzKakT9uT72Aj4y1nGaCxeVlJXJZTxBCVkshkkOpvMaMv
JY5kktBSGUfhjAoYJGeBsAzGHVzK+sKErbF2bgDOeioI7JU+d0wKlS9wifQKH8B2MS8cwwbsAfqP
o1HnRrCp1axwIgiS1ZnZHK+4INyvHc8/GHRZlwGDMzRHBRB49bqcBA6uJwAlrZfzSpKcfGeKYxf0
vPU5kVXj+h9aQO426di8Hgz+3Dxpm9TRmkHuBrJe7lKu6+eCwjNxgNb17ThjeD9tvUYSRnIkrEBW
xFJsGcn2RxbgLoKdrp7uX+ZXWWjfjeZPHaj739BdZCTLl3rtgK7LtEJg7teHJZt3eJ/GyV1d2kw9
waFsC5hGs0UY2i5tO7GYPTxcqQdippK/KE/76mfnD7PXHPo1pxvjMrJDYHA+8nUlKVMfwW0SvTqh
L908KETHf4Pc4W58zXPVPEsmA42wtFax0sDXgW7Z0bl8s+X/QWLKO31f/fekGXd8ICxwGUBDg4TI
KZVhklpoCmH86Ob3u6iYMllBA23Wq+s+vLjgfnWfLIVXlNnGTrpWEYFjcabh3s8K257A2RUIgEzy
vqXVE7hlcdrWPdwcvYDBmyzeWVN5pjg962rQ+I5xHgNpBrpFAnrXZGUYcDIeYzuFoyC7s01rvugr
HRqyApq3INUUkgkBEZxCwrWM6MMDLdSWbDtTm4K6tyHMxdP7tbq3KVsRxumMMU3eDqmXp9+th0nP
4ofRF99R5KT3V6tT5Hv1UfPS1G3PwPEweH17DRFNZZd+V11ZEjQxgD8bII4u+ZlY1Pt1eHhM7WPh
yMraMjDp2fTvANPTUeiCzGUtUpcr96b8Bz9ovA5jOAsLuZ9JsoTE28rbbZDFJ/D8yVpb/JihOdvS
ghTBL3yl7X7/Qa8LgBZpJRK6/b0fdFyhWLWvIlgmlnWFT4rpCVuFCGMhZezyFO/Hk1iFhtpZdEJq
ippsTu6qV2PjUWZxRpaPpdAXYGn7SOvEgFBW9AP2T1/WQXYeNGiHskkRHTy0wyHTOHIqHosvrNzd
ur1FXHQyRjRCLrGp3FZnBBh7ukeb9SYBNRwIThF6rqMpa28n/QYOqoA+Hw3E4OSLaInERpzpnphs
BTfAR+iTTcFJj0LoIjb750BxDGofB64JfxjhwrTGRk6EjFq4bIKC703cBs/TgfJGCYsaklhA8s80
yGVgciHlERyCUtGJzojY9oBrKIeGUzz0XZUwhSGViS9Fj/Tgzk3sYHGvkAkpFqZ6Vx2HJEzsr02+
9PCAJLzWA1f6MbEzffxGuYNfxyDSs+/5Ygd8+tiUuULmUjj7deLl9mpXFQkdiLolGSDxpDMdundq
e0pSbl98adgwrzfoaOE5QO28jNrCFhn7RFEzSf/xgWxGXDJpnRRp6LGly6sXN4pf4RmyuvnmV11z
SA8ReEuJJxs9Z6JOzxA4/54yB8StrVL1g6t0lXmsG+YjenkaJyy/IioyufW+4+rmpb/bKWZJIyWR
b+xeGaawMgdIVuIv8IgyRjZtEk2RqdEIUCY+tFjPZnbog/sVffRlCLXG/tuTITqJ88aUyvdVIhK5
4WlHle2cW2FqaBhFPigzS64ppaVdj7HsDGcs6De/ol6+qkEfpQvNPcBBjMCXdSuxIid+r87/GlMA
HNUezmfhKjcnsfX3MQnBFMzx3S51k575aAJK/uTvRORn6ng5QlhqdoUPS+b029W+gquJUxXX8Qbg
LvDJa5yXlHrOqbbgx+HSEaEHqzhwhZ0LCSl4s/DUrKFvmxaTNWVnuK3d6iAgdSegj2Nof0nShFQz
q7kb6UKA5lwu+rMxAiQpRQvON/chQ2z8ob4dDu6MEC2tbkoHsU9u5q8VjisV+X3ifx5Y+P1Jx6lR
XAMkuivd27Em1FoS4b9r1LxIWN46NnNGUPubxyVcCkZF6Op+TL+gm1T2h8ISR7MED3r2ARIUVY4c
fW3wJrMQNgUtLsAqjovyQ9ZGN0URjMUO0YGmox11QyxVE3wJMIaFHdtBBJDQND+cDgfTivEDoDSF
bK/l3ftBAjzgPKGAl7v/9q6QoqG4Qke9SXdJDycktO2axF/QDncSkDxzElBbOW9PsnM6j52tX5Hj
gSLZU6BD3vpdfnwKeuC+wX2/mc4zjrYG64HwKQirFMfDY7GmzKodub4KbIxvg9fIfRg0mks9qT3F
BNGuBUvwBFxsoaJrMUDDKpyfI1o6UKqWU5O4fu/GfuhhbFxseacbVvmsC69QhpboF5Ie4Xif8gIT
o7qVzuEnUzNEFy73u3W12L/khBcyZQCD/OXwh+P2RRdsDQ6s63ojsT7RsWoLmNhS0VxLmaee8pBu
fdEU7LJ4iud3OJk2O1k49Je+uhBPpbO3h1t8Sdp9xC4iuAJrxNpZyWR4jfLwnShYMnK/qmUXkA7A
4xXNdmvaZNf11K06b4QdLEV9PG7Ck3Im6+qF86VMlvX8puyAAbeSeQxmGkryBqIFNDvcbIdCm1ZW
4QT3gbeK5edSBsN8anRdpFW0yv2lg7fWdmNSf4p1drjD8NQSyyE98yIbm5mehcKFRY5LalKtQY1M
4y34uu4BND8zc82Gvqtl4jQK4S7tiSmnyWLK1X03LTzRy4WL4xWbldyxa5kpFaH6GvcagT0oboYp
OP1f7lmljoQHzL+s0jG0Fj0MBIGoHOh1ZNvAQMGEQpKRYOCy+fihgnTf7U7VYLKp+eLNTPfB+QdV
//avzQfauTtN+vP68H7uoirKoQ/+AyAtnD6x9d4WRWIwpbzml47B2cH0TBkfkAV6U7JRUybRjemE
EUw8EByLNT/YWB/xCXbKmvAfY3OsT4P69Bznl3R6wmQiSUw40I+vAZhqeiA0jXZgeWKSa1PvUrVC
Vw0a4xh2DyZM5dsEP69SRMUDmWrQHsRj14JLBLM3tBY54Zxov94VxVM/zfMGVA7vl8WKKJPVXBGf
yzZoR0T6y4BbPMjs1DtoJ9wtRpttjaJQMJ5+4beVk1e+WkfKHcQTNQ6YvmIAUTC8HbiTYrl7wPjg
PJSXevrfbOSDY5/VSgLZRX2+HvZ1UK9nS4KLcfF8TQynrkIk7PS0Zz1lyB3ObuAkIX2tte3gTAFi
RXWeSyOdIWyuSKe404N+yWrFuJpdaJRUd/FiGweSUHzeA8ZLGqTGEXoLFPv6BM/hgueKskUc+4XA
JyC9aHF2HMAhAw2pI6elzb7NJ6lKM9RhSKUx8W1mWCjk9fikaUdI+G3epQJfebhglh/D4o1wywpp
YzlTr6tXmIbzNt5sjXA/h1ZQ8scc0QILbSqA3Dq/XOaCHDvJUiInMLnu5nM4CN08yGk2DWILfKGu
Mw0MGZzCUB7rOEUwHDUBNq62nqhCba20UPRqXWrcwAtje+WyM4coqfQQIwx12VS+XAXO71Tbxvvj
QJcDszJodvYkVfxGjSCGBCUrOLG51Pt6/5Nm6unSUJDNJuFn2k4WTPob/rdH5M3F60JdyHuLSqFC
Vqiv4ud+WzEyfy3NISRSDR0BKUNPmYJSbQjbgg3vwXks2Cs8sT8BfYJuWcsZpzkb6yvSswskS7t/
Xcxio0Trx7kDjG/VF2bPj0S7ChTd0idLgIdqKkgxeJBYw/rFtwam0RgxbsUoIfkOyzUgApXmxlhu
2mbFVpJzGfhIIWrjzYSjePABj9TRfHiTm8V0VhzWSljRNEr69cluqLlcu3EiTr+tuaak1If2dixf
sr1Lsr3Yotswz1E1P7K+OqY5nNOYpVAnTzXCd/8ifxE6Pcq0/RfBQ8A8RtzDwRQ3eAprTEQILxBG
FtCrcRuXJz/SGDGcl/000FtX0lrffBtjKbDSsYjwYPJLDHbCl6c8v/IgM0ZxORqG5w1Gyw/hk3Zo
UGhTQ+ExKKUPfcErE7fnEBRom05yVxeko/PH0WHVr7dN17/+2nxzZuTldtN0yx2cZiWaJajuhKZ7
m8oYE4D8kIKgVv0HhsT9JUEwa8s8OdvYpcHABpC1XknK84hA4NBVV7mHfqzAPo/hv5YrRLY27HYE
zwldYYCTmuBDSvSfLzKxVBjnoHbwJPoov2bjhHODrcm8xdtaOjZ7hgbU9jxnmfXF/OYfjnaUV/fP
KGUjwkmdR3DdSMzj5j4GA9awn7Bdoqjriusd3y6a1+i76OwQtR3vejokEi5BlEZceSyKUC01kZid
pfnlle86jm/j1vgwP9NzxMmkrBp1A3YNd4ZxuT1qu6dOagNPYKdtlOSAKUTYGPxBrE5RwVNoyAul
9hFVB42l2RiJHhRzDBHODWRp+8FI834sgEY/eCjGmGxTXmo3avAQndRDimxPA/JuIumnD7DI12Zs
8fzju4iLPjUHWpVVezXGeDFmFx7LDKRlrJ6+vp+8w54vwxXAss32KH7mVKUl9Ql5mdGB21m4SN00
at7IkOJF5AI4ZwIRKOg1RpDPqLifva/j7TlUFmIuPEQ3kepn0yn2Grrp3gfxSgZGxD4DtZHoQbyZ
9CXMyIlbWb8PNRuXraq0kg0jWdqcVnx40+QHR5TQzgXFi7UwIAmhMrL3CNQgtSDqPieOjm16ja0K
PFnsa0aQRQPaFRnhEQ3/oAOWmArrFNGTBX+Vy1eTThIOLTEYYFsCWCBGcYXLz5MOPrFQoIYPGCXJ
OmiAvAS/OaVCs85El8VEg4D/N4DFLcYhpB6SJLAVAuvsRm2ej9oSSB1SzNGwxLyHI+Ti6Cnc7+6F
Or02HkRvW2EK/rp4KoxBuzC/6M7te/Ek+maVPMs/i4U/u6HNOiFZP7icPn1QDs0qCF7noiI0V899
yG7yjuZPQDlEDSSqd3mYwUONzEXVAQkjpAFvuFzo4yWb8IhSiMDKPWNxnYZMb7QbaLQr7eDxtQSL
COhxlg28YZWA/Bem9NQDqRbyFmIrFabhN+ZMkYnSiLFUE3vx8RdPlzE1vB7K/V5NWfDrytxZNhIO
9N2DStTTmzCOxMs5mKJXqmXpjLaSsePIyL6ske3lLrsQRDSdy51H6usZ/Jq9SIu8++fn69Wsi5PU
nOX1r55RL0QMJR8D88kU+ZMJGfVtDLfEAM2DhSDp1TSQ1BympVfBVLnhpocDeQESWr4Qjti8a8Qq
1Ig5Nm7WBYV2JHfJdqxP2Rqz6C6t0tbIn2Vd8Yr+C0yZzo9S4fSqRlU/eUXhIanZ6JEpFqcNCfbJ
Pv+jgj7CS7aC1Hmj63SPKcJGxwnfAgkygO1fOwGV2LzgaXUSFkFNW6J/CAE3O7Lni2GNkWpUGM55
eHj7QBCOcEDhEB25A1yyjZmkXulBuZkl+I5diUiJpo8V7t8KBEGxapBa+J6J5M1gqO22RhOb7yNy
cBr8ukT1TAxx83nS56JMs69yM6/Wd5/DUfQb9yq53au1QES8EyrcmKrqZoTIoJKVfBQyPakVCxkn
CLeeplLyZZ3kl93B3hSqKvc4N1a7hdP4X4okuUhyxwzQOKwi9ibcpWk1b54rUnN6ETHl2l060jx/
JCiaGp/CeqT3zioWTYhTz2IJOLJX55VL3l5rN8Lhdf6revWHGm8rvfwdb9Hqt7J5OPn3oHly5dCY
pFYK6yq35obZSuE8q8EzmdOBpsY3zYf/+vUKVGH/yhWdBciqFGk1cOD7Mso2zHw7tlP1Jh7P/fD4
vRN0jbxm6Qiba5/z5o+QtARK2JRBDXdUjLCacFIc47VmteQilOOn7l090EFl1d6BSZMbKoxQLmGZ
67zR/RWGC3rgHy3Ez7u7VoTVGA1hIDt3Pq17FwX8vCHQgdSwewH3sEoPGL5sVFrw5JDHiTbV5jP3
eEw2qVFykiTPwtzpdASU7eZdSET7ZztD/Q76NOL+4zLeBE6hKdUM9hfjqLM0X4q+I7COot+4DyE9
B5wuIE3iF2bRYFWJMdxtWcLAYHpkXwatD+ffCrHGzatcpJuHyh42nFKLJnN52LsuEZRrLy/audbA
/PDhsuAD4ya9yNvSUfYvZ8Bc2KaQCkRpStPHF1pU8jE9wq/O3s1/zVx5g95D639+RU77a5LyHPKh
eDS7iPHJUBFFGPQh+VGOKJwou+cnpgNrS0w9aGE0c47Z+GOU/zUork0SGb1nO0t1vlyoe3CSyENQ
2dADzeCBEPaqFoRpwcgXcENVYr8XynzWwTxOjTK3koLSBvLLKZ0BnR3mP991KQyxay7eHr0Le0Kd
dEi06MyASeNtDCqSDUrEXfH8LWvfVnBf9+rYH0LEQtcMSqES/+V6wY/EiKELF4sL2ekmgnisAjFR
kegOPkGba0rvR2eKEFH3uhnAWvtxtuDfSHcHMWdrEv6lwsSHYhDBbwtwYySO/eR/t+0ns6HXrdPz
8915Ikjfu9OWWT8AIW50hB0fcvujClKuzDR92oVApf0hPt0g8+v9Q0JylLD7zg8KdWMp6ErJ8UqR
KvEv4AjnCDxQGJCMlRaOJ9smo51nFF1QM9OHipQLdInIV2ScvJI/1/4FdFar1CSiXDlZvRusZc4q
FkGDoZ6J1xjLUd1TjS9+cUVF19PydoRoltF6u7IcD31otHchtu93PhTdlCfjXVoGJz0ay0jdDOuR
EC6WP6rXRUJdN3+BdEEzTVGZDROBLlQhKKPy1pr9IC5azgqOHyavvG0V5+YZ8wcAMaU8UbKjY6N5
Nsq+qtXmelVc/42RupznHdQHagLfvF09RieKuj3eEAawzRQoTfP08aneaAWenua3bh4HtXqiUmas
IE+LoR4fUZWot7Ns2Vyocatisi/Tn+Wd6ioxv24bXJVfcP13cALbyzg1L/LIZxMjoPAdumcSxBx1
Xk4qUQGe3jG/AdDv0296gUu68Sis1JvVnaNZizt6pCCi0HKKSUXHqzNyUNUOLCdPHR9R2zRo4GcW
z7VnjAuwrQHQZARBlq2k2Xb6+xJLEadQNrjQRjtelLjb2T//akXxPC+mt5tyelRUSHtiunZwK9uN
78npYt3FF5J6wUf3mu1TMxMxdQKF2afIK7SFkv+U90sevuAU/7S1x1uZXgTA6XDce5YMFUhbQ5nQ
rz90VjWlrzBIWub1/YvPR7KY2Mi0WQx+0ZoLabtitDcWgU3eMU/HqrE2Ju2DkB66OY7OvBgXbiX/
ih0Xj8tgM2tcD+lWZC+8RaWoAu9ruP7CDJFAHMlQun3LNORvux0thP6HJaxLbpSePJ+Z72Wm3RlY
YKN/7WQaCne84PZ68BC2/sPzzmcEgvIxkEpUpCkfC3G4o+wv75nGT0sZ0aczdPFpivfj2cjR32Ax
zfnnrYGnwoDaUQzbi8hopJ1V1AwCRBRgXhXRL4vErMKML6a5UGDK13GDWfOK9QGb04c3A9qUQVMs
rLNJ760w257oFsfqdKB45py9yHgMYHALOE5kZ+suCW5N8A9uFT3aavQcOR+kR3uPcJiF7x5cA25e
1UxyllhMh+EKTGGygnVClOfp7Z5tV460b1ifkAjC5Av7u+iV71ze5xPCOOaNCobuZDrLIxDZVdih
kEODHBGtRv2A+n0WrpTqpTUGzmxy3ZeS/90KnSGPJgZtPHR52FS5mI5KDZL/9uqUY+3UfZXH2nt2
cZtSwrNs+5zjYx4V9GeLbhQ1ST/ZAMqSt/SIhjQzE2FGqIU3i38TKnEzIW2+qVPZkFJFlJRE9o8j
lICwM79XKqqDm676352bVjHrTe6S+Hcnneu37O9DL3/ddFF5tmGEYJYholsXkQk5uLHdFL0vW/P4
NYvKBfbF/s8aPvkCMEUraTgu1yObpBTzrrAB+DgAOs0/OLhJergkel8HDUYOTNysqEbOsorI1yU7
dE9pVrPLctYRhBaqkshCJ6eEvBl/KYzfPXAetmVx4Dvre6N92VeKqIXk/Chb/i2TBujdRtqi5b+A
MXYedI2QH3Pa2KKjmtrkxMlCsCe9k6IzKvH59otTcZ5owKnzZxRmPUNeyMLAP3hq1rmphJbEAOpX
D97TBTtfbicI9SOBGjf7vh0Mw68u4g/yGaR2snCVS3xqfIiCjpiJ6d31qBPnCqIH6TF+ewfcIJ+k
XB6fk3Sp0CeN6Lf0hdLp4HaK1yf73tf6qRLXhtUiKUsQOrqEhRDa/DVZmrvozRAuvCQUyyooQvM8
Nn1I5tQHG24gzk7VMNNBSs739YUM4DdikI5fNmuzV4RjmL0LhD6bhlZGti8cGxykavinFsxZqmM8
gv4T6dDvcpaR6ykhiawVgWmDbqffLr9vY/AmavchvbU1pDdfP9dOVUp+GF7A13D9ciGvgmSZSm1F
jeEmQGrzqG35XBYxzOFshw5BNXQPyzKrk8GUwqu/4OCi3W/fOBRMU5i7b8GwtwrIRY7JUnmh9Ic4
XdHZgwWxR1lTFY9GNKl8gynMQrsmAAeccVcjj75XNxkKJBp/yg3q4PXFeieRxWMnYoPg3AG80zbl
IZREtj4+ffL+0HNigZcB3x+wP2/yVXq+m0rKUtg6L8bjfV8N2rArMr66XIo6OmfridEufedonPpV
RqXHpRoXND1S92QzQSqz7zcA+c9r2TW4LtTa/b6+yr2M/UzbcrDLnQtgyuv6mBrKKhSutsCVNgzU
qcYxuKLJDnTiGpCPV6JxSP9lLTP4j5cKcM49+q3+zBs4b9jMMPzgqeexO8esUccBhqANRfELI8WH
AVWBRJLaCYDcje84vOM7YmtXkQcBHfNy1aW37cwE5YE2iCggU1F6nngW4aBrZtMYm6+shYUPaoXQ
fZ/ULMP8M9hmWnEIFJsYxSIZf2twAGMvpNhwf29g9nRddz/zbeHniWPVr6dHCFFmj2RooIPKoZhw
dizjdabHoPyqS6dmfzesQWP7zEBA+GYuwvtDjbxclMZbtLw/OIbbziV9pO03HFSvUlIqBx7jeDVR
V3PlOJaeiyLx+Hu/KHH+GBfWK3KeVwKpWxcKd0B1EKdESESTXCu1j1eZoep4zQiEaYkpJdHU9MSO
fM5rcw1zz76vo2rK7QphPCGuWeab17ypacJnSBDRz2+flZ8wmw30nHYsqkaGASOBF2lk3n/Rd39v
K5tSfAUznu2yontXpjPh4uKniihU9Rc1JunMdPXbQdWZMmXq7c5kDzWyqxJY3/aWSkKpNRAyYVjI
H8W0n5jCHgYxUiT1F0Hkh2iS+J01Rmm6546AZ+UFFniD82RHaWoX+PcGlFFxxSr95fxPxm+bLW8q
Dzd4fbggdovrfl2AVJuYVO43EeV9x5VuYXzvtk+qN96WPD1YStM3nUdDmtNmrI0wL9Uc4gSAHBik
cW2SQs8aHPLche1DnIZvh7BhRdy0M6NlYfUY9koipsw0WeymFIuR4j6agNkSYIhe5R0g+JSctmdx
9PdYBnaMQPqC0AXPbNk4ayLWoZcbL2q/jdjdP0FaNyt4szJ69cC1NlVEbYRraN1BcHwnQ7T61UNq
fbSmZZU6dHW7/bm3qgKkdKQ7Eu//dXJ2exOsyibvseoebMTiteRT/vLY+1T3WZpbYiq/3BMsZ0YN
S1AfvJLH16gLldJzopsnHvgnpiWjIN1xR2Yg0/mrVzEtne9J4A4kxau7nYSm80wBQNlj2h3//RDw
Lvu+/DBeuhsOgHVxsVy3RNwElkBWs9GitBPw6JFK1346tBWoi9w87TGUHv5gpL+xc3Di7yBY+e67
+3GPjvEP0wN9Dhk6SI11uZ4jjI0kY8uT/xDTVHs0IdsN/Eg1Bw0vteShkV5T2eGIOdTkBlGMr+2g
ZL4aoijLyKUuFofLb0HcBqd4n8HPSAGjlFbtNPwN6kqs9UHPhWEqqejBOYykA/AQkFYkP0sqCPz+
5A8WnfxnoN7scKRAl/r8ah4hFya9/5kv8cJm1PbYoZhFEPhiG4wO7kiC5fx3ezhnm6cfjzYZKIvl
m3LdvxBxO+ixQxRwDkmIiHASvm/qvXr69+lPsJyPSNW4JIGVepq/+X7VAN2Ao/Xn7JrZr4Ui73Pe
LlkrgSSyMZoVwcn2vpLVDsuJYd0jmTcD07VST+FMtyu8yfxtqYFuV6goViK/ITQH3tvROPBZK/iJ
ce5CNU1i3whIOTuL2oywZ8q9oiHKVOfW0NDYt88VxGzmzfSWqM7pVmYkClhGZC/6EzQP9NW82Oiw
cyuVIIYXsPK/ECVe5oYUsCCe6sYBeGEGGs4XoV9TVRgXi0or9MNDpUJoM4K7RHYjJcbjUGDhxTio
kOXopmVAnOenTfNWjZg9+SVF3w4sHEwWpZYFPUk/HKv1q5rwV6stJy//7PYWFOuAhmdqvIvNSC/P
IXFghz7vGjvt+VMQzu7AmiwDZMdZdYKP5q+D0JuvZ2j2OcfNcJPeOWaHUH1ajTjMpRMzKzk0OjBF
t/jhKv4oTOrJltdZuEHT2Pf4Imk6yzFPzmshZeyEFnK1Jp7JsjVE/8NUZVXxDg9+OI6cr6JQE6OY
A2aHaR2UUipV6/dcTqhGNINqDKbYX2zCOsJix69nM6n50t0LumxioWg4S6SoY/IGczdHQYxg0WSs
8WgWaSz6qrYThmHU1m5OjG+VoocqmC5CiSOsrhJ8dqvS0ns4YHII+J2/ux/fJs/cWVwhXUvFEIyL
TXNwtzGDWDXvBbSTke2aoQtFPcXM8wBRPP2x85cXzDRpuIVbeG0cfc+pM1QxNjbVwL9ZMW8MPMaC
t1bwLrab40k9k/Y4f73OIXl7CjP8+37M9Tei1F7P92+vIxGqEHLZgk9yCbKeEnzLdZAM5JWsTlws
Vd+8Ihv2IztDwOOrY9QrLF+2s3AGb6pNjf+hEpvuLvJ5mE0Auiw3VPAneqiOb1r8GG6VPgxVa0wg
7ja8zWvXZub1onDyEcPizeTSiuYVv7E2OgOCczQGdNh0ow8Na8o+2cJdhQmrLPo3DixD/NLaj997
MJneZ0Vo9wTZfIGXpjgmVLCd8H5mAxnjpy0HML2U+e4vseyzaN8SfH8N2J6yio8Pmaei7h2Rnchf
4oGd4kYslndbIYwtuz6v+TdzCQKgGef2inNl28dI75rD9BpX5jmL1KPOot8bDgQBo8fUa85XCTzK
VmFA5tuAk7R/yxiSNvKnh6UCahHf5FwL2btaWdkf30z50TwhN3NJL5WYTUXoQWr9tFJyHpWeAXT1
gWC/4ZKAoJZu9J+n1b4+OSB3zvS0xo2nhggEnFGfcxGV6cV07ZEnGpbvo7WUfy9aKJ1gW3v5Bp7x
xvEc2GJHvYcqEO05fo4BvuWdVwmuqweH7/tZxJIcloGW0NCGs/wY5pXQwb+oH3S5SLDgUz0/Dsbu
yTD4yU9zA8JRmSfpVm8bAS7vsSrHylWQKg8vt57HpeY96OvapqdvXJUvvfk7wyII9ShT0Ehjr0xf
874MScc7H7b7NwuL05bq6j7USKKbtDBkKeecnCMrgKJcVwRX+ghJx99YMaxgWga2iuS1icWosZvK
hsBTxlM5l2bGlqg01mTI3+YJbKLCSrXUk/EI85Ux7nUCB9VoY6bhhfnz5kcz+PSfjShzaJqLwTr5
ZjtW3trKc7EuhJwjPBpKvygpBB8ADk4f82Oq7qgN8CfWF79z3fgkusPL9yoJRRpubh+LEze8irIW
JmZyjljiBEgXjOMY81QTLjk/01RRkhcMd9ZF+7u4xE9EBDR2VLls8RM75Gi5iBGP1lZBUKu+ovaT
Q9jC9ZVjfKEAhqxAX/SUA6yI+MsxCjM7hzrWYuQVpEDGoBg7j0f6ra4uBxT5Vyc2w2R+VbtfB/6+
RLmgTIeN6ds7//gPUuRnyb4OGCC3+JoVYf92YW/Htf15ex12af1dc/hTgFYJjkkziF/U03xLLBXi
bVXkfrLuuxk4slyjVOosYIeNYWFtAbgu7xSQxlkJ7GWTtTX2iap2o6WjhAFyDYR2BosqUobjfisq
pXa+45f0fKWSmyTpaVTpUGx597yg+r1bz316qTYC8/a7bSQDFvxzkoK7tDOmic/CYclmkHLneAUr
t0nBLXAjvN8P/igW5/jYEcm956DKSrs92DtcUgc2LgLp1eEtGNBY400kff07V5u7iniGKUuIFrps
Ne3NI2fOh82sU3gQsvmWq7LV4V3EQ6YGFWAp7Fv8A3JHv5PVC3lbsBBOgAXY6UJOJxsZvnf3XJuH
ZOO65knjtmo5oTAJLgNSbQvws3AYJZ3RE7PAISYZPsDvEBydzTTq7UkgMCeUxanb9VQxBaU6y57N
8/V6s+nmEOxPyXtBh4XfDKsQd/DtwR55+GYYrPYXfZ7IgsfcHqvQkMU9eOF6WP4i03zXQzJgz7Fl
G5NZOzB+MCFLoUHjP92DG3cTXBnOLP0yukx5jVtB9IiitV/kG6F45tcngClz9ablZI/OEudJ68MP
Y48vQs5oYFZRSmh6NKmFqrOrhW3U4qZvXt06/aXtj9zdESBAAnbL7kxigxyiPsqGV1zbmTPj4mf6
ij9QBKz/IZ0YV2LIqYcnPlsniqPK8iqP9MLPoOOT1kLkqtHdEDbCp5atvnMPKb9FtqKPNY8bWf4I
0qoOX698sOrGSizB/ZvEgrP/qzmeGf3oBWX8mNlv+832/310Z9oWIobLbSjtHu9//ox5A2lQs7DX
4WxY2CXP0WRx5X9wf2oggjuJTUBE2T+WgfMvOTBey0E5KGXTTqWnzi/wpKpNFReUq3o3/ldGav1j
qWJ1ygo5IxNV39H8kx4NKm2Tszmr13sgxU8tZ+IukP9Wp+Z9UrrZ2JhTMST7eQGrthnZdJquXUV0
z6V9JePpd17h0Is1TT+m9y1zkft4Fo0yPGM6F7kgEVcjd7jcFyhmKbBzLhDdp/a1jxNdSvosYq0K
5bkP3li2OC9M+KcZ+0JkiZZojKdZb0Hr6e6Ihe3s68ihgmyk3fZ39KUAY12bCzNsGCpcuqompBrg
KP3QnFd4wpQakjj0RRwnRorD3e6xRSiUiNyL/bkq4hmHwX+a7aOh5fNsdpY/KyLbCBPm9tozIySl
kynyJxgGao7hVtOShYOneR01SXZQXbizVW/cAkBTixjKUBxjuYWVGa2cP/9rQdfvD7Eyn/+dOoqe
SDxJmst1bv9ncuoXP44zxr7cvEqBfgbvD4eGTAbBAbfKnGVPAs8Nw3yt8ia9u1qo4eh4pLx/N3VP
AkY8Dp/3W+NEKkQi9tZv3mWekVJMG5zgZdh9Gd7mjYoiwbg0WHJgC3SlfvpK5BlajGHoCtR5Z8sC
Zo0zqBPElnwn4fhqHq5Fb7qAnQwvcnvUkbKxwbfOT0DslG69CUPiGTb5u9ro9fx78bcor2nm51RQ
bw7yvM0kPPDxaRCOaITYIsGkdgINb0JiZaAlo6ZS39Pm3TslCttKrI8/5Fw8vXZDtflq5XGSaNxu
xPFAocKqMkD7BOVBQDouGDOzYnv8S7LbmvLrmXQ38E0ElaP145xmg6Brjq4ctLOaGEyH5S3P9yyo
FatFhGa+onXtY1/5/J+KuYDXclsOB8rQLVQtqveFQLfNQhUsYIL6NPyBMA4tEAv+Fj7/UUWecsLH
zMy4E6PfL19GUBn6utRzHAGOHyijJDyV33bkSDYtzagyF03I0qlkDeAsO0AiG3w+YYANAHJpUeU+
1ovHVSSwE/vS7rUJG5LUeLflKE8XWzOIWDlysjyWATguoHrKEA6+5e4xDoLRKG15LO6+5tmAWPuT
Ui/8677tfEA7PqnVCIbLd0lnwXr1mxGgZoOIrMbAoxo05uuu/fd107BUZJHGcWtyYjRZjhcPS/S2
r0La9vkQsRq15sWXA7pbm/9sWQiNKg2FVHBt4NgY+U78fch7L/hz6qp6gGOtz1ktlCwm9Umnjp/H
TaEFKNE0weYh6prdbh02FPEl0julDFuNiJYY4MqAD2yfewxqvvIT36JcH032FmyWr2mzoVBSTjOi
BwjWIIagm6l0/QxxJdiL0CvL1MJO0MYK8jXOH2R3zkAZYqhITylHv5Ptnf8/flXGdJIoFJpDky3v
UwfOlS8A23CmbtP5S5EaJUX13okZlihMurYWRxSYH0H88H8Wkn3FA3EnTIPyI2BCMIP3iMCdZvOK
CPKHQ/TF1OzAkQUG7P2mA9q0rPl7+oSGsCMd8UQoKQ97QJ0/DBbrFwjgdm6Emrr5iHFkPdreYdQF
wsTqCkzuCfE6GTqDnDrwMOyGINVAQF7dW96CDGCQ9Bn+cb16sOMHSy53xUqe20ZFN/4EMI8PvZzl
sWuMjOiSwbpAWXfC4CVlGFn0tF78QMgz3Y/kfLOz+P/whwdYgyO86BefkI1PQs12acuJiNul5LcK
u//KWP66DGDWkn9bWt7ApW1QDyTuEMeBe6vpZGKo1IX1t/6I392LCSLZM2McJGGGLaPLo8258W/U
TvPFakQmb6mI2GHyEB7Eps0q2gNLyFmujOI59dqM7qxHT3gvIUr+pHJPtuK9ei4aB6BoV/3UfKAi
Ud8MciuiW3Qbc4/bdkBqOZgDl21w+mUA+i9jdD7bRRLSK0tlGkJy15cgowtZ7buQ0KsQnS5tgWeE
rGKKXcYNnaxAumZZb0bfReEHNJ67fUdqYwaosYHgCniRsrqD93f1IE0cWlW2OHlTu4zavkvxyWJQ
9zQAXVvtYgA//GK2POnext72KfiKRTHmJahYtyGT2BlgbZ6dKbbdlD20kx16ROnXPINd9rGwhOqV
V14MS3uFGd/XyU50gSoV7wBY8aLOXF1A8yiKXfuznxdf5EXXr7GHQT77E1TVFg5FSlYtQRODI0PS
muhEebahEPFR1XfPyOZ0o09N2XnhtMMd40OQcrQaDOlMypyjFWyj9Tgbd046n1irhT1tnlfLVSgU
pVLayiNIJHly1YOBtZ90KzplfdksmAbF2K/vRDvo1qapGA4V3tfNlumF9jaPwiOsfb/n9xYNZzQl
xSKx54+qEHA19ckDbV/VnfNNTglx/bMKzvlzAlAv4iS9x8ZpFgYWDJ5CSo+Wl3leAsjN6V2NY9L+
nWenDkInnUR9if0Q+GB0V8u0lMv7ntcqUrsVxS0tDQmX8I9w8/ihyZcj1hr7gs5/aRdyNGdwMpc2
E3G2n9FmzsO2lPrxpgfaL/2qL2eq4gVXrsENjkVaou1Y8eUS+v99PH9UrGhoCPALmLJyDZCUBOBj
TIM/emPhzD0Tx2i198BBuyOlPCV0gtxzKOokHkGXHKtfsMuiKykq+SZphwvGmksrnfjRxrZRMfp+
nEuJ8UveyZGQILu1fwJ/tbv7/i3/ejK8Qw0J4J3j3noKtnkX3KMRwSlfS6alCcsvmw50I9F2G6id
CGXFq96gDMMUWZNrEC40x5pjkcjClUTF5JFuW+I6WF57+w006fsE19z7zKILT2ra+HMPbqP8N9bH
O6Ow2ezxwCvIC5jxPD086NGa84w6GQcv36VOg/2QBnncI/X55l4KiPezNPwkShAbsr94vwKhxJxg
kcBhtdYmUzuO3UrVKz7n27VERT2Mv7BSTYwSyB+NoOYwuakgGQsCQC+BWcCVwDP0FXA0lBV0yqNM
3ZdNl1uskyH2I+GxfCz6jADQiN82VgIj2DMJfQbvU3KwIQ56GLYY7UIdY2Bjdbx27Gu4GVIXSPyo
Ndo5BwiceiQ81k6M+t4KKoSoPCJ48lDQ1gkPCa2Ec0c+veALMLnoAlm8+XwOVmbaZypDYNUy7Esj
FJAdXxc7vz/UH1FHrypVtheqykfSVEPHpDLfmEAnxiEQ2/vopi8ge5xpzzV9yeAEqI9+Jyba1Uuw
bf1XfTvi/8NXhccs0XPdbSoal3OzAL4IDnW0dO5j82Mq8Uv/TfwtKJXXdWoGttJ8ReyH/y1bGDxM
nWAyZswS8KHehDWLZXwDYSJFT/3oNHHpaPz5/HKDqFp11oFuyKDveS2GcMsk/YQ1RkbiyozLbvIG
UNafxe7FUE+N/3XMcZpc0LQE7QsL9SspTCSO2sGYK560l+TiuWRGTGJNel14PRWl2Xzkd78FWqYn
ckEjzWPbFyc7NMfBoQbFfrkZ3pU2XghV9iqJwI0TM2CSdaGoqrc48R+fUDrrPrhsXV9Jt2lRepXp
j0BMaIts0R4dWHmGMw3V3Ui+CRZ3B+xh1yXadLdU0rx0mRuwR2RIVf7cmPMvH9+2EoEJc2Ngy0qN
9AlCCCSsdxbrQ5vWU2zvgt7gbucgCKeI8imqzpHN7RuVhEY7btQHRung0p9nirEtv0TObH5pCx/K
v6CSu2D2fJyjfBTkHcB9zKZ5qhL7xqnI38R2ghEwu0vU+muT5fNpXw3eMOTnq1cSmGIK76F4OSvK
emk3/1piat7t0dqOQFy7bXe2RDHn3Pkz9G3FA1Eyei21k6IT42Ues5NhZ24PPtw+ih2wvrYRGwRT
GclavXIZOuM1leykkivKoDGNEYNaAfEEZFvehlYaogIB6bZ9YlDLNkDOtIXwtnsG0ncgYv07mytu
W+5PdoRaWS3S7WiCSGfpMFhc3tb46IDWBQk7FRby2BxfcroQh0JNvXKnMnus8qRqs7HV4uFfusGf
XQc2xBvGi7Vj6pT95gGd27OjrimbU/Ze/yUAPAm7DfjiQDpuI5lXAMoqyKRxdd8IV5XbtcExcSdG
ebCGFqXA/xtVhiXWW6RW8YB3Yv4v9M497ErLNdC6kMkHeTysukDH9xh3NT3H1JvreojnRStX1ySq
rxK51Yu6vdxg9mO/zxLY6m5Ml2ZAqYGHg8qtcB8UPzI385hUaNKKwRVhLQCTNxP0YN3sPsYF3fQF
0igreJAYW0lQP1VKr3g+h7ecef/9NmbxAi7h6gT+t1r0MThXNL8c4i6GcZa+mr8ThfM68mNizg+7
/hH5lWj3vsvMiT9NIsUvKUgwTtn7MwGroWD+r3wLMpXv5zZp94nTQvIEzvwSJt5wF8SwS1SAG29Q
OdRtvU0IOe9efRznIRjU6C5qHdarYPc13b4GgJ0r/qKWC+/4IYdtJJcLclG+jinUsC8SfNpOvXOs
RVukKiYwmnBV1XdENIL9BeDPmleyiLcsOgCHyUtbU/qK7SdykDDXjmbdBAfWaw2pDNOkOdkjV1Jt
2S0t/YLYYvLUGWl4fIomqNxtj7O1qMZNoRTo0oEQ96IE61zoDvcvMtAelQMFNCcfVKhpU4mdjMpE
RKfysAyiPoAHTtzbsns+2SdFZ1wK7pULiZIgMMAzCJ1inY2lsU0NZ2b/UBTFuKO5+6loX1eIuqWI
+yGCHummx2gefywgTt40g1NG7yexMMFVZEgALYROkM0KaIQtUDIg1OCTn6B7RQC8h5MP44PHQqL/
vNlYbSAU8l3XA4s/DAlwd4XF8LYTRWFpT9JO5dJExEzg/ltkiI4JgutAM3mZLq6CePsRwpo1tYVw
bDjXZ2CifEXlwh/rYxEe35OGD2I0145DOpY0fQWUopsUTjoOBfBywNEZv5shjRnZVFg6f27Y1+bk
NjNXRWQICGub95ADmwvDy0Jl59dkHIexqZIMt0COK5k506MULHNy0LXDy9B/eCcD8eItWGkgG8hT
3KAtP8m4WPqyNcd1/CX3gKGrRw4xwTH/SH5IC5T8VYRbonBD7ClXhlrCd6It2X3GMOJqA5NIovcW
NL/oMIWMRzM2lL5KHX1fNd+A/Ncvm9mPbtJVXI/ujf5d7EF65+NZfjvqf4h5qZTkNWXkE/6WPNg/
LU9sgbv76B6BHyh0rTMozbxSdoymX0Nkkem2nJA/RpBj1G17+G5lPp5x0lvZ0og1/ZoN+CD8Oe/u
bCaXDPEV7mm+0pUmSrnMel2B1fCCqQ6GmycEfjRUiRHJdDJu04tYQjsS8mV09ZEG1RBnW0SbWwDI
UiMoMIrkyMNrlmu9tVfo/ZHWphXdPtSksRzVo3OpvQSjPA5jptYC6RAgTXRoETBW+g01GK5e4hzh
fEg+AMkAyE/vry85puv6ru1MD2JytdtsbF0B3pHo07mOVJmOPsZQ/dcQPcO1biNs3BpI8qhkkyDZ
4dHPDq4EH9r3SCdJRfodCwXH2zsJH8Go7KlpOl3XucEYlsIKd55i4Zt0eRzXnwacXdB63Y1ZwFxt
tVzLdXz4dTCewrzZ5SsDyzQAFwh2fZ3QQKK4a+m5Tl4qfEuizbyXTthwKs/JVClKIsi1DvbvCtUu
f646t6DEfXZsTNSSujeFvEQ9qq5t3boGf1am99lU++703v/079/5gzCWAE2/aX4tV39On9nFxPom
6MMRq1Aak5TWjfdg7xO6BhyB3Kfds49nw6y8TZcAW19Y+sQLgVcp5aaXZLybXDS0ynK4wGgLFJq/
3E0xz3f+nIwP3iaTLylqpal0SP05mC9R62EfYxUNXfc3hEkZ4x7xA6ume2HUvp86BxPTOwFNVnxp
OlhyIl4Gs4OllleRRih36HwCnyOoAFbjYKRngsZE2PGqVojWVgEOc530RMT1Du2HjT/T3AZkZMdZ
ysyUPn7GFxvMrSziE1fnE3g60BvavMrfTApW2hIWr6c5DE4OwAo+jmmy6Kr4YPVbnMdWZ8v9fgTa
vkUrVrgdjokTVTWDZgtSCgbixfATmlOPxUbK9n9KGps6doIWnwU/lsJSNH7z8o6Gk+oXMrDRQXzO
5zYfzYjYWXf/Be6WlYNg077bpwjN499D2lqqZW9i6Sn9jpuZKvZ60vGhegO1lHDpJnLs7O9QGq4G
PBHRBEcb2LnICBLpSYZOdGWRKCfOU6myACT1vq9SBYvUrRFLyI3QSoN+7CCXl1MknXYPWrXq2Ili
2jr51BcJitV2nHSQtBN6hQc+iJXBId1sO+Cs9IDQXabcFpBWJIcx7S79tUQvkdOwWCwVj/qYcP5A
aTFPEmAfzvzm4KSIKk4g50PIUp1e2It+m6AUmn6ldKP1u68MQ3rbe91DkmDNH2CSOBs8cuFNQjKo
QtKajcPTnVOZl6biihMnDwKm+eq1htBIAOZznF+ZOToLOzLH0TJSkFKqX1JLG9Vh0RmuMqkIE2qE
OWkO9f9CbA2YHlx9xstTQJ3hB5IIF3HWkSZfTFmcgWj52KlULS8pJkh2Qm3zOvQ8Pza8kT++R3TO
mbO5JNGkdTqtQBJmKl7hxBMdiDRBtUiPFerqHgQG2Z46tbPy8X6f7GPB03Eo4dytgLyeYCl77h8R
dbFkBpeXi2+V4a+roAaz8n/hyEOBoMYf1IIyAK6JuUbJeAPiFaznVZjRtqvnXy+0fZIhiE2IdO1V
QaAbfOfSya0hXc2CywBoB3BjSyTiMvK/qpz2CUZeb18u4rWlaE46qkdTNqjynSYaCM5KQfCLmTRj
+f/BetBmPsJ9VQV48SW5+NzeVc/GEuT5YWly7FQRpvW9yMZN1U+7mjCwPrflQEcybp9sv8TmE39g
fdn4iMnIM8M2iaH/KkQVaZ3FeBJjptLC56xxfhrMK7gceT4HHuZSHqbU1vdpSHNMZp4opgptVMHI
JTpp9QLO2GfEeBisecl/TjloyKFtWOJG5RgZICP1JtBn3/my3/WjWTKehJYt3u6BiB0IhUsh1GDT
hfVeJmUdNrb6KXRMOJIdLAQKPVR8oyqbaVKZoo1eJY7Cwfi8PX3NuIUtMLL9K2+DW9+gYIuNFDrY
4t7i6CWe/Ofdt2hexm/dQnN/wGiFLRKTVT3tubrBYAY4+yo9gHMO/h2OaFiFigHyO4KVeurB3+Wy
hwZZ822AQb/CpaKEL4He+dpH1Vu9R5mZ3wLFYaVbRsYwD1oYlmTP5Sl1ovD67SrOtuHfFNvOy83b
TkyIZ6fNsJmjEqvppwen28ljsm1j5KgkUJQ8l9NlgklSqmM3vt/2yuXWmOCIJ3HCu3wz3JS0N1Nb
FADVjtCYuw7p1A6XNM7efXxLcIZgAiGu4AXf6uWkFgRQdf8kvhmR4G0yrfbD1hJd3pl7jeq8cCvW
TDofwWArq9eQCfMbxd96eAnjQQajlfafZSIjOd0K0UEB57rZjKi7e9r70geplapBGS6nCE6tyGBd
FBYFMp+pn0QYoVwTMKK4zCmO5SxhO4OAxYYQV4KlgP97oFvcPGiRPVdxU0pu+bo07ltm/xUkbdhP
MxPEbYN7OlQnRF4LqryVt/a5HPS+cy1PWO+qSM3+JBonHHBXtBZZawztBeLrrVd7ns2dEihR3RBR
CjLRRbJ+m3WW3FjoDC5S/7XzYYrX7+sQENd3zYfpxvJU9stZ6r+y1m6/KDmXOWG537INUOeah6Kr
mjF443MGOpL8D3qPE1s0n0SSC8ievrlmE7wWWIRQZX/+TKaCyp7Xl/3FLEVFAQgRh3zqYRNinJqb
JHliYMhGUfAPKk756e5YXcszYTG8nfndUC6J1ggvquFsZ5r3zwxW9Uis0hUVOhyH/MtxrpNcX02Q
koa4IcfXtoFdp6alcPIKklXqA9jVFzddHaG5Lgrg3t3QzOEl9mu7Ey5CX4NUQaLLln95yYZ4udFx
DMyvQ3djNew85MuxEyp8eTtbhfRokcQzhwNK8AmnWA9PbILt8rBnqw2c2RnoZKrG+czV3aAOCsgC
iuo0KN1LBqLWOhTNwFj7CVSv8twPHWmfX2QE17lek5ITvaN1+ddv3elmr9YzQ01crRLUA7nXkMWy
RE2rRVhVsfYovgYuXgaywUQKEezkOXMCxZJCAnl+RZI4cQ8AY1mLeHjrQs1mik6C8CdN0RlJp5sX
dbgOOIUk+xKGDjPXMGp80Xjac1D26478RQosQk34eVSbyIR4UfuLXRZeqsXadQpW6qBwknBrQ850
JjjCh4YevtwlXK7xGBfQ73pUkAWa4ktrPx4G7C3jLOTpo94lUjVsYXPd6iOv0PzZMg8lb1dCcFF1
DEY4hzmnL6EjNd/q0tJwCI/zTmYhZRNvxotv937nW8nQuJfVG2ZyZCWxaF13ygGX84taZo0sLzIU
gj0/o+VOwIe4gV2qBuN7LUzwEwcqrIVRFkH3OYg7QYioOiMONu1/Z5fgj4yosn8CSZRtw5+/GBay
muvAIXhNGl46z70thhzbwBEgpNQ3PEaoajCFBjIxAC3ah8bzTXq4uVyFiovSM1yBx5fs00Xw+nlE
ViYwEWYzS4CK6hFnyvGeto6k6c9HDpnhi73k7K7fO8iDxcoXUPTtlzA2r7JQbc5RbUCp5LnC0g2t
nA96aAIz1+1hoRoM5R4H/hEt1taZN/rrGAevZgHuOzd1SqqIFXQatIrTfjW5uCZYbEpoIuZYkPNJ
7Q5F29bIxZaD90CZZFQhG93+WAEZtsHoXMYK+InDI/fkwseZ1SXBdTVkI7BVKqxZGo960tFITnR5
IEYJbD4qkd0MUO9WNreqQE7WU7SKvhIIPif0vJYUVyVX6DxmfZKTKOEEh6BlQwPNxdylt6IMeUJA
D0J0O9BhooeghHzlsAIqLbkJKGXIWOWAT03PFMq1RoniuDM5Z23bRn711Ksnmwyk/kup9XfuMXn9
nVxMCk5OCgzOC+ao320imzQ7JNF21I6vRi9TCFYgmonBVk07qDzO8rn4SfzItvVMgzxEQX55GskZ
1LQBrtz9cVkcjQVdqGosq+f0gftbnNkjRFkfHEXcDCbCC6k+9uqxDXlkiLvRN8QbR011Zx3qWvCB
ryJHZ/unC/EuyX7sdE2UrZRPJVEQ1KdouN3GZW0jJsctcmjyae4hk5KaXCYMvT9+wQtny6/HWIWq
Xma/GO+QZwp95aZITSUNFUlozHKmSjC/ntsgei3WWuhsboC7xZX5f/kOoG7/8osrNLZeweixzD2C
0QDV6VlfXevQ+x5m32hUn8hIpCN+z1fk71qaytV82oC2ev7HZyVb5fS9TzegY8kFcSEuVHsKoA9q
GwJqSLIZjZiO/Hg8mYJ4+Vy65VufSB8ftET1bGlYpe7DWiDiACrRed+H0XjtQ5b1FhBRwIRj3+6K
JeZjB61ubXDP797i5r8W03NFdB8KDJE7/RLtNWSlJ4zYUVS2V8gSYEFXn4fWfzR93ZK6CxVJ4MLn
8vqaOe5z1K+g2pQqTAEXvi7akxEw07Kri9OPc7vaGQbx02glOega3C0OeXn+6yQnakMC2E3Sn4Y0
kd8aFdqmuCzJdK35xakUK6V/SpyXvtAD11bMz3z4rxbxS3XkYCN8l+7tLaSF2Y0uq5jaYeXrdJpT
hvRqTxMSevJb8aBBq81je3lcbB1zqhmCMb4wSuls6w2RcFRltBZP7pkKOm/pIQuupP8zZgQ/WQVe
HiDKpm8fSSFJahsXCKXzKMkAEcWWfhFrAXs6Kubp9SDezil+ESMQHtbSiiH6UAu8TCJE5lrTumnu
kyeWX3XyYFRMUvVm/MNBlSBeJnr8l9k5caQOr72yYpAOoOPs6LsQslPPnAmmkPgfWnWzO5nJ+s2I
FDireDxpR/5Xi1jLaSJy0ZerBL4EqCHP6lS4K80RV7CJNGtY4cG1fQXNQHYBBBRYLBC/dbVogU9I
Ugt4tqaeddXxgE6AleCajLc8hcx7Kum3hXvbcNRgEbv2sgqkmAWIRKVMx+QwGgimMjt/0Npom62t
bmBpu6gZhsEjiLtcnLQmjE9MiEozFP2tIq7q/C5SxzP88/9tXF04lXeBNbY9CDD7mvYIn7hiFMna
15FdUhlDv35jq+bXI7mOECQdSsTAYJsBWifvV0R1sodd+VZvgiXSTrPFoKGq9rnh6wsnInuVBW2d
w3DMLPIXB1cNLeLAIY4yRgfyjxSDPZsQ94Jlx+U+5N0dd9mgiIbVv89C37gReITvM6ZQsYNteudJ
G+KyHZjW9hbSh0q3GXKfKIiyvvA3gbeUQ3esQaOI5MMHkQDK4x4QXsfCaaX/c02t1m7UpJbjR6zK
TFlO97hKgiDmhy8dmkC5mXO+xVyUKTGupfZQXIcxbrLaMJy1Ow7dOaBGqbg2VLJZyDFHBJvJTexK
PagTFLbnKL2PED7cPYdAaRck4v4rSfN6Dnya/ATU0vUhARf/CaC/LWTx9/mELBpLHSKjlmBw/idi
QJJsSuITUnoCOmLglQeAp8a93eTyDI+oSuLEjIC3m+SYJaZLUp04ihlAGrrdinbl6rUuab5WI/Fh
cWdrNbMSAJlqi1OuRIrEX0v6GmiMVDkf/A67I/JcuBySJ8G4iD79+c4Zq6V+GaLwNbSYfwLfeMau
2srz6+n5gOuDszFYlhor7vptDdBNQY7wdzucN1kCZ0cGPC9VO0vzEwUpa9yCBEWPCQLix7+G+Zxw
edkysVPr9UmKaC+0OJXi7gkztv5E5UPS8bZ/+WsMLmrItiNI4oceZtz6y+YjcZS/CUO+f34bCOsc
m8G627Dbmc4Z0rRy29LM9ijTMEQWRyX6jnuUzI+J0VAxpyGsAS4jzLa5u5KA3Uybt2Xw2NgcNOC3
AvKHfpbwOlh4BO450n6Gb5LYrnETD5LZKPmKM5qLUcfYHSJV7ew481sf0Te3OqPwyUr4+jtjLQt9
ACKWlN/bHoxs2PGk2n6OAycXpIdLPNmdcsIx2K72rormrngP2lSCuWnoEFOtiBCAJK9Irf8ghla2
Dz/bOE6vZGognlUB9QKw7hDALdNkXCmJJc3NxOUuY0MReoRZCuS2WzLXFHXDYcp2JcqODy1sRWyH
NUf7Ang9tfnyBXw4YgNLuMZ0Ka+duRhNsS37lOGANQHoO0vEy1G8XJLMpyHiAFVRcy2iLoWXoJ85
g9CE0gz1bvNVhEufHiSfu8zDKxnzX6hvKa/51Hb7+2ldHIgXeLp752k173rkQzdMNQo0OgPcPH7A
W4YuOvtDUI87MutdF2+o1wjBBhgPA71VTVx5P0HS7nucEvpQ8YaZQatlGFfKcawgfLpGjfO9+R5s
nZMFguPsSlPgS+fgrFTkNUZXPqZIndA99sfyHmyE7jrqNhxa5i6Q1wAraRTWBI2Ao+AwVuPRXhqA
vS/4MFEQrpXTdOYTgdQm63NnVxtpaBMgReoW+zejGJypt4grMPxD4Lp0ekUEKHrUZiRDvC6+u2vR
RUdmG+SXwayN9MjouDxVAo35VC9As61ncrb7uoyRBPqtUgst66wkJLk+F/jHpG/wsh6k02hIJE9H
hdmHcgAZw3p+nLSsQckjXVy2IMJ70/Av5M2imieg4kk6yBJWTNP5f+3G0jVqy31iNnqljvgJDSkt
XdeHop2YabvIHvsw0vXdnrv77mCOkl+0Gm/tUFf6jJwS4M6Expd1hmkLUF43oKlLA2nnMkIuJ1Az
9PhP1HPBgrpAY1+t542iVv2r1NzLklye7arxkM1IgT08Lb+QMLd2+UdJUP7Mh1mQuHeGeYWfiXc4
SBu2q7/wKRE5AEsfnnGbMqV+I7gCxbzmLS7GSUhFUae07XwoFFXcbTHgWGdrAT1fDPnneuS1ooqM
9KCo6rZWFcECz4OT9oeWv0IoLQXCvcTNGzmFqYmZNNFmfVt6kdQJ5Jp8WxWizZvi+UqeBsVz1x29
2FVNSegcEL6qkX7kGWAFapvLlMKuvUc8dIXE/rJWQ+zjv157hVL6LUQQPe1Cbo9ZUeS/Va3JzGlD
tMkB9YgOLeBEBeXESr9zF5gnqB7O8KKmAUoWpg/xlGHH6kw5gkkS8Vn8IItbVHzWPC9nfHrfKo/C
fHlCba/5YFK6KUK/om7pBxjLth5NWIA06wVN96aoLZa+91Id3YPZp++DzJEL+c3qnNmwIn31sSuN
LuuYfnUSKsk11CEQ/6aGWMP6bX+ziv6NgC1/UnkttErqlZu79Amf5GU1Yd2bw5V6U93mTqYSzMW4
FmtVu8W8MkOjAG0Bsol6cZtFzkaA4imP7Yf54y53kgzCYciwTKwDDT1keuW1jt9b3p7T2mvAxD+4
ZLEIbu+gFesMAweHls7ivmWNE1GUWAP62SzEzjG+s2SWUnkhTHv+DXq1RiIuUOhcYaFnkFK7QE2i
ujZBKdho4SnCIlkj6Y38oZTqq3mvI6jFpE2q3bzQgI0kYvySkWVqovNqiCZRoA4RZbdP7TNLwgur
NOj+PEEvr/6MyIDBibsB3Lwkjk+pSxWJTOKQgiTTDnS2diEKtdg1uMboDuUnKc51/++6yKEt2k5P
JT2sKdBWjmjT5DC1+j4+2CvnD6IASaDQ8e58CALcg5nJI01G+E91Yml3w8zzkDvFb2Ka+15+pE9u
mB/xnFMD10sSdufkM/sZGX92UnT/xTmqlsXFPeQEwYvgT29Rz80oRsbV6UrepZOwM76JJQtF5n6R
MOTVDLZEHDETK11OQUd2J96CYPnf9BOrCo7cY+flKo12h3qSETCwb9s05iIQMsr8SVPTK6R/Ieqr
yJlwIKL6w0J8OTXTV13SCsW21Jc4mouEB2xTvvo69F09g17wJqmlD1zbVF0NlrhXda86v76KE3RS
CYpcmXwf6YKk/IqlSRX5hDgm+scqjXTEpeFyJcgy3JFqjessL+cwcDf9Eua4LU3/h1ywWewJkCeI
aYnzCsxrlgJCaW0aQ2t8GA0XKc39d2/Mx5LzND6frg/RHKH1Jz0T3gKOVJJnwRx0NykZKO981vtu
dUyHA+F5DCcAtYz5549mugs44U3BehZgjb8jyzcPpWA7o+CNYLNTJrIq5VRFKYnvvMdzGUEX+l+6
pyQeZ4yAu3z5bHKL0HOBKmPTwhqv5jQ/saIPhgQSFaW3RhKm3G9JrB3IDNHKdVBdajkXXRTsgL4E
347beeAFBqYcbL2wfothlgDvfDBjjq6wEQww/locUNbAlbxeQkp6bLmr/WxuflY5Jk72JzBvQtp+
VyT5RVLvwo5Ujb67dWh4lGXv5QrZ/7HB9G6Po7H5abAyYewkPTg/BapwcIr8j1deSFvl1ybOCu/T
v72TbE129FG1uYhyyHz4rDQIgSk7qJK0CoVCe9/HAtNcCPEQiLlGoxo06rTZ5VxfYYyBgebREwTp
I6f9Of+M+dqo5dQrmdZBs0QJncaLtgLXDfJC1+LDe11PJi1gM8mX8NBi0jgRhYViBs1xaGkaa1T9
tfZvaEjrwg9Vp0E1I4CiPBWS14UmKrrVcGkJ/L5E9Perwjyr9MUJlzvR0pJLJEU2OlZe9enmLI0s
AAuPE88RcZlEGsNgw+Gvqf8EMg9QCxyGxi9ZDrqhIC6pk3FnIXnnBY7TAQvNRmZAdQO+r3tj7Fl+
SOvRyzFGP2dx8S9IPHaenWRA3laoGVNpxZO6Clnw8IrxkFvzGh0T3JRmezeD7HV9JMCS7Y1NBqHQ
nWYQM88NN6Anyu/9zB4lb2wIYy++js6OqEHco2ywhK7m4US7zD2JhMAWmVpvsV1tzLwuo3dBlhAE
QKeoPBfCxm1Z4lG/Bji2dPMsgKnaaxO/Y0v9i7RS5W9kG8b6RelCC4YIgJyVU0pA2IptPWRBhuPS
P5T2lyOCmVaWOQ5qeu2M0QjTvRehfh7veEatVK1x7E2IiU3Zt8X/hMsbxWAEDJR/eJ0RjVd9ZIQe
sR76Vr56ed8R9AwqKRy3avGHlP6/GJ7UtYbcgfEyqBb8xlHGymwcezHUoqmoq8N59LQMYFMDiyuh
T8NOzat+PB0umiMkpW6IUtjWowLY8i1b9BMssqStrSJKuZaHWP3NtoLuzcnrZK7LcSy4e7N4jg0Z
IklUd5/S4KMvqmry+8XDNSl+OV0NGOIR1OcAAfsfz7UjSBMv+cIZpavp1JIb4dqBoTpz3b4MSSxS
8yR7zirlVUE7/L4fCQMYzErILfp7OIyzqXEyN0fDFtFf4/5VaUBcKRbVzhHNLPUXv9Fu8dYnAK6w
2BLFii1EIZBH9c5utmP6ivQc/BNzlg58QkdPkvj0h+EsX9iOeLP6RBOwyEkSBtpWEiKxd8tXoh4Q
KQSaHBx8YkGM7BMOja+1NFZQhfrJHhTg16U4w+0WwbR77umMtct4y27716rQjOZYZ0pDYWs6O492
gPJaspjtpJkMnsHb0ynysJMyHqSAFuLk014eXc2p9IZ++2ByG7oafImyZRZ5yECXYQ1doEdnnFdv
iaz5x973UGMtXlH6sTd31SpudTapZL/tV8Ai2GhtqBNYCLiYKk3mWNoHYM8qawgePXql2FyGavsn
hzfDD+zXIHtNNcnlH4s8w10PvPSEHJp9PygOghPzgZpyR9P0vkpXdff9lkAcyTeE7xjrNRxCwPNK
nl7kFKJtOKrQcOaMmqqosWXCVtyAmdbZP1eu04+L7wB+XqEcVBQWNq4Vi5LDlHCxiFvNotiAaH47
6x/8VP35g8lod0n66eF2ZO9D0ec2Iaq59qtuDF2IkwEHQLPzs8T4JJUx3oaZe5fnshiBgDENEkza
cGrrb2M357VeY8D/wcftenCsLl4w9AyzmLrJ7iqfU9a+kl5oWTNg98VOMNmXOUWLwm6yND3ZmgUc
KkA/JVJWoUJJhS2AlczLaCodKKPZZ+bb7kZpCrE0pjys5CKJyxyAqUpux4fez/dyOXVMPDuIEEtI
6D1wA5L7PVNZPkP2E8DkNxPdPWPKOHFKxb7PV/l8OBRmd6fHoxo7qk3GX3qC/XDo0oT7uROzeMV3
DuZ0ZzkAG6oxtMjN0B23+dW+84jJTwMNMR4YZT4XyGN/wloVLSDK379VEtvgRUhC1tTGGe31qNJm
tJHA7HaYVc4x8uOF4b1JZTgv5NU+uQD22TUwIbwdNXvVKIWlPxbV2kBa64wDecT5d6hw8QFUiIZY
onIuoOPWh/M7Wn0Tl1uShQGsgZwlyuqA8X3Lt5xXZilfF6xLp5atTs0e0pPb19/+k2hY851zFl+8
qcVncazlm3nFBFfJRuEn77sJIhaLO3fhswwO1MeFiBCOrJu4kR9GcuXtjyoyPMXSF1n65kcVtMS6
rMZgEdKIlv8aZizQJUehfhhxFvu9AJaEvXG6T3Snbu3YzUMDnV1BKVNFJ2ovjVZmrRn7F4cJqQ8M
QS+rcRsGV6d4VB7rl70oWeivcSqbrKej/NEUxcuI7HD6E2WxmicBpuZYVtb3z49pwxLwTQdPQBNz
4VF0M5yoh9nI1tR3jolnyHyxDWCycMimmnj4tjLyljYfJVARb7qgGpdb9n1IMjdCa4+nHC2jBV9N
znh+BACORQ8+uxdGBiXx46peEfKqzVJAf08QVKIrIT7BF/sk3q7bHTZn6Hs7gXgdvbfe6oNRItgh
sQ/oRBkfLnrKRbpkNKwA9gKcHQIjBglPSIwseONj3KTNrl9q5U5Zb9rY9rXNKI/hALfFybzdR4Rd
aeOuC8rOrlzqCuLnNwJRX0ojKkC6B3F7Bs2IasRh1r+tTfKWWrdpF3UPbGz6tqmLts+bkqkSNOga
yR3Kw9JcjSi/ILaVSY1as5YO3avzDxioimWq1YRK6eXs9Hi5ZpSWYrB+jf0s6lo+r6GjXy6+o2B5
YpPtf8G5+3sO9+LqD6pCTiAFP9eMsNnxOqu/vQn84XrJAIz+xYs1x+5hwR8TJMza2iTg+iMA/apj
rrYDHxNLTj8GJdMwHBBtqbDuUV4aehIBFBQ6p+bUvEqJkpfFxzRHvMiZfE0pZ/nIyA83Jiy/OSLx
si6EmOJGOJ+gP/mu+ZZziLHRoqVA5Id6ibBtV6mVHNpgMai6qRdJEk05GvXQl3ZofDd3IpZ6Qqwn
3SZ4EkSzgzSHBk1EfSLFLdzk0tXyGwk19TEjjaISq2rKxcllD+dtrklyWdQSo9AZ+bJf8lRVhjGu
eh6z3eKR+/YCwYK7bfWZOP4z2HLOfvTjD7G97DDrUswvjgbQRJJJrH1XLUhxaH50bVdTY3p76uQc
UDaKK+w7d8RSio09LTECyYAAFl2oSVQYgjuSzKOs579ltGjlCVdYY/aa51jCqdag5LYbodEBzI75
Mnofoppeyl5s9bis8iPfdIx1iOtzeLl5HDtCGM9MVJXQmHdG4KDkhF5SwIr+37a3EQ6zRdpKB16f
FbUMEYNwY266MVUQJgc4kgbuF1Ae02yztFAUjpCaxRXKZcYmtqAsX9cnMigA2BsPyGX5nB7WlCbC
Y6mf4VFyOBTmX5AygAKmpk39ToZ4Nl34FET/b+TmH3YD6F59kmbfRRKJ8R7XGWhfB2HR0Ps5doWW
q1MBHKrg/1Ev3mesZoHWmgaDIth1Egpvvnq8ZBYhW558F65pmiaJKUN9vVEhwJqhElT6IFAsPfaB
vlOcgFVzmIVe6oF9pJvCREk7W5LiZdM8eeKblz4jsk1f6DIqJq5iBxEs0MLYAqWPLtZVCWj9nTyz
dj/U2WU1kaeTCB81LJRToypjLWKN63fUbKI18V2ZRbZkuy2aRnJFOMhIFAutIGStVF7GlQVVAdaC
iVCS83uKJxk52w4DZFIQK16ywOViEzGgSBHVUzqlOKLxGcq60I4ClWHAMsl9bfyaGDpMeiaVQ4AQ
vOI01C5uobnwiOU3G4imI86Ql//6Y2fPH8wgcbd6MzJagFNUG394jNVDaaR3sVvzquYuOsTnfS5T
xRnoEg85HxuCHp/oRBgjxSOP58Hp3S5rF8LbVMXDCPInt2wmt9U7rKfV6hOfl7j08rkFk9FeYOVZ
5bZkxxKmWijaYKw8uSDU+q5OpSCugTjKSoZj/1G1sNakV8JaiEmubYTkyBpuHeu5DIOCbVaaaIB2
McHmScUsZbEdSTCaivZExxpI7po9NcEMX2j6FXq/hlC/a440GR3MAQIqRzKo6Cy7vh6Zva+Uf2Yv
lLw9LwT5YvzGbvdUqJaHeJnH/95doDkxXWM6qByXNG/jaHIQWbBSmMjT7A6qKsg1qvp9zBfxjyOg
oWQXFcEnR7ITx5cTB0IKtdtGOchD+2aMBcU3QbEj2x0LdAc9oIhQSSkh8CozBteNNBlzXYJn9kAt
u8ro9W6V/LcdW4Iu5tP9UQ6a8LXqHTxVeP2p9ABnkyGYu+sgQ/4CNdSijRJccL+3NlyAr239tXZK
db/yfxOCE6sG4G/rKO3CN+81L2UHzJJP5A2Ka5FH3rCP5yV6Vzq5BqLi4fGmFwbQlyNNc4lY1AFH
6um5lnRfAo0c2Cii58w6oc0uhk4FMTrAhShvnnn8WOpe6QUzJWPQGrCNNV8in1mvxlkpRTjyCX3t
ROk50BLIphwxygsVA4Ct5JQ3LoLbpa+oCHWH4NbRzXD8u6p9fHzxjfzVMRDfLoMNz/lwB8XfOgKT
/QLwEwW01sCQO4fjD+OzhDbRIih+dHdl1wppQntZylJO/H5kvk6m4NppTTOMBTNiVGqeVvVC892E
tPgE4/wJI0GqpkyBtenYcbTRiev3ZWxAv+yDoXZV4WX+qt2Q92H8Z7TYg8hZO0U7yw0gqNVEibmg
GZ9ALEQ/+6qDvwVsCZ24WjX0kdMYNHMKN8NY1WirMo5a3hOAPEP9gdsb+mk63sVn5t2mCXu9Dx6I
Zip0lnYOe1Nksmmu+a0Qy007JH9mCIgvUa+dXWbjAGFxDEOsK6YosVPohFcihi+HH0j3ok1VRIdf
hixIRSGIBokTNA5MLjjHNY+DAcidveLcG5zGKBsttP7iYIJeWXm8GCi0d/aacZU0CeSnzaL6RJ3Z
/D7x0hxgXmp1jo1QMZiR3VFoGMoRCLpXEiK3681VgY3kA/z4tu09ag+qEkh7ZOSb0bNE74H0ZwIv
HziiYF83jfQUtk29x/okbscpNd5TDby/0OCbQDfLA3wABA08OwEmN8oo1TVj3lek8lpuYy0c+6UX
L/RwV8/FT5kQE0ajqjBqpR7wEEyiUk1mU1wznkS/wKfoAWEWPlxuMZ9DTci6pzHi1ouyYDAPdCvR
kdVshp1vQiU5Js8I8gaiK5eLLn7kN94HG8gCfoSE9jQqEbKbF+y/6VXZ3IsDMqjf88PIU4AYkwrX
/jWwvrqUXYWcjr7K0Y6XdRd1XX9ao+9et87ORH4n4ULwB3YjTFOZF2X9o8fYTnzeVfPN2Z/Piu0L
ftghAWn8MPZmn/Szyb845VMxhQpnIhDemJWHc40UW/6T3e0MiZyv7OK3yRDu107O5VjTqI44fnKt
R6C2SmWXzhdKDSAgEJsGeI67NUoAoPCRyOrozdhwWsddCXHvaUbaGkOfYlQ+taFr/2tdwfSpeRDx
FqHuCUjyg366+hEW8Ws6qBlXggI/Hl/KmBQBU7Ny+MzK6nV6VPbNgP6NFkZX4fC48trtYZ9mQiSl
iZCVTJ4xPUwx8bmYFtHh6UZfXHCtKG/gxvibVLKoIWPtqDK18JampZqQnNE3J6+zPYPuAHgx9qre
UnfQKqsfft5U1szkw9YOrkypBK4GRhUU2gAtZqFtkN5ZuAHI/FND9G0M6KWRspDyJUF09k2DhhNY
ZudF+8x7w3u4ql5cREb55ywr06cmu06ygFlf6JrHm3ZSYQHgKk9TEQ0URGghTATSvi1Zbhq72MiQ
dt6XaB6gUyJTqYGq7Xbk0T6nfof/U16X06cV+gSIxRkZsTMVZ/AutccfdCUZ4MRHLcS5doqv//9E
Hrnr8eJq8TtSTWj3Db8m1j478b9T/UqkbmE+eKB0yjixz08B1BTmV3eIHohXRHq8CtViS0O2ClTt
dpyB8HCjMIhIlbnfq0eys02M6v1UxU9TF5TJN6MwLR1eMJ9kbhkvI/7xXBrvaUT0fA9C6Aesxp+a
ENtpmtbQ4QrFVag9m4FdTnXmkzkW9+AJ8ojoXMPZajxFplLRgMaFSy8cIzpI1YwZcuxywJh2tFZA
yIxJQcQJHX6R8aFeCE7kcco9k88YzIRue/Pm3vOR3Uwe66BRMKvkis6cV+AZoDY6zoJePyKEK21i
T4cZiLPfSsBbMPZUN5EtD3qlZ4OoAZdh0xS58sb+PN5e8mpG61tpGECNm54jNpa4UjzwNnPRJMSB
k9hv/drpb2cpyJKPvtwTXUZOzJRYxjgCvE3H89Ett2/r
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
