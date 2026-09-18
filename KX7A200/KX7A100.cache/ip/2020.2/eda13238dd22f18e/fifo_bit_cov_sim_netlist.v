// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:34 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_bit_cov_sim_netlist.v
// Design      : fifo_bit_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_bit_cov,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [0:0]din;
  wire [0:0]dout;
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
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 65200)
`pragma protect data_block
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
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
