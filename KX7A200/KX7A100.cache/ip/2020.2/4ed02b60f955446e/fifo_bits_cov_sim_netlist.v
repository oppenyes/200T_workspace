// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 21 16:01:13 2025
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_bits_cov_sim_netlist.v
// Design      : fifo_bits_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
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
t9IRyxYRyhEk08Fipb++ocWK7INnuf5kZXyjzSCbP1Mwv6bB3uiWYcTgxSI4vPqhRH2PEZHl6BKa
YpZ0pSqQIANTsuSCaxqxuZyfKZF7s4NeMuHHWm6vUe0ECu2K2ZGVGIuEyu6CP4rTTOAe6/oACa3N
hhRLzBAZb92xNmIBzUmveKOqmptG9gOowb+jWBHjYwMFXkEsJcPHmrc0w7nUrG0xaAHwKeYSKzd8
fgBPYoTZvT6B3okH/zYhpXXgg0lVu57U2mCgicssZHUKRS0AO/Xnjg9s1rUh0aoa0VI2PJJtlfUq
7S7KKIe4n7o2/lYFTMQOiPBl5zoeJ7v07oW2uWNWJfV73+TVf8W1RZUbsV5wVvAmp5Q0d/a9H9nC
11XmxPeI8CVpVKi/rmAiW1BPK6sYm+PVEJyeQ/POPDy37DUWXCygUkWu+/fugBsXbIOCxA4MNIZY
aeyy26nqE+wGh/Qf2cDuHUrJL5JpbuVz/WhXTOyfe/Uaz+dzCgSdl7aYvGqpB+/hqSaLpUeld8pa
uQAEY0vr6og1Npy2dI4uulJj2g/cEUX/0Nt/Y+RL0SGhWHdMEMAawOuqES0KYkyhmoWlnZ21rLxV
ETVVgs6KncJSCQV4I5NF2uSNPwTkLUU775KBnTzf7tFkLKlyUVlutxDdPu8Sx3t8nmoxydN8yhMi
VD57+8XsyOkNbO2pNTv0moHqTe1a9Vk3vdbbrJAXayB56jvPGPcUG1L/KmpCBzgysizyplfcVeHb
KKZd8EZp6XlQKaY24Bi4uT/U008TtsGAza9ugq56LlQg/6Z5rP2UqYXxjFUeAdvamstdPvTJeJeT
f5IpMfW5/ExGIsLpKg1WoGNds0zd8VDlXMcXqOKZUQ+NZ4DKc57Zqhggw3cdjoL0oX0TrPCsHTF/
l8RojesuS7x7xgQ978N0fRGJA+Vc5JPtzPor1ExOBp/2V734WzAojYphXVTfFKXbUCPEHF7E22Sh
e+INYAGGI5sGJHDBGk5nVBnMkQQCUUb7QbYEgk2s79/6X5fKYSNHQlM0Bt29Iq0BamivO5rAoA4W
yvq90NX7oiAWTB3upYUw4hyLp+Of80ikf1jHO4cY74a5WtShgbZnXshVZLFQl3SrbFHzTiv2EqW9
wuEOuR/IjNBRUhQIFWnMFl1Pq2ThUd5sXKocL0Xn25ZAspH98ZSiLwmJbTRtkvGKDEB2MCvD8cED
kHaK1ztVkkhR+d4jCXoFaBDgZOYIqSKd9O8uDZt27s1eCV5sx9GkrvHA3gnkyYxkhFdNMIGk43pT
iuC8o8ddEXc0rsZVMnZLFZ1sewCaxJVjkyqKSjkuz1JEvHXYb8QyT6O1YS+SjI5LvdDJGYOZmtmh
A/6EMFEcjaXvbn2PMypwIi9qIt02yh1s3TaAowUX981sr6cYFfxbVdHY0ouXjYbj4oQA9agBo70J
SZhf4vjgmMRZ2iU1qcmAzKaP/76kZgKAEaoLbaUS73nGioykC2tl3RPlsFBOwHWmwIVDGcuRbTcL
IlEJ0Pu9tgcNcQlSXj7RkpOTayCkf/1bOzFUsbSGg4RqwiZT2Cvfgit8jJn62e+YwpRgT4bxSyiB
GJmWILLJxT82TPlZmjT57bS29XqZW0n9fI/B1uNM7wR8mdRoWrdzRsZj4FK7GBTBaMR/Wodl0vJR
OnxY7UrFSxxaEGm+01myHwhwpoXEciQE49RzPNls1mjbFC9bINzY6dpqp98XCrOsWuCksCXuq4gU
LLSDYR8niOY6pC3gKszwuM8mw+W45KFNA1d3goUOt7gg6jERZTcCcieT+n4n7x8IP/HfrCEmA9gU
X8V8MzfevCR2nkgKu/6Sn47dJB72S7hN424IQN1xPFaYXqfc0i8tksoMIg5jn7uzH4jVOk9knyl6
G+z5eDEuVJNbsSpFtpheQ/JGgsSavA5XVzfsynwXUQuExV8ZKR3NG8xWg/pf69wOfwEr3oYNnwr6
kDthVsNemUw04FbpiZcofN7uwD1xkPITptfxipu7fKiVB131MT+mHnW55kwWhmttyAxULmmNjQ1J
5jhfHSYUooEHY9Yp9NG22Zue2fyMqYYvSqscVBhl5PAipbtaFpZDm41gIfMuC0vK+Xu6uVZf9UT9
eEoKySpPwd20pLytO9zDcNCthmFm+DQgzIq25UaurQjWuNCDUfXH1NFWMf1+D76fbHWkRVqPvAF6
VXqCXW6NKM26/P8sVAFCpl3RrRmzrRXGs2i1P8lOr/5lpb/9ArE77wJAhUmUog2Uf4j5WsW0J5Zh
c+ma0jpxrDCl84AoCQWIG9q0Z7fN6tUirfmsPt7/hxf+fsOt8xYEBG9nVoklTm19JEL8VXUTlb+b
ogUhLWJVEtAqiTCU31az2H1De4uhOOyK+k7hTmI04sP9PI/60ufprO9RnkXe2lv/duP1z9J4r9T6
fEs0X+j4uZIlqE0cAZHdUXMIRf8ezar+blw35tKNtPFVgSBlkv0ATaMRGSRRlUCHNr1IxWZPtpIS
wEqqlGD/wjdkYSIATJYJ0+FW/Z0WlqY7YB3e3rpAFfPknM0LgcIqn4GONkDPXwgWgtI+FHMLYKdb
4MiplYAksI9gTi+EYZrCiXrhD88a9EMLl9arfhcyn5jqlMfWAVz4LlFMDLm+I+QZEbwZHTsoUWFg
AVf0qVbnfXoMzgUt6Q6diBTv7fB+bgB1Hx/23yE+MgAcMAmKbiK1SKehdEHs4JevY1yCNEsz6xAj
tJoTN74Pa5/D+6JUvqJwHksu2as0b2JVPxCRrURjZUizdcMJHkIaW4Q1KTMEj1WqMCcUT6a3TycU
LedCJ5BgjeDaPx3Rhni8NYcj+26YcUJK6sQOy2rKMWAcMtU4/KUu3y0bfKPxMX+tJTAIzLqqkuJW
p4/tGeKYQQTXUKtlINA34Oz/G5sqjhTlm9K1YM1JATc22Lp9rIakPvgPtFAvdiLuqrU5ly4GiwJ4
MpLpAaQ3dKZ+RxVoSnQVn4zBS9pIwIYS+s8Qza8vbdIVkRizn+h1wAbyh2HIPq23M4z6j404R4tH
QkMkMWRy/71rvAJw/4wDwPviC2/ahOTnDPINtMAUKsOb/1lXv4NnMonSieRj1Cj8ethwsX4+yU+j
Z72zlndUvUu8FpYrpzCognpAiEmnRckzSlzLZxG2C0xg+P3E3cIg/3YRj1rUoPbN0/DgcxCtt2lv
68qbuUCXbghv/S8Lv+BRJskTPvAxqG/9ABCC/uJxDUj8SaeVPE30WZT6LmfngXaDp49wJBLw3grT
6xwD5J/3L1lEVi8jTinhm4/cdR2KPMwz9sb9vvLhJVya6sSLy1a1UIloEUM5KOMNl0iYSBL7/8rQ
p6IuVW3QfEqDiyrK0RWXf8OixhZmfCFG2ElZ5qChU5ySIOARRCxtUyRiV8Ri98mcZLQX1NTPFRjN
VB/h0KWpsp839/cjKJoOoF2IrAKTyq23yEjg74EAkCBnkqp5AicgcmZYyqaJcvQq/kCcKlND95ib
I0+uAsiWM9OfXenwHO0VQx8IHaIOKIqs34mdwKry+S8CZ91tEu+v+473MGWseDoifuv3X9P1VBfW
qVXrFKP1LZZo6pUkxSwc9YNjHjpTKc1HsnPGGIs1pEayrAbsSFFl2NxYo1k+Z0VcNhe6pNOnuYV2
ycK9IzFNoWHhsAjo33a6Kwicp31sMEZvcsuL+NZVXGc5SaPd/sk4AS2V26SgQmdUA86fIZmSLEK8
fuOvJCGBZuSbBa5NindV//k4rmAHekq1bco6yO1SMgzI0qPJ7W5PI8o66GIZWpnOJLuOjxKBIfWr
PMDst4SsuaV5SvK1BfDAEYQVeqXMB+3cha39wQNktIAcbO0XEAejCAaSrSayxEMX9qHQzXTQP/br
lc4bLTRK8ni0H0Ly1bSbxaVsmNvtZqTQ2tjMVGdAXHB6QGm+WIg51twXYhdUKAUWlVfKHTPzRJCE
AbGN/R74lhlZx/L1ZnzWPvsQ6JEhbt+Z3m54TRHP8HPtNm4xx8bFBRdGQ15Wz86kpBItQudxiLI4
IvsV8AMlUt4l1C5ERZ6737xcZ39NJYjHue/dyMT88KzX4kkbqcjA0c+CXKR2Ah3vL49GcvAvx4hM
aHRhr6i9hWsYTr6RVJv8VQ1z5GVFq9ukJEAHu6c8r0wwe5dSQ0+BeQ9fSQTOmBucLWPGvAJk4OT1
CfZWKwLsZKYImgtSfje7syOmPIEtBImC2U3w3nJWVC0OLHW2eYiwHVboUdeMlNcX1ch41hyWSJJC
Jth+pe1Icrl9YLHlfyFymFNl1xDzEPTsTcdaJSsi9mUMyUKuJo7F/qMPSXPFT6dKTZlqz3OkhiVd
RpiDppYWCsxOeyVIVefNkeSSLyhTWkkCfoAS8wzHk5l9CLqofaDVhWs79MhJWkcicA4FyETHK2iB
XC404JPB+WbfMvTTbrLQexSwVQ9AdI6QfxbCqtzBrMZlsy2xHhfERFYrMKPC/sueDdjUI5vk7jIT
ctF8G9XcFqAomKPszD6A52cjo7Rz62kAsnmJ3PJfEFxAqyOIRPT4F4COlfQKKhGoLwdB/81Hf2U6
I2+D5NQJxZf+b5v4h/orBX5iaiUbttt+gNrrRppKGtbJOQRd4g7VydpF6kOKNPMEbCWSb79tfo8S
2QeobyyNfCE5raZKCkmr9O4u7qK6PI6MIIy+FA9mNDtml1XxyjSW0CUUhs9Ts5ykJjUkEo4vwKwu
lKmuQbpmF6JYSjDTL6RcU2+QSLg07pzemvqZyB/PuCbiBYYAo9I2Iu5XstTZHPZvIaeJs38V8fcO
Adr0luAwxDO5Ln+fRqiSyd86hcr76tiY2ACt4PK1TffA0Qf/yV9a8Ki6nRNOkYtl0W+frwD6v0ZK
wiXvqgXWCU8c/jnP61aZaKKTl7DIoHX7D4b5Qh14Gm1t/LIhCUg6Ga6wqUYygqIxfSk9ddSI4wRi
OkhKRzFmJz7SjV9opg6rcrf2D9er7TI/zJVP1h8z5+0yKlQO1ybSs1sVU0YtPw9W/1YC9tinSWF9
4fY7UNRRierKQz7meAPC5agHyoJynh4yoozlAJI9HxXgklsV42XdjH1tFM0F8FtAuaYiVH7iAZkE
D82aeIkkXq90O3Qxv/3DAe91vY+BFukifGuKN9kB46OMLK68L2rHvEwwV8GZsutWCkVj6SVb7m5f
Dlms95giCqri1KJolaxErI1oGubasbpTdO4vPogCG5FujeEAULWG3xIAYVDc7TXUsS/UfSvEjvr0
0S8xI1jyh6O1oLA3oxnAn3S6Sd1oMR/eu2cQOQr8yaBjdYRzybPvCACGz6BrxFqMv2+0Bw/JPKYG
vvIugJstv1lq0k2RF05XwhlsIPZVffAdpSyqK5afVoe6C7n4MlIzNHEPFXvwOD9VrFHaNjXunyC9
AFVlbcdDen9oQyGxHpj5LOMd5/Uq2pqd5PEjQdINaWpKIVDeSsgdbH6lnCQsNiM8a4yhwEAyksLz
MuV1g9gNA59UXMxSFdqHRFoZxruNCk0uktVYvfHzkRmm8pC2YTc9MLOm+xQ0o4DrPXyM4HuGxcuP
CWMhZelM3MlEA2gn7Z+PGMChcKC/y33mmtfU7V+QkiS3VaJ+9ctfeWnIqwEXu7WEOGBCzPwxUpw8
zRKnxRpg+z9cUICbCfj0uuABAPprSC0rqtu/ptHR6kkZ2knKrbrnMhJrjTorrIhZcFX349HQqzkJ
4aSm3nC+HBH7lCJ6sciVdC7WixlU/NUeIhUJi9fztT5G/6v6WdCnrZZMlj1E5PI+bA1EDkmyctuB
e6e6Zb8hhmDIIMprucZp4QQ08X+0kfuxoid3hihYdCiYDpSekPjL+/v1tBv1cI7V+4puu4fZENB6
XQquA5jUvrllDHFCzix5HaC0gXpJP/C+Ei6HwQTapP3a9EmaOzAuQEn+k8ms7VuKpDAloKDpXp3G
JYvQMzZ65rCwv27PUjvCimZr9QGh9E4KfLaaqZpY/i9WKQFFezgezudTvTE0lOgfaPHifUshNyZf
iVp9OupGE3CF9+VHA4f8c20o35UHHt4ct4UVdHX+OQE0s7O1gKOjoeFvnBU3O/I3qWSX+4k21cQH
LsG6oCDy3nfGTGlqqbI9gVAWB5KpLyeZhwM6MGz0gRq56Zd6qhsFLvC7FGx44ENsj4KDviaG98g3
HRKfTeb5QdnweO8bRvOdOTl+Qr+E/0++dCXqMJ+SB0Os4ON6xI9AsFFZDSY697b9D231luE9P4kY
ha2inIHV6GMzDIRIr/Z/bq3TUCpAT4vNs+3jvgEB1W5Z0vqO5ZAqCXNYxjV4OmEyemQjaQjP0tGM
QkNGBSm6VCNbhQMV1tg/MSysq9spqc/BEDE8QATioVbSlXShZXM/isLHtTU3JQWLil7+8Dpi99lS
+tZtDPTg7Eroh+SzD1M7FT2/qtm6oOzjoBS6TvpIab+JhB1LNG4r/xu0xnvyWaMD+5e2k1G5/IvZ
o9T+kTXnG++Uo2CYta5OwKHesWLa1TzpKU8jJpynW0SjyUCdpzWBYYu1hwGsvGDgJ2/eaj2PRNRw
fEpGkllHxZxhKJpL0Mgun5pb/fhPr+Ggz7vC2EGX5LZlojnL0cDoXDEK1xGiHuJzy9AnlNs0spVK
M+mb5G5HIgCqlwq7UZKHjqM4msVZW1XmG8+X7ufMcDHMZAl8+luC13DA7AQ5V38/bQiPpo/7vocd
DQ9gS+pKChBhD7iwXPDNiwAC0BzQFtrtPe97bXw78WK2ntUXAcLeY6CFlgYGEPg72VjmlRSEYslv
yVD+rc4erBwc29p7K9ijPxZEb2taK8R3jyvKoxUaKIJ6k6Bq2RBCGgAqROULj4bpTEW3RpjLSWPU
a7h7yLwrhqJZxzfxruU9srKXwgXv4aZFbMqQba+YYYoGr0zY71GFA0KQxAdxbkZ01JnR0ITEEGxT
u7Z8N07ZS/NTXVk/d8cKuJl7Ep9EUcIJrCuVflj2yOKoI/bsarvRbLhUEUGZeVF1icX2xN714pv/
Xq82Wc0K/915Rwn/aU5NPymwAxtVGBo7rGu4P2JeuQEhaC5ugUrGEpqxhBOWWfO5XjOnp3nodscg
95pk4r0P5uKTpUB3zlps8vy8NcPlDWX2AaBd5GvOPxyZZrkMq0HQ2oeUl8f/tiSinIVSbra48ebU
u/qmDPqgN99vvtWXeDxmgxEM+AYNBGXJMtvQGigLxSnJ2OZ+bhDc3MlCegnCQjcN3BhBpPC+2hEP
Xeq4wRM99OI89BiGW7uXMjqn40C6O7E88naLh0gEj+xLfMTr0rMeQAF+1/QzZ2vaJF5f0soP0Bho
7DTGaEMJBMndLgPYKjiiC54Ma9f5TCQomoXu7glvbemBHxTKY40SOB7gMTTzeK5sJn4KZ3KgH6zT
9Ob+BrmMk34NgPpor8BKsw5eNS2P8wLOab9E58ETBgAM11BUFR6ArA7oT9GFyngYSo6nnKab3moC
n6LrJkCczYjgq/qN4AeaCTrNibSysGe9RovMhRk+QoZqxs3MUkncB1KMO6hOr9VLo1PwJjrKtrfn
ixT08VEssOj189bAdRsHmXufMFS2T1Sr2JbqK2RyWmGyDzFfXwiZqX+54awTTmhbzG9rilwvSLD2
EM8pKxOkxM/BZOa6CM2v/cuP0zxE2593EqQB8vdm4UTQuHvFTlqFeuOqGpAJ3l68I581wFsen5B2
xzft8FDatwOv3D6sEII7wLSWIcsBdhkP4L9ZJ9V+kQ4gJeUBQRX+uhjRbpfbNS4mj3Pj7VOOwR6h
YGjR6bmVffepTJKYVnl64fv88zruN6spPkVfge1eWI3AkPNUmqc4KI4JfUrYYAQelIOve93N9inB
nkWf5+Suyvbs7Y496iuznILRQIOly8PCGRMJda65CXww8v6UMY8bs5T0T+D6PuNwnqtnQ5CT2LJ9
XdED08YyRpJpx8xAjaWo7PQUGC8woZwvT4DEQ1hxz9JSHPHKSe/B8UNpXPq3TU1yYGA7slx8/Q1l
c4NLe6r+VrBUjUjOOZ+QWekuJZZAswboFWLrEbAwfmBgA3klzJhN3HXiwIuBfMjaAx9bVqgvuwPa
EzJoNZ95BUkUvLrkN5aIrcEJV0Zgwwf78yNPBNfMSEF/KsJ0hnShCU+fOP7BoeQceoLRa+hWYApg
+T7MIqPjh2eydo2/TFfrtFYYjq73CSGuv2n8onEX81ROnL2zSaawWWcWyH+YYpVy355JOXjO3GvT
3kqFkxBiQ8UYlLoMv/sxIDBfTu3nVMM9ymIb+zUD+dQSGE13a+bhcSuG90VZy02Cbn091L8PqeLx
5ysW3jCjKa+53hsXYXo3zHCLWIPFDfkNspnUFshZHGHAynaifp9Gb2DfqPAzNOOCjW6cVV9vWOXN
0jGFNz6AemqkloYfRIHgteh8g7YbcBzic3agMg+7b6RoUkeZjzNfwdSZOtUhwPOrTqyPzi3dwXaF
iFAYKybnilUg4jBAzWiky3JFJoM/6x41K2Da/nyIO7Oa1iMiP9qzc9NcNQNJmgdXDUl7+TxOoTL/
YQCpiouBm2J9uCiyiEwCRCyUalCElLAAEe3T7kFNkumsROVjxF4O6eHifW5850Qy9EU1yV0SPdg7
b9gzhnRGOzmDjSS1PVZqDs5kJVyFU2libsxK5SWtRzcHSFMjDaWfAqhDgnT3PHs5SDmZox1TUGkZ
7ka7QTV9xgdpwBqW6nrva7Hxr2LS0dYjCmqsJtj64xhSoPrPzYk8lGECUGFCY4eUpbFNnbVyKqNB
V0GdM+IjCIDtadDukzXVCSQJjTveS7mDZCPgq86jDuyW1HVkgFoRliOplzsOwWJDn3xY/6kv9c7Q
UrUAu2JCMktckdWiBr+7096VCqV4p8bkgmYdPcjv2VqlEdduMFJGm2jgTM+Ei8NFjJ2Wa/7w3HLx
5F+ZsY3EDHPPkg+wfWqGyUq1HhpPuvWQwVTU5pby4G9L0aINg+7pQ6tKQTOArjVMCgvFSO8+wqNh
9Yy4wuPfRkeeZ4Ibdqe3KRSstdSssegnnA/ooi5tLcAdibiNGXMBC5KoiNhGFqNlk/sknz6zYq8t
DQ/fqAPWAdN8sAyZVjeR6OdqbwWXNSpmTlfYK+hMwnaY71NlzNyDK3TgwytlYWzkrgNlAD5bUL/x
pZRNGrxkIKHo7Kn/PdICpvhHyQu50gxSrkMsWhlgv/OYP0W35qOI0L7WIrXT1fzQ4PRC8X8oZXmA
OA0CxJ2whUbkTlAjOaH2KCc+Y0BM1W5bzx6Ri4ARc/zzh8CMycBqrcfyt0eoMztAumh/K0idbM64
0mf9SAEfq3K19brR54rJMvvayXwgS5n58tGhj9uiWbW7bcmMo6btlGtgZJYlHHdRrfdjsBwwnSUD
ZWerQtwuxEj+gHED1lN4xKOpwmO56bhCO+Mc1sBTdQDJFb22+tPgnGqex+MidDUXIoCNMIljBJJD
EVRGoyas2h8IRoNE061Ts0x8MAo0OWEZY1dn2wok1p7jhE7xBHfcRa4pZKJAXp0CDyxKzCEz/ASV
UIIC9pFJQWhNzgOSs6LspJt1zK20kMXguVCGeXgQnBpvKTHBUvT+oBt7IpM4pLshCgz5ao5jvU38
Zi13V7113ytQUHXHVtWQ2scyN7TIWyTAyqc+hBVsVObfSs7YvVrTW4CX/3LZRtVCQUzQUlEnPEsL
26xBpjz0M9YlqCWryT7oeMnWIIcTm4uZCzjCmZEroSXIgpVSqPwwxnWeCKW/whRWzKj6N/zPyC9Z
UZFQuEuzDSUxAMjgw3Vm0EUAMlq9nZUjea30L/Yt/Haj5dMyOp/eucaZAlvw2xB5E50XFlW7Yiox
qMtJTe6Sy6cs9NDO76u167H1BMC1WUTLSoK0li5vgYHFIL9DdiZ4OafAaJ4BN5ZbCgQQH5MMtrU+
jE5RS/fibB0F7JwKOYL0hU6G1YzddZpCdB7dbVuzzXsEB6YR6ADHaAkUaExK5Djdnocvpq9L7i6F
nnmqEW+lbZmkPKEFCCiQumLERRqqxGsC34reXyAeIvMe7ri4VY5k/6A7/05vWjC77VXJzwWLjy2p
jCFes5B4TEPelL+tiHywlajQqa1bks3Iz2dltdlKWPJ6A1FwacUtX3a3TSYPGCNgXLc/KkpR4bYg
r2p2M+5lT2F4spFkp7ifDHN9D83m3pDF0a0gS6trLRoZ+sv6zdWtDaypqBENmwxNCBRIMnyMSIpa
yyAZfn4AGQoVbHeW/DR098t5wXH7Eh2e7ya+HO0/o4aQR/OGEjYWS56mgWFPNNowYj1nJal4WTD+
HCPp7XQdssUIBp7EmC9QeNFvN6RL0iCbUjddVsynLkUyH0pRgLwpC1ZrX/cjKptPrUDT+hL5SHla
ruXiiu0CGMhKIvIqcEWTV6a+oqF+M4WjEsZ7PZ7MTDxlnzXAM20z21YKB38z6+EKTuldT3owYq3B
pirOrYYV+rom48psF6PoQcaYgQuQdT0AAieko+cAm4u3jg1udPywna+HR0ufRNI6Wz6wUZSwWcUG
Y/wNOJheOnY0g/hPOh6x1S4tMwIADeDBIgY2Y8yLzU59tsuVaB1q8E2JP/MtbCYEtz4+luXT9QrK
UAWuNZ+WlHZQvg6on8WjBbhbMU5jJOmL+dL6ZYR+FabIa235Fkc9ayU77k2CWXv1/cjSmOV4RaIS
2UgNQzzZC9txnoCT5B9dqa6Px8xxOVp3FiLVuKI/amqJNgkWoNXoVvlrNe17joKIMwATPILxluZX
XgEsGQa7FPd9QEAdJE1DYRIU98ltmpZE14VWSf3NgbeZfhzFvP3IpZPQt/X7K+SGKWAjGmLab+Uj
U0HlX4NmSxxz7oMJpmajTJ3q6oIQwpVdNZLPzPfciLIF53mzVjm2LVObgnlQD7tPzn58tqyqGbQ/
FrETqtZozep7TY2ORcReCLol1+sKQrlpCoLuRnIl8/3+8RrxvDRZB4dbWMABAEymEo+ZyNS297fZ
lv3INXHufTKHuKfYHAX0Mph8lDL3I/A1tePp63pf8FupBxwZCsua1K5sPva3KsToi3/kIUu44pRN
s5zmHGl9L1OjJTzGoaedsdYNzjQgFvryXl0cNvwmvM4HqI3Ze2YvXXGsEkwh8g0XWiftCQzJEL52
XJwylDe2VsDJlO+hrKRYDHA19sz5fRJZ67PfmV/94iCY1ZY9CmxWGlqOPa2qQ6ZHGXkILMYfTayp
n7+vAIWSf9hIdUv8zxFnWxX829lJ/E3z59MdliVBo1rMmZBdh535VxBA5Qxvt/D/r6pzt1XP1gFb
GnNieAd/F6bP98mjMBKimBTNTT3yNXXBoIpx2rhTXGbgjuj1iSVRt4i6eKBSE73zY8rFs8r45T+6
C8OjNPWk/V9YkDZPjangKKudQDgvh6P4tg6WbinqSGeTT9GvssjEZIW2lvxCo0/rAif8LRhS9HwO
pjmmS+BgkXPQgi87f616WN6m6U1b+1ehGAYIxLpZ7NC/CeJ1rzJKLNCFTVT6wbGv+NcJEdiX2eS5
OoFKQEvJ31xk4VQNKA5szN8Q6vVcMHsPtwVdLm6DyYiGxNcE7QX47bygScPUsYhPnjIgHKr1Jf8H
L1TQA+1NVuJBgvpuaVmjx/UGTmytWPGa2gNQIP7wkqdik807foVJaJLF8Z6Nk8LHj5RpK3YL5JAm
i1BOHaiPIa8knydcbuJ3RYujmu0kWa8jhxD86olVPfQUhgd7uHvjcmOlikB2wOQIYTg+KF7hEEj1
xwnaO7B/0B4SuQRwAqVjfoCuOop6qOMsJB59a7RcB23KESLyLO4qWBf6hwZbMhrS5QpvsrLf2W9C
aVCsVOdFRM4xKf8z0bO0o1bhV0ZNu0cE419Efhdr/8SHK6zGQUm6mdKTTt1BHwfSONRQRHb489KO
Bw5fq5bk/CccjyHYSFCKKnuB3/iqBqEVwVU7hJQ5/FtsSHch3E9ZGOpE3QZ5h6t22lNxsX8Ap29h
iE47cNovC8J1Fk99BF1ewMIr+ra+NC2g0xpflCQfIrr4CALgOG3u0Su2wanH9KIJOM6V9aPF9pz7
My255CZTSNGJDsdDf+qEiiYoMmEQdYrb/S6QWxFE/cYyBuBMDY+go8/eLO55c1PziHNwTgIlzRK7
KHPRvJVK8lzQwBEZNONHX4/HUDej13ocPyq5DwikuHgCwJXNoj7ect1ME9xXTL+RxjqdsDVN9aTl
Ek3IOSR4kP4VF8cCgVv7or4XMXq0/IirKY3b3kxQiqZZ1SP9+IbCh0FEl1FtXghpW0NppNOhkAXK
Fkpm3Gw0vZ5meYs3hh/3BEgVaMpcjEhOAXxTS2oX4h7itfCIFocYOwZA6nAttatacWfOrYPj2tZb
2752zXAr8B9ltOIiYVRC6jVSDuy2JjmzESGNOWgl3nRu1kmm0N6+mVqyvSCKf1+UQKe5Lf4j1m4w
Zpz4msapUInLyOWy8XuKbWFcLrLrsIE0msqn08HHj+ZTKmXqV4OxtnyLbd5wJ0sB3CirjgTmcb/w
3BLq1jnoiQo9HBzp42hDNNqLM2HzpMGa3ooxi+g5rj2UNb3oBaTfXKzqBsJa1o9GVd5eiROQgX5t
wMGE+UG3lHY6aknkRXSddCF7goKavPyL0h9zYLSFGM3Yy4ZsfQaGXMWqhK+CmQCb6mQnm5gtIvAX
mg/yih5KcyzokO3i/3B/pir84MTdDUv9xS8IFlrWR+HgrJkkDrb+ON7kooNYmFMcz9fMGHbSfKlo
WJhQWdBzbq6FC9S/ayR3vNX3d7A+hRG1MPylRq9GxRAkyraykFTal+Ih7FNl4Z9g+nUWuGk+qVff
kOUUdXdivcY1ptMXoZsseWZRyjQpkREv7K4Yvr/QyJuWOhWXidR/mZbS4Sd+BW0tQHk/mAAdfUXd
5TS9/47tIFIyfE+ASzvRe62Rji9rRMXXxYZWnMvesPWQdXWmL6/e9Zn5jXW2h6jQB5VhcvBU2hI1
HIB8R9K0JXLNmtxjsYM4/pZDrgpmwftSvE/k2giikszJRsNilmJbCWZNvSGujJsooKsXwXDn6/uq
G9ryC4bA/IMkP9zJ4nmsMe8x+q6oSJxY/UrVO8hiuqSzfqpuANV+bMcTQosaYYg6LEIZUheILrtf
vQCf34yVzrnYtFBtUh+JS1n6W4tQO2zHYA1Jv+7srxmNGIDBtucxYf8D4Nbi/tqRGfzdi6/PPkv4
DUnargFadFN+/ArvXwu3hLVaN9McKmzDtVMrC8axyjHTfeNdYV6zk4Z9okpN7pEu7LsTptWSRFVp
8ripFutfLwkSiWJr8e8YRZLjzuuplvJNgir8MOAqAcM3muZwtcuViBlhRa8oMT6vnvtPgs/bHvEi
6bWZiXeVx13oPLHOOUbtFmt1uUW4+nMcLDYm+6P9HIckndsTqlbHf6aBDtHf03dIP44ocFvHH/tN
JDLE/T93StCIMrAqAH1BOORUYY34Jj+B2gkKQUZaRGssCGUI2UwQq0NPnBaCbxOgKYOUu2LyQ/4F
q9Kb379BZterZ57vVdg/ohNUu6vEwqpnwmURRZiR2YQEDu2cxO6Z0wCfXuez/n+KoJs1y44ldMTh
LgrCx2Uqc40WLIawI++PTtxwhlh3RI3M/7VcVbgqro42HxKVk6uehn5XGWupxSYAiRkHZfjdGPJ4
3SMx/9Y4KttgTi9STD3Xh2I9Z+K9mIFz2ZU+hwyGBDnSSVHoKX7W765YShcoDYeij5dx7/Shj/S2
zmQu0WvWr4ywb6bBAhpv2+aSz4Do/PGCx0gFxWY+xiPwTs2HwFDcoMxSxezSfzXrh6gCR+sKRyGh
nAce+qvDr78oz1eI/0oA/9Vrha8vG1BLdVFTGm6/vfXZG/cbhHZWeoKZKZqCzDfK8FjoO9dbz+nM
yw94mMbJIJ5/z0VVji5BER/InjN2Qp4syIn5KKGDgUN4v/2bW1dW0UBlxYjmDLF6reooa6w1FXVF
m1msj7WDGrMj9hIuZPLZVDgrdyhurFQ1Pf//wVv496vlhgoUlSO5WgZOOvbWlyCz/5vIGYhsruIb
tKBCCByZNs42lwaff5KGwpiPSHqw9lelkaQrfTUzYwB36pzVyuIWqa71yq3V2cYDQC1V2xfPADbZ
TIfQlh7rgEhBC7SmubPMj9uExOBVquj4CXdpIBPJIkbRo5UFHHBzI7YMMfWtCqwCUpn0dOeXzZ7H
ru3Cbp2o4HPTBbQ8fQvT4rzvOukqPWDaC6LscM0hJJZecN8INHG9G/7+fHuSzasNMZ0HJIN0fsl8
kCdvdKnjtgiJ8j+MyLU7+896LacsH6ay6GRoEBF6UUWVDxYHbvAcaYY/4hz5gfFPt+Ao/Mc8SPPs
aai5dpiHA2f3Xdy5bPdUFhygBcEOdRdh1L/+BrcEXIB+3ayxPpPjH66RwwV3ggZPQHukcywTfXCW
IRJ4DVo0ubN80uVkLfxXr0JgUE4PK2xy6BHwt+7jM064sc582jfYT1r2rXpCc4x6yc5oJ5HaLjdZ
VzykkItjRxzfSHU4Ozsr68qEI0Gz973o8cLBGJny/P2Dw3bvQv0GuaJ1xyKeBQh3DLNXsfbp8MOZ
xd0U7+kvgxGvTEtPeZWuc/0UM76kPlJoC7OcfjhWze0eSWa/L0YdhtHMGry5XjyHvBDrD2kfHbWu
A34IQT8Isa1OBtWHybBLmbke8XpqMBAzPvhwkq40QIKex4uRE/kATqj/oPYcW1Xg0dLnwVUFG2qy
txiXmOEwnraGZ/yuSq/TZ9BRKrMhYdMWdQGnu1UOg30EZ3xXW6WFo1R8DdyEueAB8Y38b1Kbq/Km
ijbiWqOBJt5lZbbw2PeqBqb9fgyIajZ3wkc0NK7/+Y3Pz0FBJKv6a68iJThB7LnbIJCoFhn+TNVE
Smwp95fOLCqkdyOf+elWrZLKX59z2xTzQchVxB+YrVQQiB4dkUgYOGHafoi1AuBLc5YZjbwl3Um3
TmJDNI+JDUm3jjeS70mpaV3o4MaQpczX0wxeSazQv7WZfYNIX7fhd/dMgRYtNsiqyNd1etbnk3rm
+IuH64yLMYUJUW+juB6lUO56Jo4e5shufw8dwyf2tXsvcSgzyTkWw15by4COjFdJK5Z9eySp/AXh
J1Elpd6qN+UKFr1EUHMRxzbPtOQ9MOUL1zF5nTM1nzY8oCGDNUaXMTrNrvhHwEAfZxZRSHg4cLHI
yNfc+2Bn+YRkCpcoMYDr3TGdX8t5MmIpRpun7StDo/N3TwyPijVW3K5iyl/zo8t32nDPNrKdIrBW
ijSgA6atixepzWVSTCm2sqqiUM7MryJ98FRDkML6JqJoh8ZbNG5sZaai3lXdWjtEqmnptdubVKwA
J4jUv7yWbD29O7Hklt/GHRE/7xfjh4snJ68z4pEATkSsSMVmc5iFAPRUKrOUnB9XSuZo81+63ERN
68yxeu4uQd02fRhjWldgaoWFXLmZK1kgqDwfDhOt431ml5EbHCcFPyk0oWlSFJNvh0gr54j6TwY6
mpYs3FAblodSEwWIrv5b5Sp78fiE0YhAxN0NCaRQgBI6Jn5DqXDwR12KeDsBr4sggFfdwvcd4Nd0
dSLpjskbi7nOdbeZGpFSa3epE8ePixCJ/ir6zBsaG5jIaFHnFcerpvXVOpmp5tpWZyuJokFyilWj
X8Dh3KZO0Enz0HCURA+86gF1WgRA0rYOgWyqvOJ/yYefEz4CvhQIVvWtBipBUm8dPE/Y7ad88XTi
q3ARVmk8eSyxrZTKUlHfTCKPSs1ahQX0dH5mi7VH5p0jeeX0DdDxA+ZUK+Q24dat298sPU1rZP5u
KtqNKMQfIkD5rQfGnH5C7jMVgqdO4Q52/Mpc8It6wdp9wDoPLhb57UlZTk7uj8S+pYmPu7bRCbAX
oXyC2tUa+qQmQmmF/0D3LGjWCFqUQv86OvVDtadXYRb3E94GyqhWK+h9pVjMfbxgtp0QUqQHiEcO
PYZmoSgKZWwSX4ZGPCJo8unDNSN/3kHzi2FM6NZCspkQWJcV31Yr9IXjtBq0Vf15iW6pjLDeJQEQ
rNPL215LvNWeELWYfbQU5FNk7iN/rguhFEqiIgBuDMu8q0o2mn7QW6pg5Z/sP4HAXYsv0GTmjulZ
uiXCpfjflEE+VIKWc35oN2zVpm+LyKo+HHw2hsNhZ85fZ5pvmtTSJY2oeovNxwdccKDQI+vX1qiz
BQjx59sEvF/CHxmg41X+qxCES/s1imC0UphjaYQviWGhQktpiNYORqhlsWohbq9cN/oLF0kLRxyY
+cbIcqfQLHqlWk1yW7tQtAxCCdJ7av5s/dIyCmzZWEDYffiN4wNkMm2iqutASGkOg00j4eyq4C+c
RoaA7g7BVqlAtv+nKEHZz27po6PV/ttfx54xiddakSxad5bq2Ox+0oqtbGI3Oi0XffJc3OykTZHh
+bXDnLcuJ4DgUpUbdNfol6e84oWZuQrUYgkvl1xOS1TGdlM/rVE1nkFqSSPvop36RyaZmiv8NAlJ
9KXR9nI3uQrStTgsa2HTngMNpRGXCq5tYLMWh+7LHc5l4BjLM6myA0MK0H9TaUmWw/YW5ToEq2Y5
3Pk0znwRLW9A0R3m4c6p9ub+seUiXE9zdeXfZLxFG5rmx2CMcuGuEiMImqsHYVJW54kYLcvMgEen
y31gI8HLSSq0MztgPU3HeBtUhf6+HaLRZHqKo0y4+bqpOTtRVmI36x02lGBCgNUYBtY5XkwtnQQt
v9pQIX+WZIdyls0sfdh8aUH31NxtAk3iDY5cAszTkUtsA1eUGUpXGvvrnEtkZZyBiQMbRrf1dD65
P5KpNxMkZ9mZj2AbJYOtQOVEGQbh8vMSSLnQFG0xHETgHUf3cD9CU6mGihbeR4BBXNgIo4vtoNF3
AvH8ZhKn3oabBFDYI0CJq8kYGUMXJWTeOTzx03p48/0qri/oQpu/FbZYdXftiPjQAseNAWjNxNIb
Vvmrx0txsb4yRz6LJISV52Vd1kblu0X/NKVnThJfvaSG2Rko4SSpfNIMjv2zHSFjRnYPmyDFeSog
9uNbchuvGwm9t6h5AeXhTHTM013c7JlLvLfs/Hhl7Y+OAt4WTwbRLxH/ighlpXtPUcpn0rpemLj4
JZMGOGuvLwi4IInNDcEg9XQiQoGjFgvqNW0p4JcaCCrCWvlrCnBwL/j9qaU5/5XAPbaOIjW/H6L7
eoM/vLD9GcQTohCzCN8qLQOcEiJB6gQdN2ILksyzQlwz6SHVgQY+bb1sv90bsn+siWoIAs5eWV6W
vzso9eCo71rC2mUKD+sRdA7F9y1TNYLydaBsu3HzEH67Rszbl7Oj/l65xzfSs0EX3RcMv+4PYyWA
0WCzCBuKT2b0nltvfU1BliDrH8RssvH66QVqdCBGh2sdVn+9ICwzsympi3Csdbx1RkR8egyyzksf
sv1hgnnQ8kYUsuDPPX6M4Z0nZLXE+n3N7jEtJ+Jq81jsMmN8cofYelAaHmKvJm8tiHa2fY7kEhZA
Xtoznxm6Z9jQkXWNGEn+d+wcF2uL5V+Kdgq0U3k3hAQC/06WMO/1Web+qEjeyBdvIeUwE+LMwrp/
b5oD4tNUqBcJICJawo2ro0yGLdR4utATZxVcTY1UqiPWP1E091ozzKYrrtZswISd3J6xHgvDDHB/
hvaug7UArJDwM37A/ylQsooJDdfp9dEmGO0+3kouH/tYO9Ilwzy/dLINJTOCdML8cQNJdV+eA2x4
GBdHoeV4U71OePB7st9C8sIDtjtVLQGh1Y9jvDYd1VRQuGTZ8YfSH3m/2LZNHoIEywxIX/26y+jh
6ZVIX1q7Aq9xarLkPRklInjwS4/Y/W8J3VK+kWr8Ngwr6n02e3Xny2u/bniTBFkATMdktitOdHuh
FQhThurPDSYrIxBiu2QeEumINLYj2qmelh/E6z1Jtm2GBPNdd2Lm01wmAq8TXuuCnEwVMEQRtH6p
P7tbiGHnWVSh7rPKJRHavyeQ2UevYNmuqayU4dT+6qT6Lo2zolFJb4EXFhr0YT6S1jFAX4pJ+Y74
K4fRtJ33ASkxNi5vAfoHKRpaRBoFFt/J2pXJfwE4Y5uCOfR6TVakzZb42ddl7W4q21bAUMqB/+rs
hU4UX0D+CniFfJi01pJ8EV482flG9AVz97tU3rOCCI7fFu5FTpiC4YdHO8wvu4j64vhL0OPjQWhc
1gUozpQbrlMTnbC5kBbBI9fodJmhhAHhW1pStn/dsXNm3Ve7JsFdrVl8IlnNTLOHK4eJyFbLGJgr
TT/qJ1hnLlHPfD999cqs3QmHFPr6FOyQNYNmaM4rxOtZW2sW1PG4UNZWMqA6+rKhcVYkG33oRxwx
O4Qj+nE/D1QpblbNUMXoehtIzwsP0Un+72OVxckg6nwpQoZ70GilTX+D3VuSAE4oyZ5M7yB2KdzV
l8s1ScJwtaDmdF/eAEpcm9c+CPVGTw87ogD2m/55a9v4IRsyxj7smAqe5oWDLdvCvj4e7gcO4V5e
Deu1UyXlLY4TlQcsgR9dmWwVgflwDwsYG9jdJArcooPQp2ATouXbFlS6bydTPCboVIqFpURY5itj
2MKSwTiAF4/SE2+D6u6FwSj/kq6t9FneqmFS/Q4cPUVq9Gph2uh1N9Zwg+LHglBog0KlV3M4ut0L
MTdzIHgrz26QwZo9Uayvg6dSgXuPg7hOktNzX70CUZJNLACHHHUigZEuag112RHrvGaqwJvjMHIy
cBA/Xkky89Lh8kx1sAcTQF9CZckGsQCq8XTZlWOuQhCPu9j5SNbwOQOXdseouPl+tNFGlYHXw30g
6zACl5J9R7bW+Oy8dXysMxyZNXy0Y0glxbzSaVKIcb9Jb7nPD+E/oQP9mxg20a0Vu0Cjc6RnT9/D
ZxSDZfLDuQMN/bWGDNOuU8BoNOF/sJ5kikLFnqdLLZ16J9MSD6rvSsYkYLCoLZhlN54jzWxRZvrN
E+5ZIZvx2YjYiYH6DecALWI5okpV/Ay2W7VTO/2aC67oSdiTL0X1QownkQCIeA3/phOUkom19bu4
PUrA9l5Xxkh501IZhyL0XnHKcQn6vvo95nq9eUv4sZun/lg3e6FQbWpbXHRJdTuMkhQKM6pjXoUQ
O+AqQwko1q8/IP3fj8v2e5zdPGn5R2BMh/E9ba5q/PSbSxYwi9HI67/KeXuexj9lTFv/20sHDYBF
azAGI4QLyIdHch2N6K6J/EpDzPbqxRsgabel0T6qP1BLU30iiAXU4rAxeA6Xm+p54w1ekZWy9ZH6
GeeyJyQz5snZc8ghVuXmAG2conf1/1pYDfRQTjcVMSV8UFarHq+xE7454oVMmKS9hcjOp/uooV01
8dK/SJkzUzdtFgQpgSJYxG2E23b1nY0e3b3zYoZcGm2gtg8RP/0QMQu3Nfpteu12PsBFR/CvSxTk
9T+XLxPbd9l/rMhU2aLlCenRMbv7IMxIELlZggnIbcCttAzAKrNZ75xdHL8PNJjI53yM4xoSEXLf
diyb5JdnVQwytd8uRNd1TWwFTcy0zE7vIXX/FzgPlJ3b/D6K0adVijXelxj/V/wg0vcGrPmnmsJj
jGQaPetb1m5Uia5JI0eBcKNVufyX+T4TZbTOSG019uWPNA0MhNy0oqpuIlW/fCM5wDzjCz3xoMXe
ltSDYfJtJcCdtYM1Qc12Vwt1bSZ4rH/crNV+zZy5WHcmRgSTvjSuiMkuzHTS3zGHQwnUZ6G6t4pB
hgCYaHzOq/o6s0aZZm5CNWHbfjglJkk4YyUhFPX05g2l7hc8CncPK9D4oRGepnDfEtVC0Lmo6Qoc
ZyzRaVB/Q+FyT8XLE7HqrR2gmjA0GFRbN5P1YkANgUxROvEfBfHCyztWKBoMAlQUloNsrJTxAXGB
EnO9f76OepF1CvtkxIAF3M/9OeuKFoBUSqreZjuPFAjBQhkSu94VbGPGpVyaN8VdIOTgnl1oeZ6H
NVUIXHp5s/cOaQ+RMr5oWHEFmBrAYkOo89wi7RLBKcofcxU2e+vITT5RzHNU1OCrJyNQAyNzE5nF
+7ED/6IXZzypHbGGTnhPXNQYkIcz/3/kCTIgsDxp3VgDpUgRYDaiYkGEplTo7qhIDObQ+nBQGbeR
eXCG/iiBR7WaD43TmPhZOye7lkl1de47HwNjw4SCmeHm8wFGdB11sYLoSUcH9a6k6luAcL5bweR6
kmkBglRNtJAtEfgaAI9U2xRoOrNL+lUYBoozUYuMfIzp5ZiotWbPAXE/SSx7zyto2jyiQSUHgUrs
/ZaU3ktFpzMhmVHgH1zRQFVoKwhSCwnb3/24L4LAjCcWmwWb7MO4SQe9XYufPIr+243afAFgpcET
2HfKxW9WxHCdSWNWS+DbFJcQEw9PlADG8wceD6E1ENeKosY6Me8fjd4vHJ/3qHEemmVIN9mmb7sc
YPDIWHp6f3qE22Rbn/ACLXz4MCTKCSBp5RQPzMnJj2ek27sU0+Zy+VF4oriZYuqH1N10uWtbrLws
Xqt6WRjuZEhIhNdbbWE6Rwhr+isDEwkzvoRAZIoj7++0cj8sLZYI89/MvbkRIrs6JnMivVZr7FMf
EqVsJxNbYEq/HpRiChFiMeh+qDPwlrvoF8mpdZldwfOBw3gmpt5CfhxvCQ9IgvG7/cnxJdt1ezbC
8HLeEfaP7ekPHq4CZAr1J/6GNLxQRXe+lhJYJwO/cZX2eNyYj/8H8zEHkkXRLtrlxJwU2AjtpyK2
18C29EkoVJ1SFDwvtlJavweCwSBFDXdu8wcL3gO4kaAZ9GLRLobsOaTwlnHxH34fIElZkU3PQsas
uvygwDNc+grGTp6pjMYFx7nXSHpOc2Ih60qoR19tY2z7La+4tmlAAZteyJ/+9/SZswwd0odDphCR
58UQ1ryY+xmsmnzEQ5E1pBMpUN+k5gStuXuEDB6kaPcVdAbe8ragmTKHZSgUH4BAsdNwXcyo/Cg1
9bFQf3I2jdc9Z7WD3S8Vgt0b7mj73WeOQlprQWGw3gp3n7OyFJLpP7uUXcUAKkYp9msl/wU/GzmR
ZsSXDMVQRd4xOhejj4AbVy/MwCKph7nKuLBVQxF0gHRIhUJ47IL5vFqvuJH2z4SrRlNo6iNOyLi4
aUGsNiDen7D9Tyma0beyBSvObjGVJweTy5Bjx1Pj0W4COxtE2tOhEbmM6gU1cUOmJxBshzBcgNAG
3vX4kD5wXgJaBAgRtgxbOlA+s2XhmgWDZYgeiJI4sdYAxfgCNJTJ7pytmU9LI3ful9jM8solf/cD
JYr05ZgQT7pyF2IJmySToxWGWZnUq721ubZ3l6n0t2I9TLvcjhFwNWIvWprVGVdUBNSrMXTPaTtA
o87RfePh3BP2kk4SycGFN58GO78xf/lARSF7ZkVLNuagbZKcuCWDlmrd8iWstZGeSWNcER8utoed
O90MjrbZDpcUDNHH1CJARjtvWwhx5i9gz3GWmSfa7l/NnpR3Wa7BABWul5+WGq6xu+mm4Ns9mUtE
RDtcSfrSMYZdskbkd5c0FjsI7rw8xAjZr8KwYDfhIXiLvrSdzu93GrOpffZISm0zbdbd3wX5pkqT
GUSDPUZ7ScpthP6a8a3PBuB39y9S2VWCcCWsuRuS/mcyDvIuM624jGi5F8cYJQNTE/me8Nkn8t5f
tfPAxyELJMAT7ZwNjMCZgKEDwc3tzjtE9CBJlLvpsz5z67I1JCikB91Vq1Byp8giF6h8OivauUT8
2n4D9Kvr5qHWtxz/cqtvKqWQUxdmHyu+GK1lcHhm0pxW6C4PsrMM+DHg9XcjWtgMpxct4LEZYtYG
i2P43zvbLCrYrAGk7aflRXbCK3S5SU2R/m3ADt6N+ZHGvPHIxon4mw6pDpx9cK/ydRNDW0V5MRVc
RxwKhAEZ+mdsQz+7STs0nybquxZNjpS71V9bXDBMiYeADEbmNDV0kEHhNBylxIdetrF0vxgpRU7T
8dcjlLEb2HacNLs+l/fx1bnM3zta0neCm81IZowhAF8JOZk/3acxHGpIt1JOCLhVrFk97Z2o0hv7
mgjVYTna0nOLrCVDgD0o6Is8Y6F8ytWtLADwxFXeNhFJKKBEhJLdRyU9miXi//6Uenkkxd69V1WX
IAGHwbC/AkOcBrWUSHbgLmsyXJ/1megw8A8lzwi8SR1S82d/kbz5I8d4QYIFLLTe3f0Bv5tQpTGJ
CIM7xUi02IxGFPKgkgHczBADhhM+G2Bidk9pR7hFGToOm+ZrCdP9+aUy5rofrHyynUEVFqOrF53e
+fAZCM3COLIO+cWN9m0TtNKx1lzGnvH5e0lw1i835ZWdsFqVoIxuRbXwItLTp4ssGExtPvfUKzK1
LQ3EhAC+m6dkP4LjOqsKeWPBLeortW3BXfoRz9pt7Vellq7iIM0iUXV8HEJZGBtdTTvMHXqkgCKt
sZ8df8CL0MaXahU0ooNQNOdg11F91z3qzMpdBSLPewu12VNEhjCghyzNBiFbQPauFQ3v+tRZlNCA
z66Sx6jkKPvqHe95XVfZMbrIn8W4ZSw2mySoXPojjq/BunXbivZWnxmNc3OdvSp6lrSQdl4vxPKr
TDHW5K9iFbauw8ix9zCPuAHcq0i56SopiD7ZyHmbnprTQsOUYf1SvV//R0GOxO3dgT4xoTKt8Ipn
ZczdS7K57Fmc8/K99LhRv/BZnt3a2HJ4Arpp0tUziWxyZHhioTB70Nnezjwl+Epr4dWycMeBm+KQ
4aV4k9OnHlNQtm0aNgwHYu1VYuPrcWS47Ktk+QUz7uukUdID4ysj2jmcBzjeceILVge9xZrCPoJz
IbST3FUdr3lKgUsLJLhhUXIZQPkSiTKahPCqkXLkVmH5/9p6f8TYnPshy/u/9sTO6/U8EgHFW4cP
ma4ocsnALP7TyOJ3m1rqq+OhqMSQAQ9p7VW9Tvc2Akl8CM0efTOhNo+wimWPE8qecT+QHCDTCovv
dmVNFvl3FVz/UZcdGtduwVerM4pErLb6EicvdlL3W2lEChE4zjkt0uIEiZIGYzsSF5ERlxPOotO6
MmScz1F5nk4TL5aMZYhnABv4/no354v6Yka958nD84wqZ6Qom90vfjeCxIEPjXm/9w3FAHtYF3zi
J/7i1V9npiTtJ0WfFlX4mmsuLQVtFo11IDtIVW95sbk0hwShL8ieVJyPgWr9XOU8YZS/Qx1Q1KCy
+bh79jGfhaWSHQDTg1fbymnNr21WFMOjzYx6ORDLdGc+adCNwhK/sQw1V8JBRGOTj3e51sasOkiY
6NGwXKV8Zcb/NSFEQH2M+6uiVEbxhGkkrVw8hal0vhhWA8w9vLi8iP7IpLaVhzVTnpjRZBRIYgZh
8RmJXj73HiBYP4ZNnMntMjixa5Y3D2xgyPZujPpnatGH0yXm7kLwqUo6hrUQdPY7OXGMeJizJEqV
KXqTYC0A/TeU+28dzdf2xpLkhtAfQL6E3FbZ6LzkRDY19yrs574Cp0bGt3GI3npaGaRiVT9/MEo0
JOxeNhAN4kQNox2+KnR9vneNyzN/0QiL9uB7VGHoiW+zF5ZjTOrepHBG4AqNw+oHx0iQlzkzYoOt
bz4s4UQn/OhVPwtWJJXvCHsUMfRZ2lVIqksWbDq1+rX96mo/s8MoBFfhr94AH5m9Srn0hEbdbIKI
7W+m1dIJrZRejrtb+9G7sX+Ri8HEoXsJiKfp2sRpvk4Fk/ZZvNHJ9UxR7JC1MTN6+H9xC/GF9KY3
oc1y98dXK0ynp6IMX+2z4NfAv56XyRjsw3oXe5xw+nsSKFq9BA+myNqnwfvm03yuBqgD104R7ifJ
lF+2fHDXKPhfT4gF/RwV8OM2lEpD9+rcokKFt8OV4OLm+w1rfeayQvUuhbEis+Q/O1LQMeGJLG2+
ctqCiEnMpPJ+POoZC50lA4zpuSaenkdJXCOZNdsGoYVa8NWHSRvjPUdZhsYhWZYdAxvrcS4ZuXcp
sH03bnVTU59NrDxPuqMPIT1rvlWLm0hMSn/Fmlg0CSj0ceW0TA9eFHZbcGelzhqOI77r+VY7zmRN
nrXT0cBYu+CJH2HO3mIP4iZ99yUruIigMBkL8T58qMgWg9mEhZwAOdM7HE9oYYi1bvNWMdLTfj6q
lsSXwH24K0GBLEuXMC2VqGUgBiYSK6rISVnyEOcauLsNeVKHcQ8di687S/t8xMec+/W28gUrqd1u
jroJOsZO1E8it9PR8C1jFGGrVGoL/tw7jZCkY487bbIDtqO9bWUc0ACiw8dglJHIPh7hE0sqP2pp
xhlGBZ+4gtnwK4FpAx5KCXQG5AFvryIHIJlJkZlcFvFGLodmn8nf0pG6bSb7FF6bRn4NlOTVKVzx
qQFXcWYBoXcgrtgWw3ghO0zhzzYOxr2+quVoGrq53Fs4/mr0t/dvfhVDTpvriMbGOrFF6UL+LMw8
h9e2ZzrL+SoWeXWWrNIv9zPXxjEwlmzwpZZcn73D6/X3FoI7iNSH4/g5dV2l5upVSbkUxKFaOlH8
bgAqFNcU7S5owhGX4DAG2+BF2YwoWJHbdwPULX7VXahjygL8xjUJNk6PJ6AEOXgWSGOq4xTa6lIS
s3LFy3c+oT8AU7U0+aWtMWfN+/vu+SAkhPB/reY016R6v+Ipq/wVULQ6ZaIWWdrUn9q9ERwnu8mH
SurL31DAuhYRWW6cwRjgfmcJWesKsRPsYq3stzyfa1QycC9yzJX+CJ9uXWLhjeV2VNG8W4EMMpja
KhcvI3U979qmeqkI4xIV/1vrWFdVgZnfn1z5ku6BfgvI9GEBgQj4UcAA8TBYnIjLKjeH4BsA3Dhy
TBEDF2jKZ2I6mavXdCJlhi5lnAdFusa5A/Yhh+gpmLJQvOongO47Zon+RnT94NqSLP1spJjgowzF
1pAyDL3nk7iX+5YIEwYCVQe8J9KINYb1noK5pcVPrDERoPAUFNIAz9hwfW80c6E1foDKFvUVJ6b4
+OnfhfsBP00aopRvABapabZMR5rmtsXpGZ+EiJQl0odxLDm6myMl85D5OfiuaGYltDdoRlmxDcvu
LVBIgzcgOjljLM7vdKZpSWx80MMbigi+Gzoqkg94CiIoPRY7m7EDubJFljSlfsF0wpQT761OoiM+
K/X+EgxCkHBV3lLCy6/w24FRxsKcxja+ZdihVK8dsQw+lpA+rpYCeWBESiBSmtTPSxRPUugwnXbe
z7R6F58STE8glSO55Ll5/TTZVkzMelYCx+kgShBs8YOPfDJcnYaYKmYPo/2szbtXM79US/NTpHNg
uE4+QjUefKvX6N48GA6oM5WJlPvKPyedpqF6OJJZe4gFWdkCla3HGo3gWFQdPluadcW5rJSSipnr
smiBDHJNhnxbF4v4e5XZmSynWGDp4UuwvJm5fmQOREeD6SBFCOkPavDfL163HwNTVnkIQm7f1Zuo
duBDjFTmSaW31Rpn8RVLa3BicgRkCX5nI0XrDYKOBWI/bH7aAlgJQTBKKrnQ1692RwJwp8kvZ+nV
CBIA62hvkfsocpknJAs1XFiy8NwAnH9maXlpuqZKcDuwIAd8PfvIdkCjgrRLWdESwF1B3wpwS92D
cT02l+JHjrtAv5xV/6aYhBhH3lSCIX46/ADfzsHVDTqP5lMZh2GCGVlwv7PhbJJIwg4jXglkIzmN
r0yIGOcU/+AC7qY7OQSIdSZ4rVYtNAUgXjpFvq2PYD7sq+qxwRPdtHv1sZdypnMeNzi0fcNJ2OAG
MGepFDsUtKUDSDAbMrGgepqBbwBUSu5zvm7GwW0oxuHiji2NWDGKNHWhxKmgRKpgh6SZk6ykR86c
GPGMLxVSOilIGSEqensCjoP9CjKcRUYWYdGq+NgLfdnCz9SnOn+iv7yvVQ+nsWTz/R7Wxt3ooGG1
gpJRkN/XqFrF4mzfeXb9OTTsPhmxNMtpRODD5yQ7Wp/QleqoiYaeliGSoPgFYRCjGrZTK4FzeU4l
jAC7Ry0gGkZxr61wkI1pDBhHpNyfjoGLuCPnIktloVXJGuC7/iDCDq4ANnfzes6bf+w46feTyXAj
3hwtYemlw0/aRmhSPcXQhjd29IZM7sqMVViBlAWl72SIFTpucDD8D76BmTRYvYIutbP9/081TmsS
49opgaDDbGCvRw79PGk6pVkjU3RqcI14FqW0YxNztdlfTHrSzrjpmRu81aJqa43NijPbBEjO56qP
lXYT39vFbAFejt5mHmMUSRVT3XvfPDGDELzbjf90pWFmNx4b2P1OlHKCTQiH68Lpy/jEHwtiau0F
BXzsWsfyqE/GfGQ7+rrw8AWI8n7CczAW0HlLEODzRVvuXJtj2TNy0Sp0oXj+ZRQRuc4OnFp/Z2Se
/zHufEg/KXYhXMic/Wy/RxDAhzjYfzqcUJjohboOwdw3UpqSeQ+SMp2/n/4Su/g3hIAvyN4aS2+b
/TfCQnbpyeRfEUoMpehAkS23JvvNWusWAgjMnJyAEwznQ+9lI/9vgexwOrZoC0bktLl058Nrfaqn
aFMrHGko5Ku0SHDgFSgMKrcP0loBr23+tu4n5nblOGvtxOF1KHUAJjpmcdelnTbEsqdrC4uXc3v9
pMphwaEONE9vy+grn5i8YpsL4y71an6Z5dGmV27cW7Sq39ajqnu05OVa2DBWY0QUYJEiGzIkphsf
M5dtMBJt4huWPrlmi0J3Oui0g8qeW05gHJzg4x9IrOdFNujsnoK8haaSTJas2pr3iiIznRJLqwmk
5KnM7L6/CLWOhHGYZ34eM5MEgmCnrUk6vcZVgYorIz2YmlaAzUru171/AT8zIQaWefKbVrxqtuy4
3j/4gSxY9wL3+FZg1Vyx6whV2uckiGZrqoK7cA0QL8AQNsvyH0BsnkZJ8Oj8WkBWqZghmhqC9P9R
K1EW00dHeLvOydUjVVbgyscEfG6bI5TzIq3uFx3fvAUp7nU590QXfJYyZqDRGh2CEknsWaEg11xw
mElIM/kQbf1kB/jGGs8jUpLETBzEBTY/UmwhuDMHC/6svIUvg5YodjwV6E2eS/1tqkxS60V+aSRp
3WaZeVyjiI6mdS+iOms5yIiYH1JUJkmLhwANDDDLvvBqOz1h7ytuVqLkUs4ypmplgYxn0nFY3WJ7
3nJzTjVXqfMOR3IPgroUaGOxxZscaOjTrj+fFSqDhb6dd6rC4Fu24aIjO8SSiaJnzZ81ei47z3J1
tzYHkChhHGMNbY/AwdGW8nMMBeySI9+QvqH4YthYbu7AmDO9M6CW6sEGFFymCIuXcuyeH33gIEeT
7mIvkV5JeZNJjAo5SzSfGsUE16fDNQXIKwi8SH2RX+AgPiPYCQE7RjHLy5MOTpDh2d8taSGZTrfr
aRG2L6ewcwYGUgPJ+Xm3OizR41odjdLrSfhWsH76ZF+2v80jj7949P6H+1umgYkwCR7EHFD+mF6a
VVaAnUOoVJqHu6gqYV77b89FsJh3bOVKaC+E+Nt5xIMzV2BByfM1phSoKYq0RAPfw7riuSuh68tX
vY7YFDNNMWJvwZfOCra5ADfE3QqJQWgkhKQtsWFezycaG4zn7zcgjMlT0aecXJc85S2O8GZUWTzd
p0YkHLKw7QCnVRTY2msuBQySfFPYfyJy/5JuAWN3YdzPsKccvX2Amdh2SRLr3C2uWASdSfF/J1eH
t1FOLDVykwHT3ibBUTu4Vhf+35RFZ6WrXGS44Xg3s7ci8HehAh+cc1kFrkpyudqJa6YH42M+w8F8
IoGGlnp/1BHKr+VdcdxJYEm10gtmy4CzP05ZCkt8MvLJOmdKQkVeSOIca7/m8zEYxUv9LoGCJaME
HJHJH9RKVOffD8nwHo1cggwLuWejGsLGAF5Nbqx3vjykMciHkQPQroGeiMZK9t/0kXb0JSdR7SbG
topYs1nIlEagt2kcgefBZAC0362YC8k6kBmmyPfSIktfF8aXhqcIGo66sYiS7wklwwZPoIwNhdbF
6ENmtbrUG2Nsld4/cv1uLueUQ/StylJpUsFNMcn/7z64XnJWiZxzuqbqWyFzHYe0C+2iDvQKp7bp
ijmdxcn5j36SVHu/I1fPRn229A3txPq3kAuMkrMk80q4tEUDnpCogsBi8qi8k643siHrWVO+/hLj
MQBg1bFrWIQL5Uy/YsoZZKGDvDbWTrNfyHvx/Mvv49EmMFYbhXtq1Xw3fm3FgPXEimQdZAdMqZuZ
KymSpD73IclGoqTxdZJdUBDELwGOTwCtSyz+zbTybgF8b2cjulM3WN60pQOqDG3QOL64kRejmDmq
u1X1WVjz2ekWEML+SwE93GX9ol1EW1l+VPfV+SrPhB/j2pIQZX4L3UNV0X/zods+jibEw5VXe6/n
bQ3dh7onYvF61N4XJNoXxQvT97HoK0blfcSrplqt7C2VR13Rmvzkimls2BQMIod56eDqkxwrrSkD
NXCUoZTPq6pRIzZR12/euP8aTeFYCE2nXHs0A7t6IdfbPz54r90KJAk9C0LAa7fIXFDYZOs3ewBS
0EJPuB9g90PBaxcIWe5h9VAtPMICD+etwj5G+sep5hpmAV4rnnCfFIDgdH2BUNh7Tda1EWeGCuLC
NH5OcZAN/9n28YVyUy6vJ8urQBS2ukXc5NslqrVZhXA9UPH+IT2M02ar8RCbNOtVfwpwvhNJvtyP
TuCF1i2sMD3ACG8vTzEEhCvwSdWUETS9rcDeOn8nlg1XhYBVEPoMlmOqGkb+bHnpl28HjP6vYIdl
AROFbzYNJXNdAVQannu3COzLFigaR/RsUEB9N8gU3KT99hFRpSGWb/BtaTRajaStNACCZTi9+HIe
evOlW6almlUlWrXO/1Cj3kC25gcrZVbbrbHhGK8TbVnTQjUR0+x4FZhPEVrMcoVsbqANZSRFpOU3
ZNfELJJtKM87b9snzDeZva4XRWsyjNCYl0orRtn09To/6s4VAd+Kf+cASUX+MkEevHI9qrh8x33c
Aq6ebX/wYyAJAEU44jzXfpTz0pZCgy/41KI5KS0PlSVcN13DEwvtkDrSzK8NPKhEXQTY+aOYuNWt
UnTGy+XHt7zDGl8CyBb88wTEEkZ8ieN1NpzhkQRPH6UoLvlxnh4R6pZZGZwyMeb6ghhPdGcE+6PY
tQUHQQtVmqE0sGZPXaNwJo+Mdy68x4MlPjxPI67a+5WIbk6daxqNZAjW7Mwy4CZqjKPzsQkLRYHS
tFYAXTtqlU/7ZEx5MZbHwI7nBMHHIkq3svU3LIbhkbJrBWqZDdXkIiN0ktHeJBgGCZVFRdaLgrks
QBGcSlGL/e4OxNAuNdc6N3eTrWn4rTklJq41riWDD5nNimFJPuOUF0ZF3qqjo83zs0EYm5BzyLcb
SvazDLeHJkMCMgvICo9QMvhiHqQJFJIpm3wnag7Zeo3EqJQtrDTtUrHV7wEWjOzc5ON64zswjlMJ
JZAniwM4SAi1ndbG3rrv5b4ErBIEinND+vx+jQsvF0UfZdOF69xq3kMVYEBHbp76L/+cnPS6Xr0B
04BQX2I2ynzehtKBLi5yU5N2S2sTjPJDxtrV9oS2TMNe6cMFFZjoosaVL7F6fYsbH5bciuvYH8ZB
xag16s9fmhlc2xZ4AiOvE6zZuj0E+CbMMTdUmRUV2VYLNukqH4vT4DET3M1cUBbCEir8yT5kLa8b
lUfroSv6WL3uOoX1WZOIuOaxmIFkx60TV1DkBJr4OqW6dbgI4PCBMARsVgOl6A6Ds7zAbPFGmsiT
DumEZJCmQBBAhWJmXpecuemshQJjILj612+lAy3qy3ha375t95GyES7YYkwYO2bUggfck3A4beJR
QsbXDorKjtMtnWzClVNgLna1eK66/p2kWUy0+oNrI/o728+2C/PeQVhWT/ykdSmwJy4+sGLzQhnQ
upr+a1Zbuf5MwRDgvdmeuRdy6SfSzQ4cG+F3s2dDhaq4WChAqBqjQNhzn1DlWfyAyngWGTktZEa6
f2aX4nhZfMhlCteWTJQMgFLhoCVkWpo9kHVUMgheJhWNlvhR8rh2ykzqfVjTD7+3RpsfoBvsEB/0
Ylb41pn8lUlzZAImajbfq6Vr1cWOIh+klBEsmEV5hOuhQNNuporzDUUNlw0hbZupoN0Iu6LxB91f
YVjyfJI62FhWHw3T7qCGz+5sJPdQbCb0PPJESInkFlVRgGLCemPNzXTErcsEBJlAP6s9I/qCWn67
P9prkVEgapnndOvk3I/7h5i94YsXaI0psOVtHFyeP6E/HuPVpbdiN9G08IKwJhmLxqpxBlEFQvjs
TM1NOhyVpb/BQ396dzImzVO6AJs9jhPCehRvLtWhrzXjAQAw5XVmF7fFiFYPTLcGGQlK4NTjpG3X
ddu9rT5rsY7aLBcjazzxiIrW6D2O2Y9q8F1Bj6zovzu+D2yr6dVH19WDr6chvcLnNzxTKYwQIPmQ
9WLnTcxHZHEmSOzH7cl2K1cRYc9mdM71C/YEwgWWFzj809Njca+H0mIx04NnG76P/XBbh6enuExa
aD6CkEwGZNBi6DBQJ9pRdV8ndx9GfEU/jLC8UBbDyJTM3mYEihPoSdF7hP5JFQ1DuSAeZrA4li75
cRhywDJILRNqRVmYWwVdtkFffVv/Eoi7Vllpt+lSnjuwZhHQu7qW2r9P4b0oTV7yBXKcRKNOHbUn
gN4muCH9RCtbgUWyGyDDCa5XfbflwI9hrfuc7dVVfaDun7EqNjx4Nw1gjyVp9ouIST5cQxKj55Oc
kgOa0OEwLmR0avBFkA2U3wS3K3Y1VEgEdfLPJ7T1pAuQYxS7xp5C1nDhJ1PHhQlKwm8yzymWrpyJ
nvspj1N79mB/pBP2nzVcSSe41Fmk1R7wTq1Vw0/cbG3LUE93fLYzEtxZoVF9wAuu+Ff2UUmWt6tK
0Fxb7amtWjYjBfYZfw3pc46XDEZq+k8bJNP+xxmuofywGvlqBykEH+jEbt60ZebfHyDnuF4ag15p
48513RlRDCCaTdIRAiL9nR03aM038bzHO48ZNSYsEvrb+Psw7cRwHmnKWJ/AJZHN+Bv2ywwytRyT
QYlrGHzv9eNUEl25qy4jTRd6I5JlP2TQ/nrprSFLAuOkLkfiPGk7br7mP1H46mMrE59A2DnHu5S1
ni4ACTueNO2ZZbg9lhIBNLumjMASxbSq4QRt2V5vRyfIN0LM4mxPdU64yf7TbLd7NeWXef7IlfxC
96/YQ0caowEMUtq+KlU5bP21WLzt5tdzK8t4ckEuA6gowPiQx3UsRjdm3WwgRbtitz6rfe5l04Bb
jO1FFr//NhLRFOTjXunUC4bYfR8BIzdv1CKL9flgfUWxHouo8kGBRTQA1o5rwwA2vbUXRwrop5tp
eNjPyrjGB4BhzxYDzwrwsvxV4mkhekiF+BvFQN4XZ0RUk5JljurnFXm+a+DucsLghaZJaYbxHaXQ
dIbMc9BI2kPfhJIOYaMUwufi5LIzPoWeRiCNrGiceRnP9i2FA3oSQY3+GljxX2io8oC3miQ3Imq+
EesmyrYGa4uqCxJ7zfNOql6S86oGjx6Ktur3EMWxIcscAE63ZPztCeQKLqUe3l00/9leU6GioadH
lWcCoSLoPTQWAsWzXJuFyJeIlu319eTOBv2iDXGW/VEgWTNXIkQpfRIpzO8URUh0kGiC6hXCZIKX
dZSrjKaY9IPG0dvBWkfYvDKH8vl6fsmLdVXUboMzAgxiWgjWYXb3Y18ACFjKLFq22AwjBJTlZCxK
Q6g4nYTV7Lh3G6/BanY3edG4cpLPMWEePWqi14c5y38KFIQGfFwZyd780COFvZv8bSZ9qKOPTC1v
QtEOnENpMl6zMuIPFBvmEKs73nFBxE2tRcOXAwprdaxCuJ7FZoSRkasStaKh/cjtrbRVlJ85Oy3p
pZEw01IrZ10k6FjN2d8FtNT6g8v0gnuPegrBMUl9hpZ0WVy6DzFtpkMDeEWQhKe3qkGwPsTHWGrh
LVULGmahF3lmB0Ky2LwNc3xvSrmCd1UqKXQ8POC89Lhx3iV2Zbph/D4Dp2UUr1b59+antCk0uYsY
CwAlfXl115Ix8kmO/tKvRuziX2ICSvpwuYgywqAV8iR/Kt52OxRualclfIAGRtUTzyELgtbDcKk/
hjqMxqc2cYTj3JCOwFnzagWil3RO/oQjWR7GOIXOseZtiNmbDxeHl/QEz6QAgQqFmQ0x+I2KN696
bRbjCJLgjz34Kju7zvBszZSoZKAwYKLlHHRvajPdrRle1eogo1uMM2IMzU3CjPYN/rgmVe/ziOc9
gI1MNbJT5w5OQJruDxgcyzIPIFQxsyAIAImzyvbEVG94tYtHBiu4tgi4a98YPR13FYYxK+KEd+P9
wgRLvFsHeRnh2BRR34v6eaEqMafW/omo6IOOI79TmwCE5nPK8ITJMbwnmyDMHavnGNCP2fD89ZVP
KEgUa2znk1pwkRKMnxjzXIHg4ZI20d297p7FvYI9sa7XazxQc6m93CQ5eh0F61xejtNF0nxpFaCE
7/EcUg4xS74IAX4t54wVOP/ZagIr4LCikU/JdcSUHZFEhUQCMfd5vniVz/lBcznzx+0RAxrtnrW9
zixFJil2VipBUfreXm67wL72uelhaLYrhxg5QUB6PQtpQR98l3LWJ8SgZb0u42RmiOLf6S1L0/bO
3J18M/sj6cgh4pd89JzSSKVKZ4zfAtwk+JcNKB3/7WE+ZFJsvALSDVob+SWmr2O6InlnBu898lyV
F+Hj3KVXWBZrmeixMPaZdsn9AezVyngGT6pYz5uoUaIomnqvAkl0CKiN/NZ8uj8KJTTp5ZWqK2ch
jVnZL+bUGjFMOhMb59Qa+Vm0HVmiXmLMQqTWi1SwY14QozVJGApZZe2g04a+8LUG5aCXuQJk4WJE
CENXWhEdZpld3V7jq/S9S2n24dEcDnl8oXW2sbaSDAwWIcKclhwRVoDS6hbSZhGadudQjXZx1IGP
pQnlgyljk3q6aqp1tvT422ChfG259ZGKQtDkRWDe2W2IgTtky4UgSmxsrFi/96iNwrD/cQt2v6y2
9jlp4lBwRWDsT/8fFoJ6Gg82vjtH8VnNgInpTv9WXOTPk4qTh+urERIrum5xwnVQA0gqIWoFcaqf
IDCABxuHPt66pijJlz1No9HRpaEThMXMg1QFYoglRt1GqP3yGPNc2zmLetcRN7lLmy4Mm5feUkes
CJnzx/VUdFmX/DU9ovbLwP9bDIRiXN3W2c+JJP+7I7sh+X/gsz462iSsvtnjKqs+VwNbuT+oOpYC
+gXjApxJJFTD4ESykSeTuRt2ufR75+vmfaljIdX23e0GGdOwucy/g7gYt9VBptVtXSC9EmZ/jGyj
ZSzDvPNG8Rtz3CD08GBsC88WBNvX3VeOWMrOcYUH6/vRDTgzYxcSDW8yHqS0bl0teZIdcZhaFqk5
SzImRAYVcQfnZ/pW7Sf4MzLULpNi3mk1VIJE/PO+n3UZU4RoE0QYFeJi01RwMyXttpZmVn3ivmmY
CNjioBMMfcdueNzmd5e06qrHlGr+fXg5vISSLqFKDV0SFfbAvocT9TBQdzRkX7tjBiwjGH/fJT1Q
qKERRh0ZMw5b2sE/x5SwRysyJPzufAS8M3IbdDGCpLFSsynSTyZW31VWMqE0XgS/P7/EXRKttqsn
d2k/R+NdECY1jPwmLt+4HcTH+Dj9+WS+FS83LJg9hdfqRO5br82/26VTRRtvU8gw59cRYbRE7ptY
umWWdaAqTvmtKHbkn6EtnX1LTDANUTxfJUomlQoF/nS/MzFCfqn1aicdwcT3Ji5b6ZnVlk7cI72v
8XZbKtGrwjk9gGwWGTAmS2myQANDVL2lRGB7jkHVB/JYC3InIkRq7x41ioL+VP0ZqNnGfa876xx/
pXIvABn1UWwLmrG4GwDWz+v9S3iiU5+SstgKcLahC1DVfVq2pilhUQze89Bt5khO4oiZB5WQMBTz
bvvxvRZsamdrCH1o6J4tMoHKP3oR+mSkVTabqmUxaNjhmqvnTzYqSHAWINsP/w8ck6UBUOgXkqXE
DKxlVs5cq5U7in8zJEHtEpgIy0RymsW/VGe8YpnvOE8u93OKnV0rb1nGA3oK2wr5vajDZ4NzV0CP
GMP1L/B5dnkoBfnsB0Brejg5H6kiXYI4mhSNg0agKEmT3vDjniyh0nljabw3vGLJVd/0yQ0pA7Fa
aEAJe5Lh/dX1M7fT0bPX5uHiJsCwSm8253CwpJJDx/VTjomuIz7X6dqUG17yXn0naqagbXh8DYC3
tKiW/Hy8HzrHahCcon9azWq4K8Ksi/0j+uvZ+DHUtyMPQr0GwhWTP6Ck3RWFZ8AZUaah6OudQivY
o4NnUEetr2RsWROQrR+sMI9j8wb1WekFu8v5RRQCg8iem2cu6H3nF9Iw2T/5hmWZgQuaS2fbTKNt
SZWDH01UDuqeDV6MbgjB5JAzUCYbu3zhQj6IkCWSOONQmAyJAN9oqItqBOY8GR29IqnDlhlCC8lR
olWVNYt0ywoXHGlJ77zBtsK8/dL9W3iRZdPnYF5RpzxUmmrXOAZVCtLZMhl8lJCxfHYCkbu44OaB
DVn2fLkPxBlm/kr2DtPIqxlvz9sQrX5t5vG0Sqe7VFpyftkTff0D1/RXdSVYC+oAXFhiqf8/BYxD
4fL9DuXdc+/wyRTZ7AnlnE2Flnz/CVFAUTUyLQEdfpsRS6GFTZbjeH4kdu+o5WDw8ygEPWqOYZ6p
qEPuUkWNY9GJvtpVHv1ZNvfXuWS1oPiaGOVhzmMgEGufnD/LEt9r90SKnBrkjQWwrJIZYxd1fn0C
MnODcwV3DtYCuj3uThuAHoEOTkIemvXFlrpmh3jGgDceV025uasMOq9//dYq9hqNCg4Jl4V7WWMD
FtKQVa2uk+LLRRbY78ARRY33jY0oLQdCT7z6PO4agmV6KvFWDZ3oGpSuWD78Ou14Cwm6ernNA1Vs
zAN+IZyqNYaoYysi51wQKiH54piSAFcQYnfVRlw0qf66tqjV75CfnAykBUpSVUVO0H8yrMy+o2Ge
oEpr0wivva5Xfu4OdosJei3Seb/lZWLx0959oyKHmbzye6GE/uCR1Q2tW1f4VNw+SHl8yCIXAy89
WfVVp/gMgKT/OihCS3AHNW0l++yZ/xZVo8Xh9vM0Yk4Za35n1z5jIMln5xEkHhbmQg2wYMSCCp+I
gw/DfkHjEH8s638rF1jZb2Pmwe8w2UT4FPpKHgUUHAB1pO7977yVQPnNr2QXwpKjOLewaej4ubro
5lJcCQSz6SA+HBBQnm4a+1B7xw2LbFq15dZbXaL/ocH2Xg/rtU+YJJKs6gIZZXkQ6hrzBGQ9q0jF
xJbVmRBY4tBl8l/ZTUnYNDv+dEuOCpJS79nMhWtmjaEvljT80qGfQ1wHxmV5jJ8s+hwuGUZ8I76U
Isric+oqzMEc5J+D3yA9HToBLVpV+7tBzOfQ2aqkrtislYio+sCVM+dPDNWvic1XXTY6bMVfgkP+
mPvjnfZZBpOQ004CAmQbL96f9cSV+1E6G8Y/Nr8hMi3Kx2526WpYaXA0oSSKQE8WlC8PB2zZ77Yc
5pOeZdt+dygFyZzUFeHXF5NT8BpAcQ7UoAN7/kTynT0jI4wmxdW/IjjcQizVHc4N3H11zWJVAqeY
O5ZwswzSXE6Pe1uN2lcSONoCIy630L0fOsigB/ZzfE3tJfnozJx45A4OzzuxKYBBglA3w4/TnQab
9PjJ4+sYd0CEiclBpXY3knDSsfreJBlT0/WoBai+rxtpNtREGJ5Nt3anG1iXCPvawAfZ3MiMj/8x
9VDBDWS6fHUDHtwwBYU0JWwyvAx3pzcB0VR0iAYc/aCJ5rwrpe1n1BaBYlnWeuob8cQMWqrxyPNR
bSAmhYB8VyTVUcjCGIcI6Uh5QIUFHIDubcaXOOor8ilEGoiGeNzUY0r4PnHR0HYKCdJ8n1EHciD7
LTPNDLvsX/f6AwPpHqeAZNHPmB7NohSKJ27Fmq9VfMgMq/wTCnSLMEBsosVNk0rugMwUFcHzLU1T
qfQ/tdvmUkFHFcXU+3go8fHouwRm8BUQWhRkBBI15oFnVZ62tGSlGOc2gQTSOHKZJz0iNOWazlyJ
OKOpKlHJCp1xk0JeyzIJlQBpnacKVFPeuttHUt0bap9KL1tzkD1HZ/7hYyBzwiHnKrT+QyCsFcsq
KBh5oYNdeyEQNLeH5OVW/J1ViIANGibskNr/eqR5fBbQvyzbMa+yrTu4sRRgvMIgQAmq4DQWNtvX
hHMUqb3Hhu6KhAdSwIQMybPmc+qet7gPeL0gPWVKAIFhhWbhKrxeJQ8TfsO6gsUKSWrg9K4W5Rz6
jmHWZ8i8+El113a38qZ2fv64Lp3QJbQm5dsD8oupUt5KfJ0nHJMlHxi+6Ya5Y9ss9zFjtTSTZR6I
D57DMZ8fkNmvnvJBADhMYgwTFjhLgFo8z0YLNHfyxeHaH332GCA1al/2kU11rHongUqOgJypp1db
O8dFv8OytgS30SfBQLOAWlnnPGHhLZgTHuGW7Z+Fsd001Tcgr7reO1UKUZIBSIRfaJbXDSUcgVlj
JkeoSO+2l8axsWNIcZHLN7o8Xkoae0ST+MDTiKXYEb4aK/e3GNVrD1Hc0xqEZDurgHS30ORwQ76f
lDz7cluZCPQs1wH8/E/clmxFvF/+9FHK+Iy48FbM9H5sJjKmD8mf7KmEEWzSYjz1vXbloeaDUsvE
g+AOzmKc3LF0Q7uzZ9oYyqFrXywLLp16opJ+FbIfBVRz8nSAZqeDVNol4YAD2k4i+OGrN7ZXcZKY
NDIrX7/s3trJNPlD05F8Bj8RQJrtrq5b9jZeRtomZ9/lyFf8zjNmHGUsdTcCC3zgq4CZh/5oacre
1iRL6stQjRQ1A/GkJ+RI2sXap3oYnXztU9l1W2aYyed1L1vRBgWjY2GUFENiOcQiTvxmFCHDgXjv
BgAJNaTPQO2WsBGthtKkk1L1WEF1DvWHkHTeQQd7DqZt9lRBgxASOmTu+ZSHxo+RwmBrw/dxpxo9
97HURUhitktcIsJlZjK2C5P+wRQOEOIajJJC8GKPx5ZEMm9f1UvxmCK/tR0ALCMnkf/CEZ96f7y1
k6q/xOH2wsOSmTdOGLQh4WB6vc7gxBJx7qssQ08mU32oW9avV3eGEUFposuFrtjeVmdVlkbU2SiD
bI+enIGbQI2G+MdoOz4bk/QhdyLiRiQesfeHNPz75iqj2zyfkvmSys3SW3bv1PWd2dfD/akhNRti
+2MMLEulX/XCCD3lLSOruTZUwT0yfgrWB19bnujC8VQ6XevC6YO6NODl0kpEpUlB7c4yzua1uQEf
CDnYhnyHTu2LRXwlj4mORaklEDuLRYZuHlWcI2XZ4j4QhzRbgKmwk8FA3kPkKIvTf5V+h/kr9qTj
HWcw1oWKyQIEJmvFYiDA+EpxS8RthzPa/8/GBnypBTc/AS2jxFj3XhFmzYAF+oAWqeZbfAwJkg8A
qiB/MilFfy5TlzwIHxO74Pf5XYdBNlFdM+Hu8LKPry7+He33YOfWDPMDCauM5ihsCHR/d+9n5K40
EM6Rd8376RaouS9JPnygjfFRD+dgNKFG7um6OtWLDF/Q4TGnwKtOkf+QzOulUbRgp/e/fpQ+MmgQ
UGTaaVCi/a+axnJRSN0dcxHlc4AQ6cPieJN3rDmc6bnnfKfxNVYk6A0lvGNyTKo2vNNQln9u819r
IF2z80k5kNrzYMgpJLXcAtlR533Zpfx3AodGqKzogqZemthSLEd8WOSda2nunRTgQrKaE7qOzjKW
w9maO1eddwGnTFm/jOwGQSOUb+jIv9VeccNRAWIhyC3vRLM8lXITuqyt6REUahKJ9i/M+YoLI7Gn
Rxqu3zqdxdUgmtiDWKqZeoq7AP6y8CMFb4OErQMc8jD249s/ZuMmdORyrzQX++Oozc4T+eFsZtRF
BWH45kLz6ZQeU2ShT6BZh0sTyUkqj0N5ha5ma1VpJ9nHZJdppiukXRrsealUF9HQgLvg+5dr9nnR
64GIouDUfyhPG+YuSjeckPts+v3IUJp9dZ7mdwV+laYRNdbYyGFmwBwPuiIBmLZiwSAQtYl4vqZq
eQFy5OzYw+VsfI60RqIiaUY8lR7h/Ffqa5lgvas987CiyvJSGQ0rrk/3qvVmv6SV31bxfEUwXNoW
nlssvL+5DeRXL5wDb0tfYkEFfuJyoReC92u+I1DV4qH028OvYRAPzcM3+5bcgErrOKf87+ArWZMv
rueYiVe4Ps3PuXcuMq/ohwORBu6TyjrHOtzh/5UjplVZgnTVNBu9j0u+95wThgVUwBw07JNQAaAX
xKDpgB5yugOej/1II1Hp2D5UbkyEtRdaaP6RVwBfAp5PQJ1SPZN/EdLtYwuzJB6hzucrMOa3uuJy
0vL/DgErdtg+YCedkTrFWNz9EI5v8tF98OtDW9P4cPt2kjfawxGt5xRPMT0p47bxkQdAbHRkfxxH
G83tr+uszhwpGreocAo7kAPSnqyNDET9wmzBN2yPloFlCNUbRfmrzE9GFELqczGC44MYujTZ96hb
nAOIb4rEo6Wn8+XCt7TRMOMRu5ui8FeMZnevcoaMIrZwRbduAELwqC0GLvKzRwv0qMg0SIqLBkXT
l0W8VObnyQGrn3ktlAt+GMAOaOUCVQsKHUUIxr1LWVshqyoTArAwCwkfjetH8+VaiSZjggvjtbiQ
shMZX4p26Yk1crJZrCodg1J4Ntf6A+TAxpUJB705GrrRsA973D2UDOi0EFZ+vhbTBYwDK9OVYJW4
iTRM3WuSM9IZLmc5WyxOhye7zJ52crsr2g3MHO4yM3vhqwdTBocKXq0mg1VpeWkhuUYOwbzLoy3K
BdyNu2ma5WN85yxE5LYhtYK1VNdhzBySrkYUG9ypB5OWqj6QpvP4G11WpQaiWhXOGBLHt4Uj9Fr/
Lqc/KAdgEX/xz1YLzD9UmXlYTnYtMr465f2F32tYmcIqeoovP9Wftam9pDnvIi6LdqynggMZKDol
V+Qp9tgNkjUJTv08ufA580pEkq+3+28oifVEVEpngbkqizhHQGOaGVZuNqT0pSVE786IOqf+VqfD
Zhrd/P+joHai86W6Ahg1uKwPyRa24BuxZT0C1PVGK0SaO+CUcSMpBcoBSUycCmqozZzaNSo8ZYZs
G9bM705zusKz6GmIpZiD6WKMIp5STW2SuiJAqMbeIra+kbymQA5f7hhGNjCOkac9LDFiYLx2c4+i
b4NH2/k4wx//QG0DhkzjMZ4KY6FWPbBkGxngwSecTPCXszkEjLRaBhP/joYrZxddECgaqg9UUR6w
DEE9nOiTFRH311HqTsPRN8Dwlh669maYXuKo3kyd+72T1NafRBF0ep5j5ZBrR3p/L8+nNi5RoVwx
fzMYm8O6sPteeqZWzxjA/s8BW2WziroexcrVMpz1jn2ypAws2bUa64IfEjbrhCp0IbzvMsFxNtgX
9mUXuRmCZxytjLz+ksS+2qrUpe9Z4RM18iuYkwTzNz2lodtYMAqvYLDPZnhGhTtOa6X47qlw+qLp
k6vl9tSHJwOl9yWQu3q7Om0k6yTcjqhw9ih5hc93YewmDAKC7t1SmS5Tp7tP9/ShdjWBi0cdd5Bv
h9KHAZxxzWqqvHwAh1P3MyCzgy4t7zAdmRC7a7mOgHV1DO0mI0g+4Y3BBM5KVzyjEjb8YFy/zypm
AQGCwf4jOXlq4UPZvXGFM5yudBaU2b3jd56Z3HVYIZaFNrRCyooQHLD436ViVWNdkRkbiA01pNbf
r4NAWiUZgpTRG2XbWhpFpjhd7tS/wAf7bSXpnskIqrQOWpEPa8MWqSgIvgiGqAMgJEMtXsPO5Krr
B6f4lyfl7xctShCXtb8ISKnh27AHbIYgYH3t8VV0VpBLx1d5kP0yI+vTaAq1VmYCyCECNLkQsQsY
GJQrQInX/ozEDVkfwRyPp7dIOXkxeF3LTdgiHgIxh0uUJXDz1wYt6O/7XNeXexq1nEvKgV27zY9K
cLbGsP8CND/U+Vci3sC8/NdJLlEiJvl1YkiuP1eD8kMDha45+aHwqgZ3E1dYroPzjipM6xy+/3Wm
wtTeKvif+jC1p5X11xJ6tG2YjOECwHmZ5AzqIF3ZFWeSCErbd26/+qlOcmhKgbJVzKzy0yFkwNQA
gU46JvCefSGmDqOzzEYoLJAD6M0rxN5IyUyVvGNe3vkKewjFMM4qqe3jpGOgg+A5ft4gnVVZM43c
b4vl9P7PgOW5ZvaQnQCbEVpAZ/knRUoZvGMWo3kzeNcjVW6P9W6JiWYO6L/ff3Pq6G3E2Gign3TY
Yoj5ZuDec6bAtupIoF15h1nTusLLj4yAJc9PHbfzhoujJtn5gGX0D59mJESzYoBL1OakbI23ym6/
xMIXlS70eYRzD1ddAujmiFUugPP1bc1HGFoMbcSQ0ePG9+a6H1J2y8V/nVXe2QkUBbk3IqwUyESF
pFcAWJ1fS4AScVC+abg27tYK4cdUlXXUxt4OQvcfhZnxPGVX2khqSCgJZvIEFsyFr8zs3kaltHnS
t0PhEMBiH0F0c5XKDB+e0G60yA9TDPlYMxViw7fzWGmMHWywLMfywD7rug3+hzGgHh1PzRBRZUcA
U+e5einLjWWTtLsR3HHnH9+qgaWTSSl+pKiOF/CCMPOKW2+lX0RW+jAnaV/TbDV0bgE9MI2ghGtU
eZJxaAEIB+07lGlnO+Nc8jNeSGCtceugRAh9onJ62IAQHbDNogY76wuypafTPNre5JUpx+OyLrvd
1mTI3kQiB+IJZe2mC1hSt4cSKNKsX9lwvUG98jWvcqeElEag5HQtJxYcD4fi5VofZEuw8/dhowgs
blMH5PgXm+A07wxMBK+p0bzxTk0kHb822sjFJH7y1ZWhNdZO3yIrRkQqdkGtPLGHBofpobbQH/J1
In7Tc0/eHBhkURFZ7HltQnp22ir6ncSEXM4GYV9C+mnNzddXnl1cfQdBx3PXypyBoP4XLqRzvsLy
TTiOUomJ3mnxaObARi/TxPa0t8w+qOhN+cAmah7Vr43xhYl1695WPiX0MMIYoi/ho63IoIWznpC/
t55m0INXn0jt1vr2ld4RGM3Hxe5u7ST7ekMW5Uk54TdryG0DpOO7VgYrZpHCAYq9HT7UZKs+YHNo
GpUEnn9G77HPU4eAWPw/Iurm+qOYCmxBarq7ZgfmHUBaixq6onxj4eTyu5PSRv83PUGnOvVo8m0E
ecTfcslvFtf45rIwJ9uWsGR16h5a31GUv1p17gJrQcRhLEiSprxL9B5RL2qZud1FK0mQd3d3wC0p
wYkIrr6vzsTyBmBEL78bN5d0wkKUqphicV5ku3tC6N1Z0UeGzAujLkOdcDj/2/Yjw6eISWo11pWW
CXycSWIq0PCo0+s47v59j00PsOL0vtyapfA6BrJkEWnnwZnPowoAybkECtOGh7pl1wkj+bh9ZgyZ
5N8zWhVNHj3dAwXqNB7C9jiLVPecyDToWdjjLD17LC5CnTWqtY7fxUKgyQn5bOnZ/mtVqTJhecCV
PzIbgmm6VaLabsdHbNRPpzfNqlFVMcUlUm7S0qoxTAQzq4/L5Sa83qsGCLbqdqyYErrbKuk6cZ/C
ya7EbibgDIePV1YKS1jNlVbZ25OwLO0rlCA6N1ImuK075fphHF+TmHJyLlvPw6C6mbnjP4tQuXVw
QmgfFDC+xCnOsa5HQvPwqUmAUi58/Mnn0Knhx+l5//CgLyevSV4GDeNjVhujHBBY9hskP0nkLigD
vuP8MTC7IM8Z9rE3Y/hpx5vgmAD69kPG1uV1ni/0l9G3e1W2oomZGXRb1LoCXj5NaV8X12DrGuDK
dXRgFnx4bVnFFDjDtytMs7blQNUlPKSzawQySVTQnyT/WjPfmCHG7Fx0Vd+72yPM1H1aXPQorGWE
dPctYnELru8nYyGE6/3vWYG0onqjkmmI4lbEtXA+vOvj2KyKQDtlsuoH/ROL5c3Y00s0ERsl7izA
K+socRZkIsK9wWbRzEsvL7cZARWJfHslTdaoQ/AJvi1Liq0LjIxtW9+1jQUDFmsQ3o4CDGtNdPB/
Fu28QjV41WZtcSbMTiHU8M4AAgJx0lSk7biBJ8pOHyTozeMIzz7A+cpGn51uBBFnCZ+YgKDVDGDh
FOhgdMiGx8hs7RQoVsa5lrBnR7xO4lrshsjQd/Ml/RP6vpPBSR1INOu78HB53f6O1SWVTEZikygj
JRgAZmyHdiZDp7j8HSwkzLDhs7YP/rkVSNx3XIDnJaxW2gmAXsZqSoP+DVyg2AB2VoJu6npmEync
DH5fQKK0OZHvqao5/y/n77UtfP2ScvM1cDgLyV+Kq/skI3voGbJBvpbzbcLppMuZeX0FQcqGewT2
FL7/NuZq+Bu89n1F1fdEf4NfWzVFjxeKftxbH1aa8Zn5GLjyfihIZQZyjQ1vplWm4DQyWt0bp290
hViLlcdgmxvqB12NRMmxNsVWb8/Lilx7OB5vM0sul9lVFoTiitfXJNIFIaUl2lfF72VWXg1M68jC
oGb9LYBrjiNEXi4N6Y8jUzgrpSRDAL4vCaYctPPInPZVE4EXpVaEchy8LRFSJ0Wl/Ui40GO4b9m+
lC1EYJ7KCrN0fvT6dQLI+SLwOMFhQ2uhPz0RAqTgE2NGHfYNVY+9IsjEsvauP5QKrUj7KIRVt/WD
oh6L9soJ/ndcS0lDH2vts3YfeuRkRcaOBAkhXZKMWtVzMa0tvKoyIMWXs7tHwcGJ558lfSjOv5F4
3YyYku02POg6F/UrSLS4M9zLOvON64ioHcN3sVjpk/NfhihgvF5t13bpVYOLrBf8i0aTAqOqMABZ
wRQbcqRzrELP1mpOFT7lygZQwfI4eIZ0OxlMmHgO+dQXXB9rPx6QPBjFJk6FbA9ON0LaI29C3Bfa
7gS95J4wilHJYGbu53qlHUUJNZ1Ya86zAar+PcW0+8hm24jMelnlRtQbZXKAfITJd9+/Rsdu33KI
YZaPCGCcr5STQP+Y55KQ04v0exG6sqhbyWmoPju3IocCYXbHmcc0JQNOi1qrYZfuSZCfXo7GEDtf
mGH4jMIszSgmO98A79r2eLdWaf7yW7RmsOXSGRYcx6/uzBwocHp2whFVVK+s357kgjrAVeW6/U46
D0hd6LRZ2a8/8ac0CdtPm2PC99M4qm8OeYcOQd6OQL+cWkUPdlXoCGNu3Mxfmuc04l0fG5NCqxx8
WCTt5kasNqjYHb2VlV0K+RuyD8Uz3v6Ks06S2KVFIin2rsbcC9j2ha+eeKOfcaskXphK4ijwHXhm
xTj74v4XZFZHuMzlnPv5SEt/7Y+QBY1V/YTzw8gY7fCboJXdTqWO/Jktf1fcStGJSaxNh0NZUoAm
0SnDEkW88rwswtSGAdQmVofAKWsBd9/AqVNiKwmCthr4b4ufqW8zDYXPfht6aosRn1sGU2YSqhBe
IYTvpS0QGkswtLh2MRHY0/5cDxqO01OqSgOnxgzQF+qYwjZ7scoiE49K5xuykfunRqI3Rv8iTZR1
JrMlElwgshKpM5OBBWH5VLe4sFAfOIGm0C5HrBN9RkcCsOd98A2DvVvIddyplcJgknNCj++dfBem
l9zz1BePwB20qlUVXETVNTgGk7HWsgD68c8gJrnn3A8JUy4hGcboVMjsakiQ1Ig3oJXUvQeWfC3+
55XXl1rf9XnwK6KoVhcWsBaesVJJ6hCo2NgiE3bYOetsYMrNwZIFwaUSYU+YIcJQ6Is1BNAv66Ux
XIPdjiHr7p7rbN6eMBJl/pEhyQs1hs0UPxybACOZrBYIExb8TIZT6j5fi3d2nu6p8rE+Oh5sQZfj
aZlb2ff7AB4WGUUcG5gZRPOClsdAF/bnJOVyRSIei6kACJJYue5ge//ZxJuLtjmgmRz9CHpMyb/E
nl+LY3wwDQZRvKdjNc8aYjloBFNf9vJbRXteMWxjYUo7FDorOYv5gL5neVtfkTE9PfvXNj73LXEI
U4c98+3ia8ilZnIbLaBYxjRYLQ7zO3t1KF4dPWh4EnUGPfIcwmekK1XKo8rvN1G2csl6u5ev0Qps
lEglMdJzuSwboR/5TQFL4o3E0vMfOC9j3w69fKq2mR4sYCTeXTIZ+6jq2gKuFbDnpPofoIvSVbod
CgDHhviqdritlK2JyLVzKEyi9wxU7f0P0KGUfVONOc0srMS/POTR/ez8/IL1lkchp+ZwQCQOb4xh
kp7A6kYYJfvh0QIdDtnJGyDfcEm2D45bmxc6JK0UI7jQglXQWq7dUrY+vJMgZvjnNpMJaVWV90il
MoKdLQkeqvYmCt0pX6e+ARJ+4LNFH9IZkNbBBgrThJj64JD7g+ml0rNjerKTLpTFMK59uh6VumlB
PGvMWVE21x8LGnv5QJdZVaIXfr6vo+igkK29dA/bVvPUKxXR3sDj6pPGl3BrMsnEs3TNcQalCWJf
Cxq2/l0ebDOLYwWQR2vOEWG540xiCiY1lMeO+Xy+BzMom7wdRd8W1jb/FPJyv6Vei9RPOKxXjoB4
8H+eP/Jp5ySDZGBMGhxB1PG7PiIFvCY6mZu89FWF7wN7yS4aLMiPqxVaIgcRK0E+l1umR+h18h3w
LNMMF4V0cGzQ0NQxp/FTpKjzPfu/nUWk1shkr8gm7HXfvQnZGaDg993zrwZ+QSPXymeAyAjsQdeH
J1FfCqARfcUWudeEsLkcRQNfhcD8JFLaObDOx+fFrYt4EHHWYl2r/w1IW6sWh4FAol0fBD+5ydMI
9yn4qODkFRUw1m1hRNqwAsEXIk0qNcRm5kWn5B0ayhPLdbA3rR5JxHbJwb2bdD2t2/0bfxvTITgt
Xc5jOLtA+Fk4OwTsr/5xkIF+qe7boHHz077P8gtC6xPKvvER1H29/DlWsk1+Y6Hb+OGRLX8tj7Vt
N09EYRoy74L/6EFR9Iltq5KFgbmsNRvgHRGrHkwSYofP7B5ykYAYb8sSXszLZWyZc/wrOOMEtUFG
CvcZOSkOxzdVfCcoogR/YnVA3+LXvWfwlhej0wyuxwcrs7gK1X1atkS6PQi6qkhJBJ07RU0aegQZ
51FaCNKx5JhhMk3Bz0cGN7lIzjvj9FrUzZtbVV4fr7I4t3oY6ZPff/0cpAF2rDh7E3EybjUjchXD
bPtlQ2OcOAV/ccXe29CDNtKbp3oCvVI7pfHT9gqDacT/b9q1sHOe0JY5c2MIyQcp1T4AjoulpryB
LUO8/68nH7YcJ+4bwu0cMCA7EmJY+kzGQj94/4FPa2ZP1ydqZfjBjglbantp95UxrKheUOJIWkH/
0ara6Y/EjruWtJqiadtSbPhJLjxldGU2Q0uYcxQ44BM9IfzVZuObpc1d1lV4xKugdy2UDviPv9U2
b0iL3oyRPSO0bzXoVSutG8cVBiMLX9KnfwD4xxmke90h37ZxIEYV2rmzy73QK6pGdA9PbTQagSl+
kRhaSOyQqJZadC6fOYq+HCMzaiCAPySx9ZcIMlcEA04wpX/olRs/qDlEgapKo6HCFhv/sibAG1au
ACsMv6QFzfx+0+04BxXdyrZRO+Xsbna5s8CJslBiEEQYwQSBxnEH/Mon72yZLOE49WCpquvbOUbc
Y2mnzVvXf1/Gv/g61pNyqOYlyIeE1+QXzHti4XCDWlCPei1+UWU3kSpGvY+GyjYfhm35R5sFP6V1
QBwicZqkLQcn/42KDkq1wsoRdJWLQev+MpcEHDpsdgd0gArcFPpkc8WLIyp+QwUGIu7yF4s7RSS6
fVssA0V/C+U64nsp0XvQExvFFJDAS6U2nlN2aD4hW310ZSM7yfNO8eim/VWvB4B9bZ7fEWhoDtqt
i/dpizPuXmK6E3yUM6xqPq5I6alYLBOR3XRHVuLOPKwsUWggtxqhcNzyTDOLQ/HMsnWjv1fD4qCu
k8QekyAo9nLq4qfkfW+xDcUexgHjd/qp7jrnG6+Xe0h8M2LKhGKERn1eHoeM6mbE+CRIBIc3UyC3
3Bpkad9/emP3qF2WLprFXw2r+ukLEHbbfSPisjVwbQh5ECfebrco6Co5M2w302ZOzckF67O/9JO4
3MC3SyAb1arP96o3uUCf9jxcRHzLPVBr18NBaCe6TbDTqlrw27lzfvAd1tsbsNE/DQILGfbgX18p
hGcJG+UAt6Fi6Rhp6/D9ytw/er2+Y0iCCg+fHqtwbpKSZWcWMutUVTmoOfAlV3EGaAK2+rQ5Agmi
I69HZV9gXfeEcctuTmx+8X70bqJ1YKQxZjP8b9c5AToVX2WamQZSpJdqXK76dx2Tu2YDOP9bhOh8
WJPpRlu+83y4AEvoiAzZgNlOH+P+h49sFSH1wJJFj4j/m4092EAaHVTJdnjDbUhtucKDIt44pTr7
bNbaPQfnktt/BUN/5DNO6V+H0qo0WQz0uHMSiGGCUl4D4tO6ODPK001n5AmDZdjUlEkQReQeUEPL
elz4BVOcBCZrveOoLITx2svkpTV5BtQvrE3b4nyREXoZtawK+SdndRC7aEwBLqqzt3CnroswjRx9
OZA/lFUfCgM81B5mSykKfIH7oSQtdVAPNGhV8K3boIIylIMAgNH+rJFDJwy0iZ9SyLn4h4FTNJly
xAeNbp0AGX4tkI3GbzQaP9uZs4xM4EEtuekrhxzAgAivEZeGWqBKFLQ2xMBBkO5YX9a7KQtpkyZO
L5R+j0QYnrJsj+h/RYd2tPAnzvQs+r75Bj4ZCFvtFg5UgoAiZgDCgTGZG9B61twRAsQOGzW9TyNJ
WjSoMaV60YGcPw5a7diJmk1f60+w5CiT/fMDUVnoR9LteHdfGfvQAmIrrF/blijCE/PxKpyU/In5
JCyvG3/pwLMruiQsdBNerrsSjf/vh2TT3lcyGEYPC+YzmF70BsYo1+Die7RZ+s9wBUEBymmt0cgE
6hqm4PHbk2bsK8iqxIYSseeN0adROSYWU+f3nx1aeFOPCbsrP32P/fT97nv/wSzJYlCcjRhVXSrp
SilQEBmf4ghvJ+LZtMonCkIqC0qlE/VSs8lVaffj+gNOnzuFlJnPQaOAb4TgREttao84TIKFcYO0
9zO3A41idP6LEmyHO7C2mzrnkjj63gP7w1fb/UmizLTKGjW0y+3Y/SLZ1cRGVyJJf+mnyXzPaotZ
Zmjoczh1VIl2saPNaUcXzbvjXxr+gdBVqrs3XOC0jpHuZZNWsvsdt/bZfiBoi5kDs9UWsp2g5/t3
CM0w8WVY/t3iiAdsZrN5hWNSvcx0AKelF7hqY6A7oCRZub6VtFHAX/YdHFnauz9eO8yuW02IJjgG
p5y6EljNBjKOJUL4R3t9iLz5FNEbzt/Gfa20+1GAKiPP4ua9BG/3F7qNLij4rxhuqwuGxqy2k/4w
hVSraIrGURHbVfWsaYVXwLXM0rLgsln/m29ts/SvttaldM0UXk7gX/rAjgYuyhZs6KVItPB1WiFl
WXAdiIg/hyAsuXSWBCH+THQ3nZ90DMRIQmqJ3gF3UdGQ1keWqyw9Zk3XlanRrGEtzzyf2tGNUSj3
ssdZkAHTxJxxBHY+wLhAV8nBDpEvigqnjsZ8Wxqbe3lEifmO0PVz6m5DkjfVDFUCAfJHGPMaXbV+
/hBK4DlDjH7G3km3B2O2OTho+RB5EZPvsStn4Xb45eanukSHQ0YTUR5JzwMOjUPLKMXSJ3+vMLxZ
7AI5M1QyccR+aXSMk2fMTsamdACVQvatMZ/sdDEpVsIMjsj1FV05jxXuRDjKC2KGiVG2TM1Fmtk4
2t5ciXonIqoewh75wWrOETrfLDV7RKOjNQD3zwT/20/HMLxfirZCx0ZFAnIkFBwOdXqgRzyRJamu
AzWmVCWbRcJ2nBu/+BO+lqi7SDC/tExeJmqEXB6mQ6/JRWj8x+TRKDyFGfZl9I/9rd6ONYgsS2Z/
d65O7mLha7ILOU5TN56COJmMTPztVPo7RnlGVw2I4sZt8rUOVPhc/8WTSuU0a4FX5ab3vAOYNWhN
ZNRQ9NAdXuASlSaOpIb74AVJpZNHWLzJUdWShBN4zhTU2Om1+9MRG+4kViWpBc3mCYYnsCdt+htR
0q4licjSd7Y4UB/nz5fmHTu8Zv38hKirC6Ivzd0oKwMAzIUSwkpCazzJsIr7xv0tYn+wH0xui585
scV7dU0Tv3vk5twSJKcTIFbhWRA9QK+MotWzU1c1jrv2F27WmbYb3MFr7Ih4/g2qPzg/W50GhnFM
1s3xGajtk2ApuXe1BPv4UbyK5zZ5VzuWvr8LLtRXbC8PRBMbERu9DeNyDM6DaMeFyrr9EEsqHg55
UQrd9YqMV9TdeLfMetE5tybKwEodB8ECOwTrtCcENZE9McBBgTUgnJockCUVRqDLJEY5OXJ+5VIZ
YSZ9XjajykomFO6xJC/tp8v+xAGKU9OSFE8i5wc0H3zUmPiz5nV/9JOAjKF3yPkpOu0Pwos6yMIc
AeEZdjNOXomgOA4at+/So3gpY+yaVPkvftrM1t7JIewpT33yoAYLorjUz+9jnpxYFBLxAvjQd40Q
ogA6l9gtvb5x3iuRFExCVZJO828HVsPWXmnpmpIzD1e7mTlncjdqWcozcrrqSt8ua4CdDZBDAozJ
9h0tYSlrKXBTvqJIpGj44OnZiF3E2A37QU3dCMsO1D7nR7WGFKx3GFRKUJkC9uJrEsUvh4NN4ouK
6UHmmg2t2ni1mg2vvMZnKSlJ3WF5PIyNr2leS/KgrV7iKEWyWco2oEJE5k1qntjAxkHM8xtm11OM
TG8CXZaRgKDdWmd+afYs/v66vnSINSPj54XLx2vL/8Xu52nX8gjlCTNYu7ddtiUh2Mtg0/dv94Gt
CF5h1r4nVjAaSqfyxTwBrsCoGsD/d6gn7rMxXmSvo3l+yXnzSpXpeuIQvVzM8bvlkpzFXVCkz2U4
G2tkDR+IjTJb8S26tsNJE9KE5dc+jiZJFes92+mjjqZO00T//FEZ795emo6PXBPeOTnMV7MXopQl
Adr54nLsX2X0cYD5rEDsrwAwUmeMdY/AUJuArwDOSUY+be97IPtLer7uJ2vXWBefI5aqyCcGDOfe
fMpFbXfB+OmRtsdXXH/M0jlFMH82qBy4FBiXZp/Rb4Tz84WAxTvlp0N3WRZzzTQfm3KnUlSHmWS/
BlDDjKFTyQ51wZQ+ISbgOS2rBBW3+rBx3sdqod18r88EajOhlx/f7bP/rm9sSsN45UZftLLP7/Oo
N+TJWhNKsRmyZYPBHVnIay7eUnHDXAJqkr8m1UDoObgtbBT352caRanWQUiqycZFtGvaUpCLBinh
zN+EpkY5IDWmpPgRyqDoG/Y2CY+HkNC+1unsdp0E3OtuaW37Y8CNqvUAGqTLZfZDx11LoEErphhB
hJEsFIAjJmx7qZSnyDTQIoPIUNp4hxvH7rzrjrl/vXeEuZ6v4ACO02cHfFjulqqIl+edrxVXJe6S
UqACchTi0iAhEaGLPYTO9bHdaLK8OjNYFlBMZa/960DeRs98E+DavaPrw4W11ArmwJvXmVTob4No
BvKA503yqaTwv8Om9BtmKvPz2EDMhoTjiZUGH/F7/+axm3ozn/A62xeWYXB6h5HENEGB7x5qiaRA
rRptjSOpy839dUGsie8Gz8fhtIo43dDgG1Vtcx3eWhfp04vZD1qyGrMUynQFkgYTB/T2Tg1hzG7K
XmPGtoS2FtQFGElMZjv63BQNxBcuDE3ZX0ua4NYRaI5QNv1Tb6ppEutN9rVRpm1jKsE+uhzOSwMH
9OPA3bPkIPZfKP9A7Hz46K6TM0BEieM+2yrYj96MDJWF33rRVg3Vmpxs6httm6l/fu9/Cunn5Z4E
hXs6C3WZHbFze+/GTiYVkLaj1fpnd3syN5En19ne6A3nXHEJ0uHD/SdHnqTYre7tHQjkgVkPiRkd
q1d8QRZ4hsw82YaVn/bKkH/Z7deAXvBxAe49hr/QNA0YogywKyfaCjRlDadvzz9d5yTJzH0SrWm9
M//X6nuHrT/O7R1wX8L3VeXBTr40/rFd2Ea/arsMb/sKu51uAOqa3/TQy9vs5wb2Kt8DPWbio6qt
QzUhqTzwfokE037TQFsLjPU8V3szmjjdSqaJa6U/Q8m0qquhuQxUXRyujpBCekk/dR6QeppH7BzC
aBZHg2VTCK+ShoPKvGR26/S5NDVcK0Fj2PZiqfPCIExNAeJtgqNporuVHFdueuEwdQSgGwnnUUjJ
u8nK8kzdrd3rksqVXfIUcP5AGuASFoUMjg+fkoMQhLKwrghQdrD1e7f1UjX3UQ9xjR6IvhmzblxV
PAA5Q8w+TZ+WaPLg6SP6RlE9Een6k9xXcG2m6TXxS3LjwP39RVrf5fba1XZRNDIJNUNmFZmKppTh
q3alk3FP3wG1MBltoBxpCo0ZBF6JFFIXM5Y3muJeouJ4nfxSXYHijv/uPhlPdCdXuVgQNbjsWjXh
rNw6bhvgF03wcOuprmrGWwlcZcqhy6Qs0z9MXJWNMdTHRj6oRUSvYkHsao+/isCcGAaeplgf9yue
tMXZwJTS/Rf+uBUC+q2W6j52T8lThLHV6Nb2d/HGJxzxNd/zkji3ozNrSvn6zfbQSHW0lQI8jjQi
AFGwBVyOeQvUJdP6BSEX4N2yeLSth7V2DJ2SXIv3wZ5z6GpmqFevkY1oIJ9mubKMbgEFBDz5T6Tf
6iuka9cQJLH3APz4lynt4G2V6K+crYDMWHMbzllNNY9Nxv2EvuPRNKdm1yNlJkR8V5yQu1fy7LE8
XU6ZNlw3I+em06zm12HbKGUE7nSMAsQ7Lu0PlRO4tlIx0L/0T2BDXGf4j4ulenYKWarFluWWYDAG
0wFjWBOCnTyu/+m7TBB2ff3EQydezV5qFM2a1A2oSExypkx30Z3w6j+M6X09gK7lnSmWQmbQ5PdV
VQ1QBhcM+PFlJLb8LLVdkgmFy/voSyDPxt5zOt+Jot8yrl0MzMUST5eFVbOAtLs7G3mFyZNQuhcW
wrG9WkrKButZQRDZasFGTnV3MJge8dlX8NXi/OBnRi8LXtZX6Cue+pdScDoRYRTp3MQZM6PNyxDM
fHwx3LfpHtdyUHYZGc8X4SZTF4wv/b+lCLltJoSuf+xf92xvaF3SbAxfeNn8IGdZtmrA/Oq8muQ3
3M6rYszMhldoz21durGVydv2xBsa53amwUxaFuTtXqRleJyn5YY5cF7dyajLsAMB4UVrGbGuGFCC
ELoEwtkQS8X8ZCie9i5dV9/K+n0ZG3eDzp1ehLCQX94XqYVtii+J/JbCYOQj9wQ06TZPEeiG3zQT
kmb3/l+L2UzcUGVkE1QFw01TYzfvyYaxSqVGTlaWfLbQ8/oicz2MsxJybFWxKUU12v2G60sy9/WC
AV8/jewnUdDQ8ZFXl6xL8SJNgzE+wdRZZXu2/CP5/93jmMFXRtB89ydbYqiuewguvuLUMlXrq5+z
oAm25QNdj+tFvflQgnP2ZXvcJUeUh1DvdlPGA0Kgs3bnHL+hcPUHZLiv8wvQTzoiAXufqbgFzfYn
OZr45o5pqKiLKLMLqqTZrDidDtZdiVavMdcIyHfO18IFUmSGZ699+rkJnzTMsN88nLp7/jYrC3Vv
P9TugJECHwd4PFayy6uRRfqYgOTpw4QDYNvtKSQMd2aM9DodpRj2ntBzgW/AMNKotJ1jpyjO0BsW
SOrogCEWjiy6bAggngy8fkDB10pTLl2CZj/sY8Y9j4QSJTCMhQJeNau+MJph0JsL5bTddTmcr1ma
gRmGvxdyd79LsJ2gWySZUapPtq0iBk7KEIh2296wwsLLV5s1gF56j0YN02KCCBh+zI8+azVYy4OR
YU5V4No63QVd0HUWaM3x3Y/HHjRInnQxIK+1ZJNpNhk2/YeTMbCTs+T/ynrEFPbtnGfD4TVBOWgj
mwo1nCBvkVT0sQkuOlHYi0ppsRBupEw9yOZhCRvystnzrYyTE/hep9kuCmUS8ia+UviJEVU5KbRb
N74DynpRDPBjTsiwRh9VhYI5z+fjake9akcZYMt2VR9/wTXfaI9f+P6/BsNs4ptgiJZcSodyQCFC
rIp3gvWZBLvQzCBIkYzpmzZQGeWc5Ss7ydv5v47act13Yrj+MOLEYQ4aoQx+1aTRhGkcFDv3mCeq
w1xXAqlZ6qiopseEX86aClfGlYojPkImsN6+HdF9NGADHcgL0Y5pX7q554Q0hbY4wrPLYdTUTRb7
Cnf6TcHnPt1IMuCiEcEbxp9iHKrR2X/s7VM3HwlKi+W/WZbomEmgMfgU9qeX1gQu8qXGn4kRl1dO
ggsUt+wT1dsyGGYwgWTxaXz2EHsTRSUS3HbzKt8wP806T0f5zriGGFEafYtXC3/7MoDa7psNS7qZ
Si5L9F64tZfcYm0e7VildTnAvPfjz1IwP2E48em4FnCE+B8gij2/7PE7mBMpAz97Hy487gC3fB2S
Ys7pggv/jcQXR/FE/5SlDiWwbtEZrmauV7WDwOM47E5FYZGEEU80b85DdIywBW7Q4S58yegphyam
Jd1BoSQj81CeNkcggMVwEBuHHgY/dt6V7jtezYc0An1fhk2pcgmDhxVzerOycKeqlxBnkun+Q9yt
LOkGMbVKtxX3slh1Aal5x/sWkFmS5N+4bzxkVhrV2+MVnbviWCuGMZ/9BwahguvZVwNpkcPzmKxC
zbLGP3jVnYlVXfu5w+FC9jt5tpx5PY5xNpa0OhzWoBFyEhFokZvBFsgYLnTX5QNO7wSXwb3Utkv3
SttNs/LwqkxbNsjfh+PLENVqz9tLb1rST2yKZxHR8VLAxoy2lGDMRK7Otkp6sjuycrdDfjxAm963
tVKT1L0JLb8E5w3+1RUAbf1/XZEl+moqnkZxQyNS8A7rwhfqJ3QnKoq0iRGKm5LjpgOf5uSuQksJ
9BMMmNDQDaYia81AvnqjnRgfC3Xcl/52lhszOXi69/s9ENuawEnsRzlgUmjoz8IZreg/UVbgYaq5
Pdu/tgfZwrURQslu6eeQSpBRFICl7ju9OM2teu2PkULNuiiLHPku7YNN+VvhHKlnMgqj5w/nlJuk
XQZPz5S9kTDtwCvdO1iQ+hhV40HcYIXe+TEYzZZ5XjVp+dt26ZeHNFR0OL0++pb5Hg21V+GREjvt
6FCN+/Upw58u3TmcmzkHnmalROAYnbOZzwejIOCdf1gMYS7SbSmrgjqeXXo5XloqT1R1ZkoucElL
FV/QtpUVuviALWWluxpu6UwBIugskvZ0mIwmjCJ4CBiCxjRbVmits6lehQzIdeBLXRoxoC05/ufF
eDvZpR15z2Wn+VL0EKb17CufcujIhh5xa5r+VxeZ0gxVPjolv2N+TAbNdZ6iH3vuyvbAcgSVspD7
j/0futqC6fiytF/exRqF+2UCrHOh0mK9mzitBl3jEylSYFPpVYyqTI7xpNwqncdlzIb2ZAuoeZfU
bvDeYjdoz3l6kcusqxbPHdyyy/7Ypo8cB92Ua5l5wneXQpj2ry592UREXi6wBt0VqF7SmL3o2GgL
9sOYLLIRIa/DEFgtolloknvuwtigmh04lNfGN93xvWdaEQByLuuyWIRiyKaanhBmg5QqaZmhsjLH
v/ajPhsBG3rUMJJaEIDoFICpPAwL+sG0ydoCy90uNU9PUHGM64cqPFmlJTJ6aksmHXfAFG276E4L
pqPFfA90uSeV0h1Jk9nGM1ZoXpJ6TH/mZzUBQSaUwZ83a0Br8QuWs9OwXfWnzcNhclon+NkJpMlF
87/pIkUeI710uoOM3y7D2efaNDikNkFOniHzWZfBWP0VYZdSiz37ovoa+bFBIIT3ZePh5vssf7qC
Kg1njTilE0wnCHpEONtNGpHhrs6Hygs1onzAPpuwSSp4nftNAm53rY0zNKfGbjsTvFlBeUMn9Ksc
gN5KlEvdKzv0RmL7wH9i2Nfm9tl4leWN7bf69p/7sT0vYtUExMY/bZkhiwVHcnWnG8dC3//6/U0k
P1zxdYT0OWJlNc3qm2ARlo5VdAF6DtvoNrCU8vSnSDe6g+58+a6d653/izUgYQyZh27ji6de152S
VIB7umhK0QI4Ld2l1amHb55NKWZoJejozewSB/lxCDhgGQ3n4q9dmvHMfIazbA4oXCp9VjhTxmQJ
MJXpcyt5AHsGmoTjOsqxUUPIryjbVfX/z7rI2D3i+72K22sQ6NhsmrXNDDRA2eDQs/g9SiNMeEom
tUFQzsbSNJws4OtGURyBtIKFV4bEZFD1ywPA4YOlDiM9MScWhLezk0qZND5L87IRePz26IpMkZzt
ziN/Ci/xEw3ra7ygCvnEOerGs8fHAwv8wd6w67bvf5pJLPXvczrFIyTIHSDgCEvyZfa4MnVqq70S
87wHE0NM0c3iRF7HLyIRPRT7QK4t7UcOsohCoryZF0EREXb2ZVUP5keSc1iNIkl2M+niI8jiPEcE
jOcAV9kxUDz4tDjz5iuGBpgIwHDH8yYISBIHwo1PFFrTYRz3gea63EziKpnM7KDUZi7LyH1YW5UF
VUggFSG0w7/NB7WGsP+eUonJKl9JouHPLSN5XfX6ZpDqGK5zxJTxlrdtntweVe7nBT0B1BsktY9j
2LUyuzjcZavKEbIRs/AVWob6MZn0qt/DkzcPSvY2MWIf+ngYjyReE7dQkDRGXSFOyDMH2UtTCC4f
oD+OxKeBrcqzE5RjGC/fA9oH4GtXpVqp7ZIPjv1ytjTnfaeJhbpF60IQY9IFJXAxkxnoPvPNu0OP
XpfIn00hPNQor4/U5PeYNLkUcGxXLgnbO+FiruAiFw4SkKFC0ZgTZFba4J02klngR9YBv5A+nLO/
mD5+/v/kHqlc3tHsj9RIE9aReQJuTrRMwO4dPoJISkSjmS+EI92hrJVMuse7Q0gS9VLtNFPjMUXd
sQ+VDlX9jNne3+2ry0bTYIXAjz/oMUNXeRXsrcO5AsY/PLj+syYi/1N1rq8Sb3fVwdPBg+16k+1I
TOxm49VRaoKGtW7daH1SuWpm3717JgN1L/Zy45QEei4YXWchMH25aKgOKnxup0fCMn/r1Snsftja
MZBda8lh4eucz2HmFvdVuMhheQXloL9hcC7BzIr1spJu41D/FsvMbJZ0ydEFJylwQL0+tBBzEnEr
gJffvye51DWbRfSybxsPU9ISJjywLeRi6RdnjBafBjZJ1VIO2LJxzhcahmAsItLzk5wWIBRCveFF
OM0LpPTxNgSyJ9jF57kQymD7K7QuCz5iD3JxJshSlvxHIxXGuIXNSorTxrXAN2/JvowQ9dDbwLLU
UoFgAVphAQlWuKzo3mcO47+sYTsM1sPMQx5WrL76SPWl2psk9kp3yXo9N+QyLfvWEzehrh+lWQXc
YL2giuvr424xkc79D+wws7blk5OewAaSTMmB1c4fhZ/1pM0FXoppN2Ecyfxh5aggcgdjhKPL31cU
Hyb1gQ80LztwBxxBe33D75Uf+RywA2Gokb3esgapXLTUYhF7quB34U35cBSixqbVTibhW3B5gG1x
SIuy4c0rDQ08eHzbOLTb8+s9RvjrCRBCSARumhu5JqLt1I1+TOjIMfJ2OfgmpgvPA20pfW2XFC4r
GkIM2N+F6E5joTssT7tnNEarEMbtsJxf41VAw2mEyDHYdVbAzXh1c+42XADNa4EKseL7AwEQ9NJ4
ReXxPr86ZXaXkjXtC+2vCoG7L6dNVOozAXz+n9yk9kho3gvNt9bjaFJT/p3tN8ZhawyJQikfnQup
8G/9F3lTPQ/iSDSO7GU/8fs/n0wAU3nAJ/mJ68nMIrrWZ+i+vpNZjSj5jVa/B2Z5aLc8guwO7WjO
/qFB+XSQf5klWSF32T/XpBPB6btuug67HclYF9ywX8LjBbHlJOI21ZnOpeyYqbBqSSlMnJ+hFzgP
nH03uD4KH/F6feZY/WfP8cAgrwSaajN+qzkSpWrukTZfqVnRO5roEateFGUF1039MwQ8AoNHGGBW
EWGnLPcD9KOPvIF2qRQ06rx/wW5na9S7M+b25edZwQkTukAwPZDEAXfPduCk1j1rtQt1vm7vRul7
nh8f9hA8R36aj2PRpiWmOO7XDnKmtGaFec+yFvkZ2a/KJSA2fm9xyJxfuJgp/P0xv5LcO4k25sWJ
JFGOwXkc70b48FkUeMwXJm78uk4buSHmp0HFBAsyjbUWdQ5YV05/cf/61rD9O2IPZDSx4fTvfMIP
MdmFmkeVFKA+ztfC+TaVDvr8jqwJVVOdIXy2BXGAuUpyDt/rbGbr6URV1WyMT6hxZvArGNKtLARE
dj9OcAffkEi21eHA7U0MGmAMMJj3XFZdT1COeB2YCa+kAi8ex7Z5KGoWJqqWmhEoBEp76nu1+gHm
gDnrWbd3h7IpD0EN7X6k25S1xA+pa9NN3onpU6Ih5quaYNcTlLtoGWHoFwK+IVUwL3PoG4PGs5Xa
E8mKC4jaHK0Kcjgban2BjYg/HeLIfoV0iuWn4QhREj6YkVCNSAOVE1WnNVO6VUtLN3M4xtDD8xIC
OayFxPL1Czns7nXhcU4J/0c9GMbtKHc+KIARXWIPsAx9Aff+IW9kxFam5yir4IlnNF4gfSuBCVL7
tM+G2js8rWwWKIz1oKW+b01SU3i5GNVzBeFuEQ8/PJobL5OOsSmVLRYhcaXJ11bYPjn4In1+lIoQ
Hjir3g+Zu4eo7zGhpN+QnHRVZNE2J1cCpi4SvQIwvWiX+pcABo/45cSY1J899LwvP6WfjCmrDha1
B4gp+s18FRe4dMrtChbkJmLC7qoYOKIpoYZ6KwzcZhnC0vQmkkQo79WTMMNaDUO/PaUk+UJPA7MO
GTKOLbofErzeQvjwWf5nlHpS7EM3daHkUsgykuSyvOtrMeJvZD7wFzA4md+wuyeImTmwph4H/Nhu
62/FqwReSvEk1scUY2AGrc+a1gdb4tW0S2NOsVcusBfZ9sFHxAg+VKb5laTQXaNTOhfHnD8QUvSk
QYJQobgdJd+ccyHXYofrSQdlYRLOpIoksSXRw16oeCOc5kp/hmFM610EcNXxXDHdfbiKIztrAXPZ
UjfTDBHWcXJ5+t/h8bBCiNnkmY0KgwcF225es8WRmuNlIh4+xvree4oAPN8dRync3rHPyo+TVZWc
YLc3xv68HjpsgxXv2T6gosC/Sj8PJ9X9mvtdmbIY3MTMmk793U4GdAAhN3TmT45iWkVLpfnhhmxt
nIhs08kLv8qA3AhsC5wAOr404tDxR1h/SeqUxFjbloPWJctkx8RkgsRLjq4staD4b8X/K3g/lGM1
X+Rn4s3g1hWpTHAMUlb0y43j/5z8A9cSfItS1gTS65lnEOjhFMPNaoDjE1O9NpX7Zt+ov0EnmKuS
JMsUmxuQXOmlfz5XdZ+59lj00zfu1tbiQ0RAwYae9vNBSODXQFzcY5a9QkH1dBwMzduMut6LeoHu
1ROlQRh1gtwqNk5OqiICcVz/VLZIktFnjmENJLQAqh/MOw/L5vV8g9zgrgbN+Sr2oUtW0ck4COR5
cvAMQOXeQy8IgVxh/Qv9IBWV3QrAEir4xBz5vvEcQEhBfMl3niC1TpMCJh+pnFdNLobp+wJeTyle
Tor3OQh9L2biJ6d/0ZMH/pEgUGPa4IWCOnoNyLQz86QXDzDTfzu87d90HVKCoQHOZMksM2IlUOiu
Ik7LUdaDxQqcbr7xbKPGd23JgWFSL+2SpBWO1spiRba2Ze20MuQ5ptIyNB79nnhvnNp7j66hdq3L
sswR4dsOs1r6R8LPADkjKs5jiliZheSGIExZEyFEneuI9jeWaq8Wz33Qaqo78pabs3E5nPUn3fpZ
xYT45MlrpwCWsCMYgwl6ITsQiwFP9hCWzvClBM8yp7nnO0bWdTR1MS3tf3ZS9t2akHVUgwEtx1mB
kl7CwItXe1wVdM//sbGvyTiJWRkXJUYYSUYMYLCE0ojXsTGVxAn8mFA7NzKknRiiw0f2IEMS+6de
82qw43S0D92XBmlpOJPFSA+ohDGn7Nf3o8Wbga4X7FJPq6BWkWYIwVekA8OGbmsv23JdsmTUbOkY
nI6MPYnyB7p6nEYjiSK2QN2O0RY961J5Ax6pGG2a5AUOKkf9AokRqbEoh6OG6kc+DkDOy2vAXNoM
nu5ArPFEveLm6zu2phqIh+j0ahl4U+dEYkEGr4Kom+5yVjPVojygXeprw3nwQusY237OAOfPtDr+
jAGVYfk8x5bKYueIDhLqYmm+/wRdKJ/DeKoOEjrLGsMrVhvr8U/XpVaP/M06NR7LVZPirZX2dcyu
Dj23G5JywvgrkFD39CxKkViKprUzJ/FD6UWKVWafBB2M9NmsoLwGVpdX0H4nnc/tIMp8D4osQb6K
50v8iQgic9elmHUyR9FnhZvEUbY1dL124HgkauyWRaDboNZR1+pkE1G7ra3oUa2Omo06Lp4qECdI
2eQzcZmKn8azQSY2B60/7CogIKqF9BiyzvpTCqUu+YV099XPJct+XdvE8Qplet4w1qLHnJf9xHbI
lGY0svmS8LqoWU+Svv16Kh7qJC50BjZyCXFQa0ihefhtn7oFGPn2BiSRtnA4X/XEsVL9s/4cVbqm
DRZ0L2NGWFzI63r98sNt33bYrGjm3DruQwKf/zhTuqndkzqCc3hW/bjR9wuK7IzsO3vCXU+xrmk8
JPDZwnODviK9JJ10YkEDxcpLI0YuNMHSZ43Jd6qwgRh52UjuV/y2ZKAws1bjlHe1xsUDN0GykiAJ
yU6jriZn8HCBezVm8qbE86VCCf4Tg9Q5vLN4JSr6Ibh8MmQDPAn+v1AN5ftYmjKIr4lrIx9+r9AX
+/+zxqKoMyT9g2yXplDqL0O+fPS5+2oqcLnVGQMktbzh8ny3YE3QujYGho9116SxGL3QxJWGsrIn
jEr+HqxCuwk1ccVuOn/BNR0X1soUEv1o6WhHiQx7/OEOKuEJH5wjgm7+YAg2TVa0we3SVrHs5nVs
dWEy6I7M6W4s4C9SiURX6+YFAoCsmJ2ty1ZSe5wcbH/8ZHeDTUNPwHyESWbzpUtD9iWJPhTYbkY4
zhcGkiNiG5Y4y7KVzrmWiFIigpyGP+0gtLm0ScJpoJnu0W29Eq4jN8p1a9wKmURms8aRlZtL6GSZ
D119GrC6sqGwg3H7ARa2/cuhnoU7jVMLoWxtltfA1dbUYeRytWRmhYMX8wQaluM1uBqS0KPKMjG0
/wnrlkhSlsbIi4fyvbYaAdT6ovOO2OHzlnxvru3t5FHeKpRBi5M5aDh62onqoVpYm61Nz4WMfgrW
BaGNE0beMnBWJbCyEUEn7zIplnQ1212a6OObxgX9mDC5MzZll8Ny5NRMWyyTcRWw4BjM288D4L1L
14j8zlIn4xr7r1FUV8fkH7f6WK4H+oSuxVdwqKIz8O51+kH1r2IN5HxtrJnuoOIRwzKaJbajJhFR
xIazYk8NllD+o4VR+N4yy1t2mt047b0bX+5bb8CWGAuwnFkDuHFPogsy96zaIMXpbVRYqhzhNbIK
uZ8iN1p5k8cHBkBQQCSteQVbhsIl74SQ1gD3S2lksJfmIWVgAuacp2/PvDGlA4fIEDBLqm4JFYV+
FMd8/2f4uudl4jywU2SDJirwqbbAiCCF76jZohIx38Eo4i1MtTFo2NU5O6j53VT4dMjNBqKvgV0g
EumFTIrtsB/M8qc7YDPbhRwitCDmgFXS1mQrJEFKzEReVSUZbmyTfscQCcPgCdL+p1Atoi1A25r0
ICeFIJzH6PjA2ryk+VXy7nHzyh5Gm7pDOqPTC4CvN2DA64P8CvacsfCLkAX6hfHtNubgymNRguCw
TpF/j2zPDo2fdRDe2qbEQctO4qY+tqWtQBrerapPsENOFLKEbb4JTGbacUPa2fDylwvWIzc5Wi9R
zq6WRjXlLetUFSUaiRUIKxg27Vfs5lCyBODRSzJGodEME6y33Ly3XMtYS/9w9qvJeaMgyQQswKsn
lARvfSnhJU5/VfnvPULQEDZJa9WMrrmV0kPfrQQICTgC+iPVa2YRrWPnMgMuvGlnpJ74LoA9oIkt
RgrYEkPIpLiGISFCMsY88378XzXI/8gblWzNSZ/w2Rv8YjsQNL1lN8MKOAjp178rofzmvq4MLix1
sK/zoQMYvvBrHM3wtdRH9fMKfJ6dDuUQGw1S/iFnSd0fg19aj9TSXEyWekaWwvZDM61ZFeCqjHro
4BxXvwdDsougGxg77E1TSbde9bDJUWQ8hzYFNATA0bKRhIX5NrnZNfAWiCdGqRiJrf/AK6wS5aFh
6w40/KM/w0132JgL/kyaBFiPTZUzFJx0w30WdakDJxTprBmiRJ1RHQ4PlkXgjSXePVIB1AhVkNu7
ijdtzcJXjktZ+IigcR0EwxvL3KpIXMqCbo0rTSvw6VWkffusdCbSuIKRW8SOFgTR/f9BdMVDkKLo
sjpmY0Z+GqGCk4SasiDdQmMm5khlNLkMIIb3cFfCTAldIodXvEUdwULi95QaT44J92udTQUtZ1+u
roY1/03GDh6UPwMOzCpkHBsCOTkNQG8znVgiyt5jdMwlXs6GQ3sf6Pa9FJieEvu9UdZTr9ORqOxY
o7qvlsargpQYLbHOPGcChoKN3pJqxSimJASBbVbbw9I4rc003sqfbzgJw08Zkxq2X4imWv9+uAFl
M5eanAoTDkMaxXuQrp48Qc1F7DzNCHthUb8ulOQuZpwma0P4bhLlPrf8TZDWacrjYxY2Tj135Rud
KcdTUthnLRGnJTgE36LHwXwiCJBnhUm3tN8XGnbldaCA8HNLsgWe75i5AFizdOnrQIitkvNPi8E4
63Io3IXtgNw4E2NNEQbnSJA5LqMQny7+f7nbV/3NmmGCsVjH0hvB6XZohAlxraeXaTXqQ3SFTnto
0S9nAD2EeAIfC/MdTc6xAJ+DxaNLf1FLnUaCxPPCx0v46IYZGoJUK7jAiVYRYx4ayuVlFwBtxufy
gZRlGnKbpgeS9M90UvNrd/PD+JkQnSyRmpQZ1gpKtQuBClpWyPzHuL7BwVQ1TyXmSrsUzC4BY40J
mcOta51Jth39tjaKYMkF9/8x4mz8+TCf7IXciP9v0ILSWgJ+rgG4Xgd0oQ7nyYm/sEhHLY6vuLxv
RNMgPIT+6p6C9wj8Gweiw8PaMAj7pcuXBLMGHcGOK4DFrw25iMXo76DJX+TuJ7lVFIFaT+QvRGfO
OrK0h0UmNbDjGsn9bABN34RVvnqYpAyhZTvNO1OYcJyAMX1KTY8oH6PEJNaDQbEUqoPQjM+8EKZF
W6H7akt4hXVKEj/6hB0XVzTStGJdD0JOKYwfneI7sSji6JaU49Nlo6OxO1N70LtbHSlTSl2uG1uc
w58DolBfceRAKsKMB0lSe6e53pLv11eH6bqZ4s8Upq3io1zjIriyUUPXNd400cDVKjUe60V7TijG
hUelyQjNCB+0sZizF7bZ2vkiQlke09mz8Wi5MeLeJ9FRjfoqWcv1D5tBSV/W3/RLHmJmpQsMSwdx
aQ52kYv3cCuRxSmCZAp93GcQabtXAyJAAt36tZ6gmVt87qsoFwjh00nfeG7aUP1nnrGJHGpGH5Om
BK6RDPNbgfLzg1jCYF7tKsmJ7oQAfnWgmVFCJhGF7Zu8c+3xdLJxLEfNINNurIxZWovkxEfctIfm
eZGVKy3llr6arUt57uVIV4MTyvgmA+r8t7nVDuuvI3Smv4aWm/Ff4/1ErgiOcqakSk2yNE2vbKq+
iViu6F7MB2scUuBQ5ecgNbG14G4ZZkJf8bXff5qs/3UgwAqkicwhn1ebRp50Z2BmChULHmt6MOPn
PzWgdBsiHeqdZxObwJn4Pnx5Eb9My1Dmenr4rOCUsjCj6zgmyuz1XOyTas15MBK6Z2hDbwQxxc2y
jmjn7oVqMP7RjjffTXDlpDdHUQQUUL7+VO7tRr6caefpih3nf6zBtqPBrHxEoPPuQfRRHFLocWlD
qy8qRPZc+HUG0wmhP5Oi53jMHqJCrSkFmmT9S6GkjdZgOvpVKyt6yCTrGh6Uj1vEoLV/PyL1i2TG
RMcKd6j/DsBVv1u7PYxRcXoFXP+Eqp2+m/Jl6UMyNA3FQP0r0agLqT2r4gprIdNqwi/C//mDyAJC
vZq0fDSA6z9dWLOlI8dUMBHv6VdVRJSCgrWeFJw9Ab+xPnP9f17ZKVbDdqZn7rV9Mm3tF8MwlMKO
jdD3TjvzTQUESM2C1AFXphwpzpE3YgAZTS7j0dyDwJ/U8UbGUu8sko1tfQvn97VadRRa4E6wRMLP
eZG4gZhgTV9mSZdmw24eiqfcO9zc6x1F1YzYfA81gcC6/UeHyAXzspAimLABuht0x7c+vExDlWoF
oJAI76shz/Se5iinK4ebQ7AxujzvqNClDl2g+e/aKSjUjaKePbH5qTHFNudFO1CqgFvYuYfrcH9w
fmaJlnTWAjNMYLLk4FsTouMp5UK37aIYnWW5YBh1xCVnr1N49zgUro+s1Bwk6rII6ndknDBkkLHC
FJXd6Ih+lWHoaDi9jI3p45dEvlWGU+6C6RelT6wWulHqncM/m1MAU58/SIIvNe1+JJQ/+BCjsWw+
8wVPa26dICKN7TF85S52q+/F7LjO8h+Yu7yHcZyituZH1iISnz6a/ajTUrd6ePa8BS3Im3B8+zlE
5uOiY6GAxGCfkpFePpigKi1odL9WpBVgZVUq8WykO7yJpte2Y24RdL3FsuYNSD9mp6V48BpS5uat
NYY8EzprZbKvgCBnRznpbycjxOyWPF78Cfei2zBsPqUv2lALQOrt5RwtxheFuVc8vgJeXgIEKbYG
nsPQMwGVDLCBiPL/qctv6y/owKIpeAeKaNkGC9xCt6dfEyHHnVldwPx8dok2R8VO2hkWqxAD/xF0
s5G0p+p0YAk/tzupF5vFSfDRLLVWLe44oEoJDQyipuCjUonNbOLAvf6WN8WBUFlXKOC1yRTIL6Rv
dwzHRqauIxi9oD5qdkS4q7+4JcZ2RNkaXjL+IigA/cfK/w7j7HSbD3hCJRQgq2+f4tjGbhKUjndS
EuSQur6ds0B8VOO6r/vYdaDrjDWVvkhWfmeWO0yXSdyBAPnBkt6DOzK4SbOSTyQRbTWI6t+KG0iy
ro5JYo7S2MHAwHwchuTFUSi2SWSN2wj3aftR4FzXY3w/wvZGM+FeUkYqnkzT7KO7pkXxQrxx2LUs
rb1uT9B5NXn6QpLZe61K5rlwGixjDZ38nVYeofRBTDeiipbTuWrCob+77rkC9ERUAcyl9OP5LenP
htaxUBo9g7GPdaWn/CsZbg4U84gYKF4RRJNxyfzhPJPoC5a85b3aujbrIb6e82uFerTpSGca7lbT
oFOsHS9AK97+DID1dvP3iWtKP15Xi9RM2pH3MMf3C/n0fWjgrAHwKq8rRY4WiSAquQOxYRdZtJyO
kNZctVc0qhQUHeU7JbqK1Jer8vZJd9IPe1lube4FbIcO+HAMPRTLLl5wIYhQha8Rl0fRlsHQ2ulm
NM1o0wWykqL1TSStoEnxGrQvEI8XWiWBS5weI/NGfIC+tvsbcsKN+G/0upKY9CApLJ1LvJ866rYK
nBk9rXSh995fi2AImGcQ4FUUNzTpVBhm7dhqtntrZCZtLJ/4o704cqQsSKpLhgdiGlaM+SqKWtit
RIklPs9iCDRlxAW4rCqlemW1HL9qOr9dw8+ygaEn/BIpWISJnCWraM0jKRdkYqW55xGyhcbz7LvK
qA3kxz8QbSi0jNsj1oEQqRtQoYqzQGPIfJnosGnjCrACmi6JMtMqT/eR6szhDaoAVnUdNkOYrbOj
hfSKxXcT49zmtzwZQOT3+kOrlgyZkfLx7Sh3EAa6xtJYbryhYHPkYSnOI9TcdTxvaqG4J11J0vt4
qQCji6XPP5W4x083QPjDBhJ2o/Iuulz3ENnWmHYlWq43iLyszwCxe5mIHZzBE1dpjBtWbjZLlPWb
hXKmNsF1k2ZfWfZFaQh/NofRFL+Ktleig5ZUfufMKRg+O5GU9dU2+qXFSnDu6I+4H5gOL5pMiPnK
KNm/nKjNM02WesqlzU7rqv0VKmtPMQKsalSfy9xnCyYN/MUGg4deNT0IDDq9LQgA33xXLNNzOi5S
xoWswFvt33Z9+xiyOAyE7fTuor3WGw4z9U6hpYBLOTCI0Gin9hLk2Mb6tP/NBhL6rirBmOvKWY3F
Ep1K+zo54A2Uo07t1tYyus/cWcs5stm19T4CWwXBDszOek/GlzbMylJgTslyTJQAOMfAfK6VzhDE
0Ecaz4pDJpg0Vt3PBhNd3cLWVNjJdlvJfMA/Kx03tGZMOWAzfpLQUTft0YPAyBzyZZEGVzCRLZRF
rawAIg4xBW1G1JNKIOFfX+9Jqb4ICiRliEoseBuvviSHP78J+zEmEyL44EHQBHjD7ei45rlhwf3c
tniEG3nJ4nydoc6VhE4pkpR3iNG82jCVZ1ZTMFvOjk6h15C31vWEgUgI17nyWe75i1WFshvhLNbe
S7aAuGh4hms9ZkBPAMW3H3wq6x2BmEb6X0GLBs1akBssvqaTOcdR9a+cuO7pN2BuGPhWErKs1XVE
KeBhP1FzcJTjXLZr4H2csbPUft3TXCoExOFW9E2VuESZ/Yqr0XMsgRfoUCKygY5D4NHpWkwIkOt5
NWBVEVV3WMmBFHjXtaBcnNn6moq5E5VLc2orDFlWskCYOMNqqzKt/OtOP2v0fKW5iHz0rb/FpbaX
PHPj4Yj7TfR7JVRW9XvxnMeeX6JoSmw9+Vn05T5Pgm0ap6V1bGhFuVtMt+N2irjSpDO35Rn09e4L
Q9ydzfJ5DGm7VtXWrXAqDm6UtTQP//FPXIgYDycNkhHH67luNIOaQ7SyMx0aZ2rQZ0Qp7cUHd1sL
YuH1tB5+71sG55jz0/whojjVnkuRCy2FKKTyv6KerWCtqqtPkYBdLZL7tpBScvzKDygwzTPfWc0W
i7EP05OxjyvxNjLqlLaXdLltv1GgUkgRGZj4fyuG3f2Z6m5cDOLWMnr2AYTjcgajOqRHfcnspw4q
yqz8hdzVCOdo+rSlxgtJl46Jam6H/R7UUmx3b8qKCmURfFFw1j0LmD350p7EpVIDC/1bc9gYimYs
9/2/331X6zZyAKq1LnI4OGa9N3CncMJIJ76cc+ahsZqDQZWr8PJVmw4ndx8NhPE0RKzs9cjxCekl
ul2Y9GwNfjiiuTotvKPaWLKxZz+OoUyNXXpS8CutgPg61kAurx2mhA5hyXkv3mi5A+M7zEss1BXr
7r8Gv4IQEks60MyJglm4uopqbmlFtgR/JxIcAOs5Jztb8+IwGAZ5nAtIHCHcOFuoKTQLs4z56MWA
Y1aGjtmziHEKHh1CE12FL+f1pC/dwGCr/ptdT50FvB0HKVVc21iQ46+vtXdfPjDG+pNhpftH2pN4
uhJx3tct53Am2rx2uVrEcRU+mvH4xa4BPp0u1xzA7E2H53x258oFPNell59UVIgJ8xKDM/C5Cf2t
pNRxpJXY0ZllhrRWjFw8He+fLPEmDBglqQZQoKY/F8Dce2EhAc7r88B7rF9pzC3BH0CNnqSYCae8
0pjqhzQh4IW1M+u3WOEiPivYTiN/VhvAH+VnIzAGDbLk/QfWWzhyOnJj4vhIo8UbztTn7TOE3rOk
aYznGlPmrcL5+kLa3wqN/VvxDU1uD+l2TtqUGoKLpXhdi8aFii9nw4DA9rg8eOUgof1o5OZ1Q2wy
dKjMKtL2lCSCfRwXTm7Uq2YiJIPI2sYW/czf6YrYoHhc+h36kyqBNf05NbKNwOZb7881hzZ5kLJW
B+G5VEEiFHJYiDB0/drpP0moTAEShywTw+Fr6cwScZ8xmTO22Df1u++BpOL6aQnTpJU0Jm3OEjTj
Ia7UV8Pb7DfCZJKbgyb0MgBLo3pLbOL780WMHOjxrp4tijA81D/KHjfM7VIeTdqsHzaxClSq+GB/
+Ann0pTEcPYYz4GcDnR/t9ZM1ZWSzLQVMoJRAuXaiVfiSRvNElu2jMM3LuPZd3P6meJuDZwAfI9f
YIh8YbQZVUrKaOPKAxJK2Hdvo3qgCqD848dXSR2fPg679d732mIIOFxMPyYqIuBSo3uJ47CIHsIo
8tXofSOW6kU8a7cOcl9pTm5DsIRg3Gm0ITWT5kWxJJrOLauZTO4sRGHuQYhXVwSTYNNo1Pah1LSS
Ntf0iJSnBcN2Tsn6BQ/KlCwSbPkkSwiiam16AGoZXJPHK/3f9yEZ6F6JG1oBJvcEhaCK+01TaKtN
HS48EzXYXggyjRSXgDM+ZKisJ0DCFn/+NbqVGJeYnfrVwdD46EZBv27ziwJJzwEXtvF6/IDWvq5D
aeiKYCnl5diwWmKZSz2QYIkAUDYHwT1eeY6RBzgIg103sr5E8edFYXrV4YGGK4IWnPnfpRwUheSY
WesNlML6elkQKaMVnxKiM8t6aCHSpB0gmUG+bNn5TVBeBgVDPZIYs2aUldBdQPCIzRZpGjq7j3mt
KUAB6ieVfDHnjkoue0y2BApcW214SJPqjnfFkVQf7hsBgj/ZQ9bd20f7OM92GBwQ+6fLRnoo0b9U
1kAbeYFE6Tu0GbW7TEOhoEfVsFZYvmrJp9DgBfxeOMiIlSm6fLxq1iwuBgJgdwXAtAisQt5RJ4vo
MQ+j7lONsSB5Z9ndU9Mu5gJJkh7NNZcwnvqf/DM43fDeAk3e3kbUzkCBEGM/LL3c73NLjK4DBXMY
Lfc8iGCM20zGVXlYhWoN6IkXFKiZ+BKIOUs850nkE2CWEW9gcomdVKRwJYXxnU4WOsNI2nWXNRwR
RsdpttIzvfRlIrD0RO0CsqVK+iX5FwtUrRG00S8DS6tcrLZeg2On/XtrD3S78+XhdER/B/QfBc3L
mq1lgbbq2pgAHU1Xf0aaPC2YYGx4nDTBEdkVDgu/QTiE+zZHGUUhgNAEODLUsTQev8eaIQ7Uh6YD
qPkDQ040GczWVt0Rs1vwz3GUNXF0+JyTW+XS+aTfVgMWUzMJDId3ywKtWipKi9a6izwHlVpER8Lc
sFpccCXBtLhzTpOg+ihsqHrpMjdAXyQKQVa893Ajg10HJi7hMQts3+bw9rIWACOxAVKaFb5dOdIp
35llkMSv7gHDkXqg0i8J3kEnm5TFYc+O3xMDGv2Gogmr7cLoXRWfArhrMEM0oJ/zrXpGekjyLXQi
qdcZIplyPAY3MgWfX4wC8Og4DZ8lRvXvRERn5AnwcM5f87ulGjNSGCqepCzrW3ILfUhriadmVgrW
Rfh1AICIupr18N4UuObLueXpko6KTtxE0bZwILgKGT/FpbeVs42USwZWBxndecqJDYhXuBsf9kQT
jnX1hh7F60tErbBR7JwKBiyQ2vOY5iRg/H9Sh+XoIgImb/k4MwWXvP9ifI8vpJeBdbVOrg2K/iyk
/XWT2VEoYl5XoEKgeqLLGIULYbm2WUW87x+FHy/8LSiMDERkWqf5yO7kcGK1/Z0KvymUql4HTmt1
qh3vaOOZwgfgIjM/J2uJPET6okKF8VQVLugW0yoMHrUsrCEUspFdUf0ejFlbsIg30RcaqMenajVL
FVC2o0VPSKq5N5bvd+Ro2pzLC/rE+h4PPNQ5uXR3kPCRNQuVFO8KebFEjMR31V46SHHC1cQn8eeZ
JvuckM1PkMbwk7QkNkF/dUySEPEY/vSJNMjeNrKV3vV+dHr1dhH6NlQQiBPNOQCUAVgZxS++vOT2
dQ1WZXHNhNy9ytnxkrk+kZCU4fYvoC/M9sjbd+Sbb3GONPwfzGByA16FW0D+MLUoWqv3/0b9ir4S
3FIDEghgmPVMGicbG+yKRITdvTXrVTRB2HcKsfhzEeOz5ObyyerHN/S8WbQ6IODMSjbewEheX936
IR6mNoZPrh4/4SYzEzSv49wt+prFW48N/5fFpVh1k576zJgBmk7++tvHostFA6Gf8RBM0xxf81sB
Zg6H3GivlM0JmwkV7ovWoJLscmMxdgGpz2rK31/q/D6Y9V6pkupEHsk0a73vySc3CRlzfb68mvwT
jPsYg1I62teLJSp3/CXlwDYFl16MFd4OZg0WQSps7fxbDoaz4u7TUKPQEbeDYF9BaBw5z8oF6trp
jqKm7vKWwluVChMvI8xi753FvOnZOnWLw1ME0A26Syud7MvpO0ayH1aGQqn9FWdwhFzp2xxrIjOJ
MV6IS6pio8nHlBanGN0wx38uLmK5tQcmeYly2prhMRxsR/vyDyVCsOsJ2/Ruq8X7FLN7a8dJhf1u
d5Uztxxrz+HFC4R15f0+ULw4UZ2gz5tCZNgYpTdmK7MwUcY8m6qHGFxlk+lIsITpcC2NNLaalrHr
OzVfshCrB1LvVzwyBnQ2fg6piJOMz9rVkVeqFheWc1PVJCldRdVu9kOZyNWkU4M5oXsH2ZZvo3VR
2TZ77SAuuYouFNztu/zh6njasRPjTmOKjLNXUkIEDj0NoY6LpYVVC2KPk9bZYiRpCFH8Qbu3Kuee
vQbQ49uH/lmnuE78sCZ9li0k1bMFxG5w965OYLTQ0VNDMcnaXA62jH7ANxCzL7AYYzbCRx4rAn+p
AyPvg1ypOBOE5gYHu1b4B9MDzETAU61CM+toPmDZuavgYxn0jHa2exY0UhjWVVKJnZZqRG2/UKHq
3AL6RP+L1MmieQK4yQkU/qgdA9wMaOgx7e0rsgt1fagwdEQpSoENh/K7JwgfoUVia26yB9EdSiZI
ZjPJvLuHuvw1zTW/DSIQXrCgS2a9ncHBHlmO/SS3FTZmYbLdV6wcCRhai5J8o/J88acWC6Rs6Swc
UWGQBtEW1R6cQGdyk2/uxtRfV06Nt9jaB8aAT/H+N18pucuWhxy8ch/MGOiN6+PfiLoTA5cLvXzg
MCg217F3sT/KddbXLSwvaP3taEGJ3DKkJ7aHvNcmC2QEfaga8IOeUd7NxknTJ+bnA0CwC2hj8P/m
V1y48lBCOsVWajCIzuoWTK3QgsulLzo7jwh5gjvIaTPilvKYPuDmmFpLnQthoN8gANO4idWXToRU
83a/fH6UTCqMDj9Y5Ot0AYw7IZk4HDmcDBfRmXG+d0qYgFVLerosKBcJX0BQlL+fvc+oFxPgmMZq
PjTBQCc+W5e/HvtfVgWKuhe5EZfEUzX6URtL6y8BtXlpXDUDkf1qoH8r/KBH/JyNN7yUuz6Yj9Zq
WJyVGCvYGk2+8t5UriqOkHQDERf2OndH/1qKm6+60G1NA81WmXkTv0jlOhxmN2AwBEZ4T1mYa/QX
7OkKYKVwOfvH35b7qaxIceEQ2MEKioG2LKZqnWg0jtt5Q0wTJj/TPwL3dpXkWw2/64kqYZ+DrREy
cBX3iuYHgsS6WaMldqZChAdxMlYA5Gdwt8EAOeMvbkgkpsm5P0lgZ8VRve5/NY5dnjJWhEqP/zig
3c+/ED/L0Du28g/DU5E+HX3KTpE07mR4gjVrLO1X+b2+SnGUxsd9J37M0ArSsLrTJY/mSHXZz22P
1fSy4ZSAOPhUGochVnk4HJl22l++GbhN5nZdeXFLL14ZY1sUDKCFnB4fNC2sHjJWKh5v/vP81pnD
AuKzrsf9oFCDbWK6gzOJotE+hvUXoHEpAxgVM78pVutPzJAzV98k7afvClKZu/FCw9FCIWG446pT
O9CRR7CVfGlFacD4XY9weCGKFPovlADB3ROD9s5dB0Oa3z33jZqCaI/EhbWLFBvVKW/LT7jE2//x
shAFrlDVPuMu6wUhD0864TIcTVUQa+ztdl4crCI5rz9QfoBWQ7qT2+aPr3tlOhqS4XUg9Hv+/EZC
VeN2chybtHi/y/4mp0QKYMQ6NSKs571AjhUP4/WFwdsLtI8lmZBVkxyyuZbEsuOtlB9v0ntf6bJm
WVp931mGyoUH15lMN823DVoTjqmwJBsNF0EKq8gwqBwcVd59LRENn8kqhvemRAsFB+GVPDQNONEi
5qRZsc1SIxG8x5vWl5GVpT1gL6rdo2M0RMJ0tfBkuaKwAEGmwCgPbXaz8Y81rC79yZ0HNZad1JdC
yjRUSTg9tJVvEbYr1ngJol69GLkTXWa3d4KzSQyUGhJ2oD0D+VKK3w9Py+c45F6MiYbC/ckIWZSC
RIRdeJWp3VpxYv9vFLoX8sqCCJhZf8mUW8ClX1/1Ux7NQRZDlGfgvp1LQO/knRV/Dxd5Un9utpVd
Vj+iNukaAnnFZya5ZB9BP24GbLEG3Uun5NuKrrWvK40lqJNjYoGs+PJT1n0ljJxXcueedYNxo3C7
OJXr++AojGHxqZdCSaNfg7dYaXTNFsf3VrzH3pGVlbnlyaVFAf+FqnF1tfGd4BIos9YYhpKojOz4
wRA7yTlgYxOdQR3+AnrGiPNFcP3ORRXgkZVHb13boex3G3Cs4eaB+nwXXwJ+P3FcxBUcHYU0Eta0
x/lHiovJBGNbu/y+5DvLOoso0hoUYzfoODctCnwAPYBEcjqlrAacy7VZ9X4TiLi6wP3odmeQgzM3
rPw/ruKEMLKYueDmSX9W4Ty78MST+f//4DiEphG+upFzcRLVn4/8bdbTwZqAV3K3f5nNDfgZzsie
9jSKjDlLezxFVKAZN/9ODF5QvxZCIWat5/rfxcREo0M5XOfhgC+gqCm+Fc+sg2yFh5v9Rh8kpdmy
gskF9hBr9m3uAOcS2A5UOVERMD04fe9l7WbYTybqS+Etvx8q/qxKkT2wo0l1VR3++3kfuy88Jjjd
7RFBEt/YVbkGq6iIZ1OwCee/zqHyvUUAxQYDjr4AeAKDVEbmxEK048nKivo/swxe7uRcBDFS72dw
HGwqxGKFMWgW2+7VLLNZ+TOPHKdwTFI1YjqUY1U0cWLWvyPGoW3pRLt67zOK+1NWbctguik8bsB7
eJBLBpVkbya1XAbACxbm6ObgjnVr+HMgtG+zR6h2rYAyZTCzWw8M42ZOlF110duA2j2X938XywhZ
Tetek0prXUCYGp01j6pRr546yHFobfparwqYO+UGdIYZPlt1AhNQrDQxY//C5p4UFfBfVDsltVzA
/d5djVkP/D/esgbNR9kBsb07VfNHJ5IV336XyrsLqpUHk/Uej1ds34v6JyJF3LFS5dLbkyuxRrKq
O0A6z0xZ2kr9wYSHCYtNeVLYSh2pyuxxfCAyOwMwJOFuVplJJ6YzpUOUzL7ELae3Dco9+lqwDgpc
94qHgIzsuL9r1DKxUkGhIRBb5s8AQuI1t2YOVui59zS7w7okPILdYC2wwOIPS53JOZbT+HIo/JNw
hHP7A9DzuyquIzg9jtRWghuqCHOLr8huwHmn2UBC2CjJrhJmPWvpl+mV7dmSnn9VjHga1+qpUmTl
66268bmE5MjXABsueUmlcWJECD7beg/EDbd0Wxbl+V49dM0d7zAKM/0SEtQgwrnYRUOe8T7/NZc1
lPMR5IONYPUp/ATTt4+vwFU2hul8kqkUVUi+JmnJuzzgJw00t3tAXgwS4A2NpQfXi0nNIIDPBKvY
yF6is9dKT8S1tjcLB8dRVhqwTUSruNp5bUJTn1UkMjcs9EWNM1WK4HXhImmJ8G1oth24RrBPLcwz
gFoLpV8XiQFGH5lmuLII8/7IndHLb1G6FOLa9unWcR7Ifw6f7ykzs5hUW8UVII0g80sxJkc8VeuL
2eogX0sn5tcXqOrny5wXwORxFsljPxSUrJ74NGK3XTU9yqa8M0FFV+W1bbCbz5ym0yS7DmAr2RdL
wfM4Yh32QBjKotOvvCtIH9tQZD4Lq7en8S33snY/WRV/yOKYqN42UvgoLVzOS3sJv+BB4Rpaggx7
1WyCoja5JR9nXWWaefBqHlSKwT3uWBbyPgVpwYqCFwxZPsIM6d1gkPOzVCvLmC5DYCb0K6mKXS04
8MeXT9yHfYNYGJhgrNSVoAzGz3ibhr9a2n/fV4/1N5xz5r2Hb47gwMHCGXoLAs8v4JnRMfvTAJeu
FxnIVAydpSkJlT+SoDs/VD45RrThL8RYAu9mKQvANnNQoFptzAbVnci8WCDkjUHCTzPxD9ZGqiee
epJQJ+HMipB0LQJhXYVVHWmXayQBqcS84JO14eEGV9SZX5hCOLhdqjHc5x7u9kIXBypm8L4X8kYe
DDyOHYKosYchulaTBhFJgQmn642wTT/bhr31hkQZ8OF5TvSmGzxoc4UwllZ9WTZSAVYEnJvRdpQF
W9cF6utTuGEVQvQi2m6ueTU4Xx///xlJriRMVkFXR4qKPD6UKd9tGpDgruvvvZfROxVNFJ9WyEDx
lCMRbB4GdSthwMb3mxI7LN/SNEHXKZDRcMM7k6BrFbbZVEo7txyLklmK/DlzvCGeKquhHnJhOxX9
qR2n17YJzZfGw9jZ5BAczZTyLdJVGmLTTa+yOIe0s2yfQcYvvJ6pkG7Gm8HRsf3CAfSgzXM0JHGu
X9m7qZxXzb5bMuh7rqKhjLF9Y8bXdVOtO1D7sa6geQK6ngwIE1Uu3vz0vhi2IWYODkiGvOCFzW93
X0YDAc30Oyp5hlqsB0PpvefUB8GDUx1V/kwy/mes7kRuWW6+Xkh4dnbjrXY+vGyrbUUrJN4tyU4a
JrI65dNQF/ew2U6yIGANv5bY4JLzIQkXNs0Rz/47z/13q/z1W9dAAHqAyEf5UpBCZvV39AuHLsOm
3O4awC/lhlHa5ySzGiW3BLIYgdtUBTai7E7UPmlEQVVy1rJJKczMpSKFaVfluU4ORJv1eizbT9Lj
aV19IRLmz/0JMF1rUgMVKJifjEMbaXGpSqVCuMKlco400oqODzTUgoX8UqlIC92TxgZdQ2IuzwRs
LHLywqEIadzieXyKf4i93ZPu0wVBeSnEL2f/n/aZwGZ7BNDKWgg+q1J4B0sLZcSG3g80E04CkNHJ
lxh90HLiVTA+Wj7Qyw6dp91bhQ/P7t2mCOOZf/EIULACsXhfhQom4mWQ+Q+swS0FOJLlpfk+6/PG
24lFl+PbuE7qSpT0F3h/dc0t/vlU7HlM2VkkTRkJVZTcinr0TuScs/HaJQ3SntPKD2Zf/0FExpyt
Zb1kTqXgoiEcgWOKivUrNBFsVyIFF7dMA+1czECogisAkuWNVMs1ffmRF3VWXlyYycWWSvfzLClS
j/hEOvJpl2qSD1Ug4/YjfOiRORCjk65b9BfIUGKb20sy7o96aHWQ/aCAmVjQKZfTz6TWvZb2kU9T
58JFK19RTtoB38qVDkMJ7xsl0wCTZE34Ed8M4995gvEpi/H2WovArG7+q5GnIpz6+MTJmczoeSA+
gPDB8lvCxgD2XSEpqOkJ2mkrMfooP6+ufZJHTClshhF0ClHBIbyHp3fg3jOkOvpy3w/Cs5lmwb/x
5iOuUgYlv3XLxFY/QDVYQbVgkwMNJ/U6m14DeXZPv6GlHkfk10Gn2QZ+30JQcz8IsBjbcDkyN5ah
nDYU4GZjiBRxNEE03jcG6G6p/6lJujyTi7yRmSn2kFPE0Bzdreo2GrxA5i+h8WRtN10C5CY0iO3Y
FGHC5XDWzsmvDPkimPXYnoftkBFU5OTyUELOzWoGos5CHB2GeGY+vZ5YQ5dpHZ2yy8qQjkL6Z3gY
3khiSsh8A3VoaMDyElNZ1I1Hm4somNy6Ha+zICQeTLMyx0oUBIuUC+JwgNIgadpAI9jRzQZAQWFn
unr98zLPDBWrRhlehCEtcG24RPpcglTD6emiYQRWLstFNyJa8ebC0h+MMmnkQNfL0/qm3G40yv8n
jYtUTfmmmujifIX9ZXFwY3Ryyip+NkpPNdzNXCotdqnSVt5ErLFsYl7XzwvaKydRXq2TzPWyHfZC
CbqHI4ILP1TZWczqEVTly8VXwk2HQOdZHMu1Z0I5CGOypkkHUqlv0jSiEOPshNTF+H+Zj2ARS0aK
Wj5UgVhLiPZdD218wt9cw2sHs+iR5z/xFZqsXymJmS0HPzqP5MXnwE2+aZM+x95W8EMkXUyWg3PF
YRKKNEh0fBObeyk+EaBVMFb/rMkvzyswKcJG8RBho0WpCe0MalLOjcw+knsbrMvSjbqa5+2H7P5N
0mRn2iphL3fxR5MnsbTiRlhtfeGfiv6pq+7kykZtg9t0HVOim1Ly6BJndGqcf1FzXbI5vWb/LdoB
ZM2Fd2NT8B1B2CPllEijOylNYYYsf1CW37sEs8ovS8UC5R5BQ/yDxeModqnrTQWUfNqR1rATQCyo
JaFjZz8b4Ips8a8LaapL/vRIADWlYg7+Z8CnZRC5n4bcUSpTN9u0hQZ+LPa7RXf3r8oIxlrMLEFx
OpLMfjG1rcZ/TFXIS4wfzR/JeVahlR55Uf9FnkhQQtOMKQQiq/IDn6v/oLTF4pC75pPMz25CW2la
Od9BS64dTbtCP7SkNFYWBM8SHVM2gLeVaiMPsUZLwNQo5XTzCpozuTJ+lJ7B62ql4LRk5BhyNRhj
V7VUfxrzyPKA+xW3c2ocuaLiz2LIRhSd7N4pkRL4gGNHcFEmQ72dqJv5/vPN7EqG/PscF3Bo/wVo
22GrEYY+PPjok/0lbhwLySXoFMFrugpDzntc+mPqCadyR7eBSZ6FLPLDC8jm/W5dBoldtrKnQCkJ
joq3EKNvorfOlu9uQUMKQyJUX6Yc1swCiqL9pFGIwo/b8MjmODnPczQ34s74mD9KCjOoC3X8/ZYm
pjii7xSYcjF9CnPtiZEqCWnBgv5tkrJ/Wh0cYIGwA/Q0Fcyb1e8q98QTjyibRJSq74veEC0St9lP
KRpxrHJ5xYoppUOzXHaC0CecaqSnLj0sUeiabPgrOCWJEWwQDAEAJYPi5Oj09cluAq31DA1U65KM
cMk0OryTlLjdfNvRLZk86bP0M0X5+SdYQeJ2r7HprNIZeVcOF9cYWWKMf/TWlXBxdUs9L4V6MF+9
du0vd/booen/wO8R1JQ3HQ6Mak5ZFH26DCsYnG9mzMw8DQMzTXz7sV8crKDBZmKN45SomZujVrbB
ssc6Vet2lIn6p17WB5EO1PSlLlpWOpJD76PhjsszZc22dguv/m0oa8NYw9jwtFRwhMgMOyyp2mIM
4is8B3SOFK5kvuiirDTHhqnZReA8Cu2ClVt3yDqd75EIDMIMtPO5K/aBOBenE3EK9F+vj6D/FPb6
xHLSdSZvcEDhJvE3Or71+jUGovee9jMbXhiAtiya94xdMT0DnUDTPbKUg3ghlsF5W2kuqEfQOJXV
ZHv+Ap1ww09UVJdqtHle835yPSVA48PB+3nZ1KVW8l3FgeDq7z+G9lXWqlX28M9q/xxJOTCr8c2e
LS9dgK0dXl9D2aMsnEEv22WaHNP50pQ4EcuX939w678h05uiOpL2mTfdUHl9E3iMgsfAOJXuIwXV
akd/ltpDKREBSNX+9rtk04wYOqZ+pcci7bWziFus0eLXdyyseMbiNLQFeU5nE+eC8ufYMyxQYqNX
270wJI1DMrmEH0l6C/BT69kMOIL6jhBLek/Ke4wngmeRaSpgCjCxlFGpELS9GH1Qg4M73fRIYBkn
oNJMJqYzlxFMIymEikAN9sawc3hAJH6yIvrwdb9+6c1HzT8JAB67e06GL313rJk/JeRdHyTJC/im
Dl+qbuDO0Aq50QjH3CcvDog7mLDukmnKyS5OWfOuP71tl2oFO53Jyb6di+TtthGWmwABFv0FMj9r
J432sPskCWta/idOAkPE+E+OKUAsxeJXYKGXB2B0RE2pfnpAP3rZskpXfpB84ps4taCfGjvX8UjW
hjNiEt4tF7RuL7eEB+xCqbz6x9rHtkzQs4BhxqnmYqUGpnjYxP1fj96PlOQJ0OzS7pIaRVe+cxqQ
7zVn1aibPa532BXUIqGA/seRS3LV+k3cGKX7KlExgvi9Bb0s+58ZCxUqCzCm4/sFzhg85L63ABy8
KCCJ+MNW+OMoLt1h+nTTRkn54e06BfKI6tGozT+xqFCLAf/XRCl9c1SS31S/eNxV9VL54n0G9Asv
HfOzt0rHM8OuGe441UCigZBofIEttulKAPToWEZd2JItQWExhCD9mffv7Zi11YUDUIdTuu3nOAWr
sGfOZ47kyvNOUznawBwzofLDTg6KXbkS41eajDQouowrvAV2PwwLTaDJ1KjaIOFcBcqOT1afEEwr
2zC0up6wECNAstif15Tql3BvdWFy4xvG1uUVCRGoi7PPuR/jedPQcBLzAiiCQaJMDtt/9moyl7lf
B/CHF6uliciuJL4Ac0fL9uhW5T35fwyblHGyutUv84WRBTUCiOchnDdW9JPS96DAM9dOjZPtrDKz
2oN6zYlvruo+9vrzFi2f7wvBE3ajoseA3MoXQhd8JE7CVs1cEmdoMnVf+xc5hDMECrG1Itc+/Rku
8qVn3WVG2DMKxI1fPW6yXd+Gtyoyndw7+rBRDR3+EXUuH9BIrgVct21PW4IO3TymBIqOP9Xe9i/m
qUxztvEkTo5YG3OSBkiNi5bTHwlFf2KcrGPG/VfSw/bApgHpiw5Sob8lXIcrpa/0Tti7RCGwdquq
t6lxxH12idzu8vsb/kNlB3NSb3qSvHG4j7llAabFWgC2KEsVYPNeIrWbBzQ9LFyPYJ5P2wb6SYQq
vB5B69M0exyRxpjgazJNvPPJw6eZmHixZh0eLwi0sGlGMdD4U3kv2HejkQ7yO8FiBytU8hEchGfM
XgHPDT0AWw4kz4Uc/dFjyK45Uu6jbKTzyJKqu/EmHwdYG80JMlvyRM81E7gNwYqEjOY4OI1fJqqM
iU2tDkodX8rWwj7Dam7JB3SY+LbPyPzZlTb0X5rts5xS8n/oZJW/g0O+ftUbGdHnLEU5cnoE1g2e
RO5WYQfSPeSt83+alToXOw2yOS/Fj5pOZM6TtRgS++yeJcKDIFFehQEgkHdtn8S2hOG5gfujOmXV
kyKAQLs1gkHcZ94Tn+fgqedcplpx2zcifNtE/iXbone7sXHNbDZgOdcMha09D6hBaYlVtHWk37Pp
i50iSd6biSE2Ns0VVKfQvL8BnAjlvaCmDRZqfBL/MaHNif/WsKRA99iQRiPZ+0cpiygPHs41PVCH
/VaDR9/9bWUISFhYiqd0LNF9cLFTRnnIf/Z0c+FbxusW2gBNxbCwJ8u59LcZQXSjsdR5lErjhu5e
pHiYHuehbAbS48hWnxRH5AYy4SDYYyujAYY6MyoZPr+WQtyyfv7W0yYOJa74ZkrBbsWPkSYufzWF
5oKdyJjl4nb9BulQksL5FRR1Z+wkL7gwpYmKezbbAr3ZdifC9+2fBaZBqwf8fqcd8tnQYwu974Pn
aUoEcuAwvlPibghBedhxI17IcXdC7aK4LMM0942eV9evY1uiIAIOuqc0f/H1anze5Rp+8M8e/okY
vEHciGrUG4p173HWSTQUQn87tZs9/p1MF2ZsJLIWtFyDqajkUtPULypoMjcAlnDNWbvdOtBt4t3W
+TX77CF48qOQw04c3Dcf4wbnde2ruIT7SCKJzMTwEpxuuYNXpsS3qKB3qH93I7GBvDyK4VOY0h7Q
KVml3IjebC2sNpKt5z+YVhJki8KbzRVAPqQYMqF1z8m9DTg/eD82VzCSLEeG6QRCHxNLW72NDrkl
n7jaJV5zwNZoPu9Ly44yWcCAsTw3cQEXSWWuDQQmxFIFaewHjpi6E3n7mJbCFh141ByNNXh/36/Z
m59CoiLDgRTOsH/fiKEA+a/jCd1MdvoR5Wk1/ZbYARcbchxST8TiUozqyWJVcgWJBHhfn78TSwrQ
DyT0kerQ5BLiD/jdxB8enEBc5NyDUVTsOjXGTM41EaOiba1ygrBpGRPTN9hG1Q8M6SaWSTMALZwz
2Dex/JmFZgjMn0zIP1loBb/YZkOmCdPs4A8cGaSf50zYNRB2+2CVr+vPV9r0qc6WL6Xj9KdAXSGq
lMIjkiMn/BsinQzFprTydip1/eApmnauIKYCVROX0xaOSyFtvQjs2jvVTDDotGVE2PH5J7mSQGsF
QTNxh173QC0b5Ja+b0iwyT7ICd10VGGahtXyDXySUNI5t/0KKBG8hY9e6wIZbBb3vKgjJ/T8eqbr
WQfoMZcLdRS2kqvh44yK3cEgo0/hbP1HEz5Q5NUw5gGj7HNdKAiiWIgV6XMobvWC6YYWNG8U1Bx0
5nLQ8CctuEvko0fxooOIfMO5HlgHmh8rXF84ygoja6kH7maTOlQePc8IjEYHnJTKLP7tru+nZQCp
aydAlvZpqEw3zydFKuRXBens3bqP0k9gTYUIx+Yi9fOHFxkKGPSo4OO9hvRtUaWXy5SUolkj4BXe
UFdKeWAq8s26KO2EBJm8Lkh4S/nf6znqKnodnKa9SqXToXh0dUYDHQftihcDT/5xvOdeURQrLE3G
TTfmiRmbxnzb/fIppdAFZpfsQuGzDOamiLU+V42sv8gP6YuesnlQoEiKYDyVj84u3BEndEOreais
UYOqZ3TCK5JXMzhDc5oKbUetspRLtQ3uL5j20w+h9V1LdacUhn1xnXrmhRBTaP6Sbsxtt3CYR4qm
IabtwO7LJHLWPc5nXG0mOgIvNmUVp2vC1+VsRtcFGXxzg2VQPRxIm+yZXCTQTyZYX/NqSRagzNle
krKWR0NAJwIDAMEyyaGfnCX7XcrkpAORBwabo1pjVISOkCSB6LKOTeAaup4uFNABLl4NX1LYny44
P/MNNEDs0uahtazBnx8c7OIp95uoFcChzwnxyydjJrhpavCzAsvKBjm0EaLYAPwBWm4Dq/rbcuKc
j9mAeME2shQwnsgCc3DcgPbRW3eVcsk/We3YjGV95Aufwcq4JGJ/iK4YNzIzGpcICO6zqQpMkQPW
Sum8kh7yMJvInQ0Dq+6Xl5tLqPZT+PefRjcvP9+BVo0hDJYtT6osQepJe9LFFIT55rpZMRnM7WUG
3XpwTLmK6NjhePKQ/Yq8xOZyo2dSEBYccMiLhqFAEe99RtCpx+JD63p1NNh8laQlhreb7mK0UvGt
VyzXuXNKEA+B1eMyBrPFaRhPLCgpXpKaW+AZ4eseYUpq3Oz1TtpeO0naxeEkyAeAFyJpgAGzaX9v
aQUsFpODMwFaQLCfwlAMwRqnRevso/rq+Yo2lNwhDtJLc+zn1pMCbnF+1W6uZeZt7DpucN9ocfNT
w6p6KJoXo5/UxoT5cCCQakY3ujYSh2txGYEJWEQY+fdACSiEiWsi3MPymG1Xjyyu/n9av8rLSRO9
SFq3GI84UyjgXDx2Hy62GS0bK3I/X/bMjmY8urxp6QeL0c7i0OpFklSHX3JUS2q6r0JgnoKehTwX
K498u9epluWhs5icq7OgZyJC43b/YoSKZXh71h62T8gdyNmkcbyMulxwxqWcpGHEQ5/povtStBk+
ZOxI4Ek6GyIPtIX4HlLDJwoW97U6+vZGq+aEYDful8SlGk7kY9knb3pxI/yAw+JhRVkYX988IY05
lKb7j1bNdad2+Ynq214nPvv0h11OTPrSthPMfc53QUOeo+AbkaPQ860gLr3xTzznK8A4Eg9C+9lj
4of9NTh3o4n60YYzthTNJ2MB+PXUupuDU//7VPUduDtccdEQsZdtPvWm7fLBpt0HEY0LFDatyPAW
X8GZ5Z7GulddgvnluRfhN3MuPbYjMQLHThtZCCfYZtP6IvUZUWv/we/kUz2nApUgY1zeFcD9vNOY
B5+hehXOy4hdUImW8lOmHwI0SoFcX1fy0wXoAO84mYqNHd5BKSx+HtuZjCrfZGa1lAfQ+y0bMrba
Mr6GM4m/mV9AhpI1Sd6efqqEN8NUnzMFaAAgeDd+zgEuHVL/tL3GsbGEoq7HQEaiYLdMkinVZJnj
lOQ8WpT4zNd26202nAHdhzH8X6QyWVQtBsOoY0ML6Br5IsesHDZ/9Kf82i+fpKqETSZNLUGEQuyu
EiBPM8JtaozxtMNsj1el620aBnsxtUeiwrGJhdhoN34HUOBKgSLDPR1oeHao/bguvGSjW3SxcTzX
RE5/1MJLRumXvAYhcDOU/5om0VHnsqOvjNRwklCjCTEOO7nWfkvN3buP1Xa847KndQyN9GcsEi5v
/+W4VAapDZou+s+BNmPpD3bLmOLrgyT9vJxicYZdJo+9LTvTa7r9r5ebp3Fc/677L/v5ZbFy0QK0
uULmA3SQs5fYe03nb/IIHP638+VnwDQEtIcYRCueZwmH/Hvzn1+TvjTt/1WrpXJigV2T/c8b6zYZ
Oi1ZTv0OUfZO04blMWG8bwtSSj5EIHh+EApJjL7e/KvvMHVBXDP/rlC2a2urEGeQfB2IY4BVumXX
Wn6b3s/tLXimStDb8dzNYZEkrHPTZ+ebfuBbgqDRgWpQlc7BYLjclegZN/nYI/lh7IzyW3VsJoTZ
0td5Kf8MW38VKdUZ7aHAdS5/amN8VQdTK4TFbJhzuqLpPcPylEtRB7iJzxI7ma9rLbqxb5rKXXyw
X9zsTzrtwT66lgylr8KE15tNuEtWClonqfN3ljVqmlyuB4yoTiZlJFOA/9FWJ1mbKF8Z/pfAGMAg
bIz6yXd3C3vOiGClvnDNxVdOWFpDmEkL/lGWkzROenWr/6bhjHHFhZznjPB5E+HfPrFlWQxDcx+h
yzgaJ7ha0D3rTbGmQZc1qUY4zf+RV1F23wI42fjNcRwvZsWiOJMTRtxhGCAo4esNcZa0qdJbwOXN
qbckmS2wlxBWjCjvT0gyKINeRzcxkiV0uqfUGOBQ8ku9Z6hPf/Ud/IyqGBLkncbCMZhVxVHul48X
8gnbwcp55ATu3OOq0+7hsQYlDvxnmtxkiknVVOz9nuVTXYYeKCXfGeJppsHWyudfaH0jeixVeSUO
6aLf6BjRFfRCXrLEdlShJ7Fr4HWoBBG3F7JJYAuqOjUGX9A3Xt91xw2iV7+chWjkGweos6+Will3
26zX6ZgqCo85fDSgj7MaR2iOSGg/C9E9UwAq98P8gG1h2AhuOFYaY6NDg2Siu5LPh1srIy1tDG5d
MJZ7e+r1qCVzkgZ3T1fv+xrUCOvQfXNGLM85LSCtS/TcY/qtnmslkTBr01ATRqcvse3ETri4GPj1
V2X0W5H80BB8wHJFTquqItZSKFVBNp8zdK/e94DKdr3iT9RzWRfacN5sjrwXQeH/JKubEfVsL4+S
nwX1zmvS6fPMaHbK/VDI9xT0jSeaU7Q+x95KE62DzwhkgkfS1yCi41M8yn22zTv8S39r0FprHTYt
iIRGvtfDS3m3BYMy7MUcWfCbXmPTuQs/cfN0VMN+Gk8VxPVzpQB8kVxiBv9BLEnEgNeoEQqeA+l2
no7nXTB78TiOZ7ZeRIlvf76V22ifiUn+sOnB+K6nyY6OiWJniaU/5iGLQH7GwCO33PjIWIGxRS4f
hD7OLMJcAgzzPVSNVBcBHP0r75gaJNLaYox+vRWE/WKDArEf6pGpPsBrfRuRizAWQFGmkkhCBB6o
xQ2g5Tt/GsBNcFlVThGjuGy2BnRDQqcCVZ9g0wBsbxHs7t52qwhNayPV0zbcvlC29KNztCy9LhTU
p9CYufKXST0sK6ZCa9eklhelpIxJWhNzkd4dALKYHduGJVemIr5pVAoNh1CTLFh7HuhsYWRKT1px
1kSqpbntGSVyfjwkOyBA+pVBoc7Jiw8sWCXS/Y/vY21/1fIPufPASpGsvKDuYdMgAEVk5VgBUIIy
ndcDqgxDzn+OoUJYPHHqjonEjopcwzJj7vF/KID6ioTDqECRXk+TSFMnUbzrGgU3wQmupNy0Zqe+
o/oV4haCyQHV47ftwXmOFVMTtWgJCmwa7YSikFLFTylzmQVyEN44goGR1jv7WX3AxiVZnXfxQdFX
4yLEspRnWvCL0gyRClAch/v55tWGxUMRhVFDbdsneDrKF5rUVXPiJECD95KZ22kjU/ar9mn/MHVl
MEu+Rmgt6YQWrbDozbQndMdx5imdEKreULiwVTu21D1f+FvJEdcEVncsDNqPO/lbiVvOh2vQzmij
6nBlqvLvVNZ+ns3WR12KqVdrQGNJt3aVpG73Hx7zQd0WcnDqlLDoAGttB7qDjdyB/gwHshegSHec
XGIgGifWBGn9ukGm0VYhIDLfZ9p/DQv8h7xWWjSs14NR9DFrVNuEf6HzUs3pSw20phRAJ7/WdOAW
DhSpzxgY1HxmHRfKDeCZigMqV8f+dL138/b993LGGncuBdg1vorSjG3fKi8UF7aL00PIMs4e6aju
188xKhzY8c5Y5h8iVDjkUNYSBQgGHvPLolcMDPiJyqrXSCjtqKK6IIzeyPpC1r8C/6O4IyhdX21Y
gTOXaR+z2oACCH1ipYIUdzKubRxO8qAMfDGt9MhioQwilXuLQvfxz1MVJOMvCxheEmRso62V4C23
B4P8afK54yijx/t7BQV7AgSXv0R+xUfLlXI7hxA6pQVzTX2no7fgnrkNFR9ogQtS4pcykJFRlpZ+
ydiT6+zLXYKmnnhVgAgU9A/i5zzgrNt8Sf2CP427hUpQw/NP+DnmBidMEOccAeMqgyQ2VAz1yfSp
wWJ56Lhxi7L1FGnJ4IyQk3A4fx+nGMBD9m97AOTg5BGvV8bn+b5CeaYwN4IjGdNoFkyM70UGZyPO
Kxzsp5uFrbNfhlS4mHGC1ol6a1cvDJUL568BQ7Ym5TlDZxc4ynzryYQ84KTW15o5wfzNpVQGaS/V
kCjYWa9CIa/enxQQmGDXNQ8NLTqymrj5BHkeXGSMhKGwsm2W13jcpbQwiM29SJb+mkL+wdhnXck4
BGdx8BwpfNNdx5K5KznnpGusTMKtK0FnMs0Kr6e6TaC4pNehZB3bkawG1IFJ12VkGcwLnVXTp7WX
nSALTQI/Pzxobt6OmmJpzJtOC52yjZoMCqk+JjE2gv2Ril+ZruoRL2n0KH9SIBLtYqfSA4QEk8yb
G0Oh7vnnZms7ednZvtKZGDIJARu5+YdF+1KRytdZG4ceBiUXQZkqY/1S0DtyGdF5wTYeHWnpxtue
akX6NxKp3kXqPmk05dKVZ369qrsyliWgLLZuPtiMyzQUnf9PghJB9wfNC6Pgsj6WQCMkkzudKrFD
fN2C9QTDQ9V3cHfD5sADqFNUqeudlGQpEI1CchkVNq6Z9tx9Az4JFJo/FvkMohXT5aMwuv35/iIe
vstoSAdSDCSfVl4HgAL1IlVz8666Av66BSBKsqJurbRY4N3HwqY5oMP9EOojaTVvfbCpEKr314Eb
3Q258VVfpDphHzuRRCrti000eExlo2ZIzrv1owh8s05FCfY7S+kICHKcBU9v+Mk3B7k6cUobRyPo
EXCID3crZ3hFub3QYkRrQE4Vcy2FPHTp9AtvEoRDUTIwcvt4vGOh9M1sCDjmgNymhr2ovQbfXiQ2
4K09cAj1d6QxOUI565ZbUPiA890vqnKH9UGS9+m5TRba4Rcy8SKh5ePN03/oQjZu3XBPwZLGQnkU
Vt+WAEAgVgNi4+OPzW/L3lobdVPv4GcDWfa0OHuuZ9/I4rjHnlsDzoKhgi3yXkvLNMqWWurGU02P
KAXzu6Za2HGoPEO5Gu2tnlaejyeomQySYuGNjH3qAuRRQE67ucYl8uV267PKUMCg59yAUwuFf6H4
tW5LckgK5szqgrq5iHUcJFhQol8KrywR1mNW33jyy7z0cFPdXeI8t8CwZE1Yu5IZUVKh2ZByR4Pz
Yi9QBsCqDDbm1G5Cp1PH/rFaoprLBlskDPdCwPacDnWhR+m6ZfCbyvScUPvr34N7FKynEYIOkgEn
txdwFYxy0kfjlAhqgEiUFP6TsmtbMXJYOzVR0XFTYl0ySi681ydCUA1ymUHNkum5EZnoN5dvNHp+
+bnXo4du/Xv07fSVEuyosm1gK1qSVP8VZsVjVODEaa3CHNR2R19KtusPt8bkyAA+DHfZUClpsofQ
Z+/EyQPJzvh6CfCb3d3vdls5KOFNFvW5EUF/90wgHSnULgatOXVm4hE75bQ56W+F9RAI4dn27yOv
PBQf3wGPZkHFpMS+Kk/xgntzHVzLNHZy3+AwDLWZIQJsMLahhYgcD1B2AskpbosP5ANgd85rKjwe
vP9JQRkfwRUwMIgJMvtvwyUSVSf5EruQu6Y7nbnCtBrJgpX0UnfZdZrAm9IGcHWHikq+TYVLXDn3
dN99wyJOglHvIOFch37ttok4gl0F1KaA0LhD1sjz3H89aRbX0mIvO/eGt1T2tbIXQuhVUvPRJHwW
nhZ32BpCWsd4pblsb6AqUFQuo23hooVgfH89k30dCpwtTFTPmIpuxPILuRFq2OIUTbiIgo5zmgIa
gmTBQgawfbbZR1hmfwu+7h8sy2Ah9jB3HnKtFsqavTn4ogLkUc9hpb42PidFWC/WDjhj0NXL+8H+
VholUi+55KMca25jcRYxLbKMSIttuisJgWLNTvEG4uN3noUPTEAk+2O3/OZJPFR8Ps7jnux6MkrZ
2+0qvP6ujjxu9miBavIxKh8kMvnE48v7svIBymR4pVu+LfLqzNWV4tOLrNfz0kdNMbesrY4dKQiO
JMQWeIhPo3DhVj30y3QZI72+WZCZMdhn7vXpkxxXEgPDVyiHOAlSZOMZwXJ/ywyP4KeuonMPK4Tg
anWpknHV9i6t+H5Xgq4a0fEwezto/JbIs0aADIZKvgIXhLrzzPDvCn0725xPbRLvOp4ztP3XB90b
JKiTJ+b2adXzp0lAERhm+Ljw62pJKoSevucaXmapHeae1zXJEQeZOncucHC9GTHmasAwm8vIt8BA
1iC7tK7jCefzrMqiP+XfBCEDPMueXrDLhTLpUyijJqcTzzTrOEZWr2A7aQwwLtzC7NMYh6KCBIJO
N6oeJGPokM6WbjzTLmAfYQaEcInqWZ1CN7OJ1ObBQaMoB5vPGY3HNvsQVgvd7InSE/SpVTrvY2b2
L6rObYRDpfA/g3IeDi1ef2XXtjsGvGHjGd3zIhGio4RLdWR5rQs6HLKxcZma2vYEPyqXYzkAs6rq
3KvJ7QbIA/CRhp5lBUgS3WQYX2CWQhSVTELb/lULZb94GSdlJLafktSTdydLLjPD+J+T7HTqn1AH
2j94oMpKH+SbS4OUKwQKkFxx4U77T/m7S7cxhZ0C2GxA+mogDk69RZs08L4Vl3w0bPIwXVVjClgp
txHVzHtnJTBjxD+KMqdKe4qpE8AmC1crk2ZWPBxDqnNAX8PQDjZY5ooLyVGhW+6sLYeBmMu+LwPl
QLlJDmCaeHqc2TjsN4j1uteQxGa0AKMp9lkUfq1u/pdSITPZI5UrtcHos6APXbggaMS+PwZ4/LIj
0uTYmo6EbRi8C+OB9GiqHb1ZXcQZowGDgDp/9BHAXae/pYsP0Zn2rsNxUdpZvFKxRMcQ0JDZXAj/
x/RP9vTt4yHUyHkI1KAVO8btyoqewRUF0OGX/1Hb003xz6vIlFyM8W0JlxjGA77+3H4/m5bHKQeF
RAbo2JLE7xHAqS7QlSITyavjgF2EbHq6pC9+T82SINoj/GlOtE2PkCrWzH3Bn8tntIPA60TLbfM7
sJEUfpck1e/w4zb1J0JGHmWVdEakr1uLErCznESl6QlDTpWW9HshsKZyt2RE/UpC51zbk01RzcV2
vkamIV9P2sVTS+KXILAaTe4QQzCHHmjz92zydzGTtDUu2XNkhStFp/R/c6K4COAakODbDSe6pyNA
aN51pyrF0Mgu3xHEWqUMM4klswjQi4YnWGYx89DOQzfD7oUIwISppnQUXKnEGKRoAIK+Pap2+r0O
NrLv9A8DHUEJ/T6D2V3WF2jFhMTc4O3Kc7mmbsdcGPHJ1aFd9YgQ6gMYGtffkg48Zq7ULMoxSh+e
v8XcWMJ1hGWVkRyhgIFbeEkNuPloTidfD4kWd5ITkFaEWluP/LhEWzmeytY4XR4uTcdZ8RPCS870
jnAso9U0wNYNrXmGiUveAXz/E2HpXByxF2zLTYPQOylgLtQWuFx7rqJKCSL3KQcW/bDMoeHHppAT
gxVBmTuYxB5vZ2g/ABmuRFHeW/FvCx2VCYY19DprI62ilSXZ5MKzXQcEPE667xjcjfDPWpEZR0OH
DdNcKQe/dAd4YUEqeyBz6eppA1XT994jNZR5aMdjjriaQQgpnkrGoif8eZWmM3qQp/hZIJNL0UO8
P3wbFeRprzbxWKHt9b9dROfXVHkdNsLlMs5UwNG5pX1+Si8pzwVO4PH5QDgw5XSrTedmQedadbxg
B8OehzP2cHikfAYumVCLqMtR3R+SjDCBThIRoIUJyRBBXABAKoBcOmDDuuf/MUsrKQ0saPW9EWBV
ScrRqvwvETHOJxUAfJO91fMrQGB8R+0Y6nRre18dRYoFBSJ636hu/WWyd7wCoeliNLe/ebc1JzhB
Vo6YJGb1Pb8V4u2gbHI2JRiirK+mJtFbAJ7nqMw021gHv4QHwDYfNWclzxpTJro5/U2HDCpCAPQa
3BOGtkMJp66BroXK3xc68Or51cz5D76U3UvusjkrSY9C2t3hEW6FOY0ORjssPt88eJb13QRGxi4k
rCrFRUUJptYmxg4qCwsYGUU7Nm5jquTqPquGMprWC783eiE2zQXOZCqYaX2Ym6TOxU5bx6uZUHO7
XgwL5U4I1JxV6jQs8Ckyj//5TXZ07IHXeU7H9uywCc4DVLXC4lNwYqAV9dl5XRiOKh7LtMDKw/OY
DI4SF1GF6ztx9dJFtpwf1W9EFwG1eWbZ8Y9Lj1Q7bZh4HY55YmdXsVhmvkk1NdbnH+EfI4WIUS0S
DJZBO0AEdBO7RerDgRkvIqg7c2GOrxtKk3z3whbOS1ezK39eix0p4/4Indms1dwfmPxEoKxiNXAQ
cw3LMeT2CQzzuP2t4AsPmOgfJcAFo41Iso30aGUHHLQKenyUtQZjoIkpwFo9LkPA3jMjE0E8arg3
vcMAiElBdkw2uN1hk0RqU8cyzf02NhDs6MtiL1sxPLYloSrByBFEwcQplCgyC0wyEsWLd1yYQ+up
3oU9Xv+N+UpRJrZ6uxeWIBHn4p38RT2/BOCnQDdbGM7xRFSdtLY07BNsFvy94/nIOcFhluaytiuL
u9hh1Uy0IHe0SWGDG4Hhr1ZiIHg7MxYWcXaDwQ+dJkkVrAzRplR+rQ/uYi1/9Mn6qdy5ZmEGstVy
dqhNBRzfhdPAC+Vnc0jsdGQYyW+rd9ONdTGwhR2kKg1cHKu1XPu7rrHxN0ys7VgQA1anS/wJx3ze
CRjNl0xXlUHJZ8CX4Wu098/EnZ59stC0AJY9v/UkTQ9wke68LzepFx2R4NRGx+j3rTHmHanvAMxA
1ZtMwn8cpBJ0VAkDntWau+wVoA4JojQi9Sjvt6a4Z1t2yDp8JgDvgj4KOqA5B33wjlUuO1lPHbXN
/XkL5JXqsHznFFUsEH6LDqo7Rnsst6jvya7WV8zdo1+IP2eHKLxlbDK3WPx1tqxetcBpFIg/0fcp
7zn9aiKQaMaQp+CVgGLh3KwTwPgJVdQ0J2rbtSTgTrVYBh8xlmI74vd7v2mvZm/3Zrq3Y8YUqV/3
h7c23c8bvmWLSiNwYD/TEkzlwe1eLoh8O82wXIR/vwTZxf8uxzWqkUL3TdQy610NkEwupnsbptFl
3zubecFV7vY1k+X6Z9X09yIARQxlsaqCtNxVN0spzUY2cUR+TUpeGDZwRWNA77G4zC1P0graBYQm
22UE27Fz7LxzDKNEgcB3VV3vpwf1Ic9l8dTkFKW1OOv0X/UpIpyc0PDjVrRYGDx2FX2lWQhSGyVW
WvFlaIfP801lq4vTpLhTR/Jm33ZvZnYDj2gcjMCrE0gB+/vtzRdV6Ea+TWKITL98JEjLNvS13Jyz
orIpIQ5rCmhtwwSzh7ovXsnL82pyKlWYfDw9QBNU4qzCNbpLGVlOa53JCr1TwxXhMaULWm1N93MX
aoPMjmXI5sGqquQzLWeyagbKPj6F/PvPAU/YP3XfYYJ6u2/FwUxeHAjhjSX/wHzjY/3eH6LHEylk
zcgrsOKKAyQV6Z4BjbGZhXL2X17EBU2C4zSg6Z0dcuSCsFl91F4VzP2GK4TKnwSxXmqbBA5NRO3L
zSf3cCErXxNGbw6r0wAkHG6pxNaJ1Y2PQJEWEmRuVBnFZYyuA1jk1sucYXuzsW4UYh6w0GxCfonY
47ApGZCM73FE6+c2kezmQ77adQWYogzNslUBArDc7c4roDv7wFvuW4nLhfyCKYWF/UvVJe7cre9B
UITnBWRDVINGyK5LYv154ZDGwzaTvo4BV/o+wBu4LTs+lU8aE42hWVduUKeWxElns9Z4PEgAIT+S
oDYv2Rmt4jQx+9XM9MMlHobQIsVlZmPZljidFNe0A+vwC8hSHC6DLliJY4h5/vWkQAYBE8csPlYZ
mkTlTu9IYub+Cny1FTwiwuJzGW1OeFf+B+xp4GJIbI/0w++hnJqsD9p84qU00WUXEeOPP+M2dHVk
8Grk5lMaZqTXAaCQcRW7Bv0nnWnnq8iuE/CthzglmZMKfxPZSURxF03UcTW4mnqoc3vdzhyC97vV
tp/NH6g1tG0e2KuXKuIgRHhTdt92EdS90s8Aj1yKHoZem+hV7K5RzFzoDjTXVahcS5GKGAKq5yww
6Nb+PJoBFrIw5VjGRsTBj2m6dobsGkVu90xIHYtV97Ar/mHRv7mrxNWvKUPvCW9pGup9E/n8Myqy
vX5hXvWKrMRyIlVlU5Tm1bnBju37bD8Tit6EoKGAiN3XFWXCNLwED2IswoJt/yRb+wwJ/3Rr8lsp
a/vrA7jxb/L8K8NGVR7KRhwD3yvEL4vbn+9+AkxT+aE6gSilArRR+7USalTO5RJ0YLdujZL/p1Fi
lq7w8UITQUQq/eutEfO7oTLnM48ALxlsT8uCEkcAKv7rEFLckHPOrbSwgoBqZsJd6SbY5SrWiGOq
HdJ+yT5OkbWspvDyvLyjdkGGADMT7aPerXJkmfMiYFQD1oA/evr/J9C6As+IoqO3KDrY58Gt/nCV
Ie32riKrC5m1CvAQC6kobwSU2EerP6L1Q0DSiR9MuYP/DJClLm6JHvWrsvNIW/vpqyo8OdY8zqcU
IMshqD9+biZwSdlLuv7qUIZXhCIJvFEBvRKhjnK9xHhrHjdXka9caZ/0VymTUywSBHUAQPcs9erD
BwQ1LbugYpEy0i3yHktYPAvU9HjDC7MpAGB+8epoXnevlDd6GDbnA3DHopnw36JSqLQUte5thSvR
MijZ3lmxgZcMs/3s5Z5pqn1yc1tHZzWuEtWc83HMSa0SpaglgjihMDcBWUkTrp9ysZeBhR2jmut2
Oub2BiQBWWMiqLnEiV38206J+6/NOVHYE6QaDirMc4mMDoqvCqBG/FuCYAzxOec+Ag7l7BovLjwm
Z9lddsJaUuY+eXYFxINm/QUgpACR9MGoEpslfFwahBiDPJRAmZKUZPcwPR5nve2n30kcU+/f82bm
y05tzuorX4Z4F+PCbzn5Qzaq4aI/q03L0uTdt9+A4oQd3m5MaqhJMcgyJgk37sKRQkydDEZRjZoA
WISL55oRdgiocfcp9UvL7WcTjnh40xhiYZfoFws1NDDUGs9670a3AZ8y2xQXB9fSLE7KYr3gqqjc
FhfReKSA2AqRwnIT8Lv8LGeOsHf7ZLOz9AqdPyB2kyD8dPT7DZiLOgr9XyVBwgNFpWqQvGyN4KKd
kzSgZV5UyD7TcaoQFZi8l0VtVBi/rgec3euMGuqnaASk54dIy8qATcoNYDC4NsywC09tosbTo0bf
v6AUl/jaMgOm0J2yfPvVDcyW1tHmwqiHwd4CzDxDWDwqkl6IsG4vGBshp6tRh5oGGNx3/SrL3XUZ
cUKECkWiyMKhFGJSCkrEoR1IDr5TX00EwKeKZO+NDEkmm1EtrR1cVPGMs6Eed/PU4w1rochYC8iM
qGhga3ciL7GWNroQkcH7Q6r/rdg0CnOMmSv2VhBI8Qy/HmOap+VZF6T41bwtXbvBC/FcH2OiAKsU
o+g8bc0sd7JKINrxPf9T3Z9j58qaTG17TNQI12E6I27bDqtbp/qAklTFSV+bbpXaTmt7e3xlZd73
GGMK8Z5ta42wgONpkOGEnDlsWIXwUAJ6c1zDdKbUZvwuczVARIWJRSlrUFoOvDajnChHOgp8QqhP
FllMYqYotZ+GiljmJdduDAZ7xpFJmS2Q7RlJaxMkCJihhgSzIuX9nOoe0zAJEiFf9sFfISZ4g69c
ats+i/0ALT5LPDzwpCWh707+NwyOXfgLtxbz4RgZbcbiIjUTToE2l1OUP8ZuPwTjAUL/HJqXpqW1
TjmS4BAB1YqMXpeAOlKK9a54xDoGfbJp3atnnJZnHvMP6l2ONbEzuFtX5dFZDhtQzNqfE9Uo/Uaw
XTFqicJz6duyuIkOtFPSpKuaLIFFNsVItf3z8Hl9LmnA5xucgWxtjOwjDAr7iFlldyDE/3al55jW
kpYwdxuYYiTnotZbrsHSdyhjJd119xz0VHOETpBsUXJRV1P4+N4ZZHpOS1Mk6XTAwCjHabsnZRak
y11hMECCukgS/VPJP/q2MnqYYe0H/eBQVRcHrTr40aO8XwNz0yBdteVpIZ13V9zfT4VfroDvnGD0
wc4pJWgDNE/Dr+pEVsC1xMuP2yprW/NX5BlAvyR0WbIz1YLtMbDav6/5PEEoTKjEZf6SlcrQr9Tm
3S/V/hT8Tesg/Njk13El2atiQopz3mSXDUxX71tdd/ULc1/KhsC6Q7Ah4VuyZjk7w/qu5pSihhbt
BUgElUeqGYQgcE2PX6nBxtnI8UBBmiFlt8hQdphW5EjC8xRqTrbKSCFRn/S9Kjvvcmz+ca2/bvxE
6lmhb5Vc3BPvz+BgPVdd3T6BCmon/DHAddf6FynRH+KSB8NarLkoaLoEWUjkP27MJAdnVJosObQ7
4hDW4JFS3OJpNbMOoW/HyoYtskYdcWkx9ORacJrxcTqx5uXGcW4vFE9VaG2Yg8S+ogRxvU34jWO/
DhwcsqnkG62h5HE48QocmNtaVh1sx8hxfkS9iuQEMsGbAx1fquv25a6xyojz4UraCjjkBzW0RGzN
Y+fO9ayVVOTbN3rwBo9jn72af7OLl7jF2oL4pV1n4Se2rjh02uz+iagrwHY2R6XgoWaOGFn86n3B
hiaz5cETpDU3nYkyi1Z0xb7KucwBMpoDtPCmVoRglvoFFy0DMY3BtwNF0asyAsMgWmaUb1Fw4+ha
NBs1N0z7dFefpuh3O2HMsC+b8Z2E4dWIi3kLaQkjcqGhvz2pO6I8I9jqeBEhRPnKthV6tZhMu0Yf
HwFuZ3KKwieZsi7WPm1lsQndZpzRUABzfurKSsId2IbMX5xJrTr6o+c9Z79GDWdeQ948H545xlZ7
NHQ9pVN/Or9Z/5TCBgU8kbcZhR4lxA0zjbhFWspRXgZnC4/dq+AG7bYMtChQgUCxNASbZUR46qfw
goqVDLfpTxLCQkgnTOzSwucRdTn8RwjsSaZmfiu2YHonfcZF/2xhiOO12UrmDFwDQHVyMN1KFe46
HLTcBdFgxop+MS6dpHf4RjO7s/QzIcaAQ/jVWuhacshHBWiIhuqoS0LcC9/ilylPVvFnAeBL42e3
Mk7EoYlbirRkZkwMhWrXR+ljSnaT9BgMoPDhomemarVnDk75ScMMyXWTYH4yjEnnF3nN0yJaoMcK
Jqh72n/7DxCe0ETp+wm0w7SV1DVrXhgvMyIibsMIdWSAeHbHKVPuvYQzU2PmBrrZmcuwWWbL/1tB
l+578sQWBdJnmez39T1I+1RbQ9Ivwk8ogUptLITDY8QkPYFVfhpQkayzv6orrsJpBfwbmEGmfZOk
LhRdavOMlGJ/664CdbG5FbpmuTqwEN+AZE2Q5FXbawpZbFIEp9T77OH4DzFZPT1XaFHEWwiddoU/
Ced+at7/uMMSK4h1P2Q8Rcwx9edbjuefu54Ag67czT8cRPCI/3u5tbpHyUDAA5J4SDhsPfsSpMy5
tJFze/wEU+1dpbPgtpxzGn+k+HomH0DPDf66JXqLTmi8Zi4I2/M58CgKJPAPorxuSEjsiTcwBY6T
nhf4iRMdMFsE+cC6xCsE9oKmt68s7iQA+AB/SKKjAyNV676kSdeqCMnPQc+nYAfraCRWuK7oGKnA
Y7EszMpHkB7nByqQYvRXSHL+30UNHcR+cbQVTVaSGTflqE+uQx3gy3otlzPAhdQ6h7rruNWkehpX
iKd+8Whozzc0n6cz3viXsX2TuKaJoupaLppHD30KDqT7RpqbEDyfD//aDtD9kUo2pynDgk9uR/Pv
6YGJOh+33nLz25VoaqS1q2aGR6DsUXt1dA/btDiWMLWGlcKLKX2UOz0VnjypIQ5FWvVqZe4D0nLi
K4o2RTL0Q36c9pWL4iL92TSr4AQ/LRI7pPPlZ7cIQw5zCgjk3OoymEDnMWrezVcoESk4LXNXCr1a
KxtB3yS8NG2NRYwJnRbo8X5ntiRr3RBxkEOjZGqhkjhabuJz1flU0pSUL2JzXAOa6Wxtf+Uc9rIv
lcuDZDTZbUWFiqgzC3kwlr4+ho5DvMiusyBDlz5G271FLh5WpjAWWMoxda6EnPnL4szL1fsTVi8w
YNlMzDuRvz7dXDF3mmqLmhYlYTM8+FTRDqXCXe0bpX/jOpdks4+kTiyONgeO7T7j7V31rFi3SQZh
y/fp0Wyess8JmawmDujhBlVWOdodKscJNtkzM6lTvJwxrNBFjJjONDlLsKyGs9D8AG6RABipmH9+
rzYrLN2VeaK8yycQ4/WoUXDLFsE5x7N+0tzYQw58Yjg2pyhse4KK9dC3FhBLkIUQmHmI16oaZ9sK
Pu4zlECBr3VILlYo4D9OvY0OAGf2DMAjV5B9DvD9oNJ2QStjeOh3gCkiQXxL5lR5JCvwXmsr0FRJ
V+NYlY3zchYDgRAJPIbAc5eHrn8LLliXpNoITP/zS4RYQqhzGgU6DYZMUv/5AF2I9zpEFzlNLEDd
QQzdOETtcR66vz1DQHeKb5z9h+MHtlQkM0xh5O1qy5NsWTS1TWIpvQeQWqcz5F70Fv/QnGBShrcx
AN7Y27zowvtvqQseaqzYhDYP+RZeZW6ijwfsW8adP1N8+dsoYeaKK5IjF2hi6dRt393h94e3OZ+D
l/7xnaTdsuKlvejRS3V/dvKE7I2yqSnV6OmaH/rAYv0XbnNW49tTDwqStjRggMjom0gZYTKIZaEy
pAgOeKkAPzzlXIMTrcKmknhjyYzDUPntNm2Nq5/LK4kIc9+wTwQw05mpzUcNIklGu8TvHb6QYQOU
V8dLtvsZ8c1g9SiEJ2lKJu4ZegO1G9nKSEFQnL9jLx6arnJzGsCo9Q3w7wr1n77t70D1Zhy5LrLX
FVuWlsKLwHR7+GuYidhGuoUNp5/VBOMTaLqUKlOALU7zFh5rHHyJ1hApmrDGcVTHgxD0bTCy9Yul
KSXiIdEtdyEeZ/2FPug+o+zajCVD7tUFd8BtP5A2shtIhnq4mXQprgHs9i8MiUV2cKnBtHo4c16y
MFZHTJ4/XaQW+BUxCWQY0mAcllgbmcYvqFqj5m1dvIh+ZMbwjoRA4VnJX+v41uDBn0bsMXbt2PUL
z45wIRckUvcGPkmKafUz2t6sUvM/WbGTfwvi7icyyasjjT43k7TpKyeqjKubhgnYK5jyni7nlLLS
ixd9LI6EYU1/5k+OKYdOB+ZFcsPyuds0EPcn39F4qg1mZCMMN+70YoUkqC6MtTHSdhGXod3FVijv
5s+EQJKObJt2XWYSRgRqO/YTXEw+Lcp/KTO+Df++R8bFK0tJXoDcSmtNBnUH7v5k8FByFmwxFt1E
Xi9tkzCY1Qc8u1Kuj4rKMb/l6d/NROZ9NPlGX6RZUTA7Vvj/9C+9IleMfcxo5CYkGxzuzHXUqbWJ
5VR1lH6DpZxq/Lx+46k/OkX0p8M0Q3WklL5EgT2ALMOyP1dVlak0Zgw0RKd7rdztmDEhwTm+kkf6
F0u+jxzuv/6/sLj29K7n/ioNgKD/Nkolbg5AesWvGS/v6YcQdvFTKwAbbO0P/IgZjYT/geXtJoEY
CZch7OpS7ISjtaUGw7EUB/gE2Y2GiX4TsnfRCVa54HstpMU0JcJ1xe6Lzg8kxIbORIOJpkwF9Dtu
ogZ5pU2UNhbZDU0uy7SzKD60q+jNvXUITQ6yf7wVwKUjUzBDy+Hj3bmOScVY3XHERYP7U5UVAfP8
KLpsw6n2WUlQ4P1aogXl+3oG3hDoY7mM3g++4/lvi/9aNVpWnuYeQ98kPxengQIiN/oEA1SP6lWs
1hgDSAyl0jTC6faY8d3c+9WVT//CRmGds0N7abtiGz4GCZewFiIJ03tjJQ5+4kGEOsLkXMwx1eRK
NEkSnkqmOAe07SROPKKWKQ7vUuWZjQi1Z6IJxpaVhEoMs/ilOkEpDdrxlS/JWmuFtGhjAyqwlVGM
LrWiKcswNYQ/ooq1tKY9hFpXimRQOIyxXQwjnrM2Mie+4iTR8AOZB412VATFByuS08E2pK5GhtF3
2/ncsqJLDFcHR2GRSptBRn3JCgBIobbf03kLPGJQfzxWnbuPcwkrwdChg7DbN5+de4+RM4BufECJ
pjQqSr4iWOfWQ+gEFRjTbk+a544llwH49OCaPMyRL2wCDuz0E/H4tkSV0o2WzyTONmxyee+LD+hu
ZOgKwpZ3PDMuCEEob8j29udPgaNkmaNjug3Eq84XlMCSRysSr8yhbvU3yWxvfFJzzaoOS91uGMb/
1atELAqVR4g6Rlw51AHJpGe7tlxPXsutSN/f3I0+SD4WpJqthsWXXoQRCvxsNWLzKVh30qUiqcas
A1qLEEEFeK4VA9nL6mi97kY6iFAefssIZQgCZd+0rdOuZl1G3JkOKTfSnyGNwPlrdbMFimEM4vTf
56lb4UcgFt493iclR8L96GwnpYIw/21z9POsQ2wuAGaF4EiqjvkgsCK07drLemqcgB55mvB4WNbZ
lxrl3CvLYVNd/GE0B1fraRgTF+Jwkks+IFFdhkcpmrxfg5CgBg2qnucIPuQbqW9Gzf6KvOaJMox0
6LrDicKpfDJP2nYX+NggC06u0k9r8qbKaCArv/ywpt3yDkTj3X4FegJ9kx2CKnJzHavSIWtE7+OG
Hjp+PHmDWqnnoa4kDkJTZeUMNONV675/4QFBwXc596HQZpFaYQ+9SVW7dzz6Dgrbh+8zrtpoPcRc
Q9Xzc7pjksbYp+cCvj5j6Ydec4r3fhXDIFNdojih939L3IUx40fkf8Kkqxsj5+Z46Ausur42Ff3Y
vhNXiJynLC5k7wTXOnmfdbi2gM6czA6hGywJk0rLcqrfmH/I6LGKX4PJtH0Pa/pO3thvFfLBk/Y4
dDsrbubUF6u7dWHzgT0OX/KsI/O8BdL/5mrY2UntdUzBOebMItZFirWQUqDB3nPdtmUFl1RxVAQ7
BU/+LMANQb2InBt0fGQD3YAgO9nzQp42P/2DOyC7JWOKCHpIrEYPptFgDIL8sdullUzzgykWCkGO
OPMVNlBTyecGPMcQviPtDH/fZ+qf780z/jnBJJvBrKzMuF7mn2vPKtrFXtab/iHIxumenNDGYvWz
Jt0oQJHkrvZajXEqpfh5W5A1qN53IBvDIy//oKLZRKwPkgNiDNKjYftAk3Pe1g/U1W9dkCgDOsoq
EYeJx/uJ5AsafJ+xjPeFNOxB/XxKe0dFhQaQF4OWgwVkEcFbH0dCgzKtzbAehfHn2NhiOcVF9V6U
6eIDhOaX2isOqLX5I7Pd9qQQNscjDnPJifRMeQwacWzj3IuyjPrk8lU1MyAsOERzIpU1wGWF5L98
9c6OGtb9jSMG8uO337D/+6sFTGoP6UiwIdTg9ETAnfdO8D7x4C4heRnZB3BpocgFNv4ROl82oMLL
NkVNNQn6WvF0XfXZHM5oKEptOCzBeEubiV16NLW7hCpaGpUEsVMaYKjsqUj6DeXolAOOUhOM4Qej
u17FS7vXeI80VsNRzRreYvR99t25TO+dp51rpRWcNimIA958KK6110dkwMsYhARgP0ZeqC5qHhPM
l3wHqa/JGV9kPBXugquAtYrFq3P0FqgTjQtVAjSXig/lGOkrvp2tNZ4iMJrHphmCI3zWeXFx5ErP
5/BXoAul2svMdvWwZ6LvKFxcOhMCi5oyjOpzU0J+xMla4HcR1/0GEdpgYElFcsHuOulq2Rug9CZ+
xJ8oCTrtC+YPJvqCE7Lq7l5PifpbiD1g4Vho20pAC03QIdBy67du4xDJ1GP6Tnghhs/DSv6iBpu/
pRPyfiWtIRtJTYLNOzWKZnixf0ADpRa3vt24GQ56V7sAWcnh5tlNgmmSfUc32FuTxcntXULWVKwT
NDrP88Lg6sVIaNkvXCzos98C04g4R36510L9R2p0KSjjQx2qrHyY4sZwaVpUD5R6cE7LFFwwcDsh
O96yaFsXSAV35drZGZE3b5zdtKQZaU3toavKjC9gMspvjoh/nR/b9PaH9uuQXroh5gpJpQpOzVFr
HEBkRJhyqchF2K/gfHSPhgztFiqM2eo0DGLQ8ZcTxr5OJV6ugWCh/Tf7gHUbXHRqBM1Jgdbr9OqV
PaTafaOMvC43Xke11Z3KMOMKbITiFNTH69W6nQxin5Ukfi/kBVcM02jKDKjaxZ4o/49kG22Cy88m
FvWrz+6qJn9WC4mTo9qw8jEEmmcEWiQbdxH0KOj1C8mXxc7kAX2gW8JR13VjyyVo+pRGb6T9ap4U
loA8BdkufR4smW/tvcxQyuXvRQUSEDT/67WYbj4+8r9CKMP0ExqcwAxyqvMwgbFV2ugB+sq+k0BF
0HTWAB99L6BG06wmmIwpaFEquFPZcJGgn375GeAQ6YoOWgMiWaVQxmjuhc9zmilu6obqgBQnofLq
QRaU54ISqc2qig9Qf1xQDB2DQusXc+RI/9dtAFMmpY2VISlXMFW3NtnFHkLiW8TMaBa0pS23YuG6
wcPYiSA91+nWHepl+edojvAO1gSMMQw+/nFSBzUWm5zOi2Q1/8prb8fYrtUyUXGUmfzeo0VxwceC
ME+fUdeOqsWt5qGiUySJTGy3Yy1jXHeJm4zfd/CY9WHBOZpZMefEQclqRWh4Vkflr2fvNx3DVqer
EYCtdC7ymBHmL/vWCx9Y23Qu35Ox9K/jIriKRRAjsesKBrvXijysRMneprxv1xPGAwfzGYEEgpZv
/7SiOI+wHvx9fbf2G7EaLFh6vzZEPMcEc0l5CvHA2gNiY2LLEI1A4P7G10qHa5GVYaeHLUV/mP4i
xr8KDvgLQUUovuh5GAkyiV5FUgyNW3MRU008nYeEnN16npntw97RVUtiEkX1Wy2Mz8cEICMLifzS
m4/Ah/IE6nxPcTqXkCfQWQouWlISMLTN4PYWLeTXKdF/XRIbFzVq+a4YZ9YHsXr8POuMlDrgfUnz
wVq+E6jWL9Zn/QY6kVdP52deUTPADRaaFqkRDex50LU584tOVHnsI7J2fkzuS/lfyMtWCgX3r3gy
aaeRq/n3XY4Tmko6jq9UDGrjksF1N+3gdBEt6sOi2cVn0y7pQX1amv2PGp1JyS+JZxMVggfw6zWU
D+c8TDw/a4rAH4V8eWrFmw6cnpyseLCwSzKyL/xgCa9Ei731nBepjqDOe/6nu0CmPJhDSlbIccaY
DLElJmsaizTG1zf1NDwQI1n+padf+VDOOJ6/3U4MSci8wqxEtClEfQFYods0YdAbjdc8tP3Ktz0F
Bd8n6lXiX90GglFAl8i/zRcCwoxkEqX87ONwoM1ZdngNK/Z01+uyfb4pNcHIE/EigPt66Jpk+8op
ovqjZ17FI5nKhUs6JH4NGcWpKebsAX9hYJbskZe9jtIuv5KbXEn9fWprazhryDDaNnOZuwFWsTcb
3sX5XFpNEgdGJ/LkOPAa/asJFzc89BRAWly/pmnt4M5lwYLlgjMKhXCyqHwUfgVrfI6A/P7D1CFN
w+r69Cpk8036BOMBX+Cr2AM9mTkwWQ67NrgMwGjL3GGyvvULBTPhhHLYTxIl/zGkxH2YqtYr6N3J
/CTMgXos4I16S88T5Mh/XgU/xkXAOS0s3X3YVaCbfZW7PeGD9QqOMAUwXsKNYuLEyVOGUFbcmO/w
4e7Ehq2LBwZ02siLZ6yY/J0wkZGaTYpRFXIYmR1GrcUVbB/+RAXssDqhkENXhgqQvNexa/AcB6Vm
+nss9RDHTw+G/2BjKmvQbXSSEeDmk+TW5TGBggVzCEwbsJ5Oo+uVn4P/sWRMqDg2plZn1M8Av5+t
zBDlTvtKDwtjN66PS7E94Y8kKlNYdh5CAoy3ko8ka/grYp3Vjzv/qaUZDW2CYHfYtDpwQ4paJdUU
ZRap3ksFY7DTasRy6kkkRxuGEpdcjkyQY33EiY+3G9QMr9RTSOEMMjybHyMK47tY3zaeKecwWQkb
kZKnGjCPDS2TBRDPj3OaheB1NjOWBotpxLVsczOJ3vdV9AiCyCx6+Ktpb0BF/tNi/FOPWuYZcrex
sZX+jnwi9U0ABBkMqsra7E1rqqNuNfgoH/rW2VV/mSCgTqk8tRyOxMSsT77P4LQruXkW+Sy7FyAV
XXhUOFP1KGmu1F915QIKWm1BkiqLla0ySRLWKILj9zUhHgXg68siK7HDAsrrJibZAewLOmgmH9uT
e5Ysq+vsBAt5uJBxBmK31MtIgkA2abwjVrqytegBlHj5uYC+0JuqEM3N51h+z8a5ILAxMyJrjsWG
tQO4pHpyv2n1HklajPtsuhzBQ/Gkp1FZAg/NVlFXiFBCivbFk90gleMx4IVi9yhEYz8LDEz+B3yi
eC9K5ON4XpWxVHPfW1XB4M+ayhjR0WvlgPW2oO7yQzEAhY7oUtg3UK5vJ8jekYpa9hDJHG63yh9m
hmariIaYjunRJSmCXEaf5EjbRwoHAj34FwMomH3Qc+r3iU4TFvNVmG8BHn396sedR0DYB84JxAsL
YtMSEzZwMpIqT8iJ2tiLj/ZXbuIMvteNxv2MLG5eN54s/bi4L7/edCuRw83ihkcGjSMebb8X76qa
WEY+V3NRdzhz4R9sMRKCi6zUl51bWazatca6Zous7oN+YG53XACh3q/e6MEB6dCjcJZ8aGvvj4t9
B7zLahJQzDU7bWkQZcyabWZHZQMdLwgN5GdEM2+h6e8nMegZGkelNGDsXHEtt2nD0QFtxcrTj409
QIKalKhBEY55G9NtwK7JiZnzs3NVYXB83ZGnuGUvy2gfRnzD4ylnd2+tnZRggRg8qLEdIZr0JIb+
cn+6blw5Yr1Q1inot8Ib3fGZcHSV7F5N9dj2pivmoyEaBm+8YRXzyMf6Dx/+VhwVssd0gy1E1yM4
D7n6K5H2U4e1U9I5COdIekQVALtirCrtctVjYYsEk6NvxYegJ65Md3nkRQEOfre3rltC+1DaR+7V
f3L8MUN4lKY/4AV+HJY0YLNUwMpOTvkcXQX0gOS2fmsEsaOTgnzmwrY2ECl5FEfS+wJKGIGz0Nqn
CNmygNCV3QSlNJqeMXJ5rXcgzZx7r2r/660AkIIjvIm8lP8idySiKsqWSMazbBv+QMgw74TQpUcz
KANYtLVd7f137Flx71CrP4y5+JMtRMn7Tq4DW1ci3C2FCMgj6vuOm43wW3fAKjODao28AQsPnFKS
tFrX2oQVWinkLmtX3BAaeJ5HbUsiLJqq8tbf/bbPdBWlG0M7TyGI+/9W7LQymQxc8dpLufZxGNzG
4m/irnm91tUJFF74JpzT2jDsp6UOqqtrDMFIU5S2WymbxDA0ssm062kY2RXfgFBIyX0FyygNP3Du
1paGoNLvyuUieKsrmjifuS81EufdQ5PJT9m9REbrsvcF4TdJ5wt0CIZ1Hh3f5d9tvajWsI39l0ZT
oPYAaiUp2eTfXp6wMKRnkmei8p4tTTLLe1pBprtiq56Sa8z3vBBwS8l9KqYtQGBY6LczwNwa8f5d
A+APKAhdfqoN/lGqhpm6AkZ4bYhEuHoV8Qy2I1gitPgzAxXbdO3tKeEOnOenHAi0aWfVVS1GdMWp
2u1j1wcgQ2oCGgNzgv/anC5iNFq5j0qhsvxqCHtM4htnzjNrdFyvtRylIxRDU23EKeiib63hj6dm
5zQqX39a2fpEc/RfI+mHPwOV1rm8AIK4r4nKdr+yI/tkaI0ka0eCQsIsrI7O1v1ZzSSiaZsN+RY+
j56QNC97oFUAhCzh+/j+Ur+fTw9ebsP9fQKgazaVCMOYgaNA9AWjwd9FxoGODJr9rGko/i4wTAY8
O0brGVObYdPsFXel0YVf/U2pHQ+CX5zGcgqL9aLGBI9cuRwoolYFc5w6zrj9pRIVy3ObuBPmKStC
BkyVuqU5velTQ40zd+CrBaDlfzqB7kc/Jq4rg+4mZc+kun3Sq5NqyZXw0TXnF/V0UpQccGrfdkj9
mpNgAGJK6eI8TprNb5aH/sdOz61ZWiHMoyeYQr5PTXqSevyZkixifyFNHGw75yluc8RuwOOz30w7
Kie9o6fZEfrR+kVHixf2GEwI8F4T9n/nnn2/Sjo2qvG9M4eI7MfyfdIUvWb7NwICU+xyEv92E/vi
FIPC8+SC0J4rL6lRkg5RGomGcnfat9f5+nXxa9emwoIoy63pysbFcDIjTbGpPreoi333V+Keytyp
fKlO5EYlnWrsTqqlrPsmLhUo0FpqUbBrRUKQoJJGNKm6RgpYW5Ynki10G7WTUBkvngrh1fw+enWa
V8O20LXFIBBmYm+uISPXzyYQR9zpJG8rdT7WCRHB5FeSr4F4t+3QqWs8dG13UvCVWGD4A/5GWE7v
CajzGxtSIGIMnsKP3puiGTVGr8UjSolqlnZYBsOvwBN4wCeYm7+ZH2Ex3BzmUJYf8qeA5Sg+suJC
SLc8CZ4x52VBaeWq2eScIXWMiCCP3vWGVTqD0yM3C8jPZqCuks2HJ2lRJaxsbRaO9xMBhbqU3HRJ
jlSKs/0/NwLRf++a/VW2eGG+S7UH14+sy/MVihEfkc2p/vf7sF+vDAIxVPnRreNeNidjG8Qwl9rE
bBuvar0XJEFraaoUPRZQ2JgNpq/DAnicdUVRrqckNHhqbNVCvW10yo3+inUt7A1N5+XN0wfy9eSC
0loHyBhpuUcq6WE9ejKh0sMAeewsnAtBQ/ZBojjXDjzmbVOOnJWoyipby2CZ+IwWTtDDrB0mZUDe
paOlxhXPN8su8q9kAAaduXzxYLt7+mruynAo8tzDpLNj75QRV5tVwR7xjrbqIag4UeNf5LZ1lNwU
WqRVot/8CEFzRxssqPbn7qxlbA4/tmxGtFekMbODrnvrILfEeb9kvaRbYSBunnFpKXKleQ4oR0EH
bE+Q0LzJxDZ/bMG+KEBJgvfB7iwVu9bmI4aGb4QXwvwvZdEsrAM8u6qWepqIX/DWNhCln8o7VLho
SOmBUkyj8TTBrJfmIurBK+g89+CNzxsc5pjoByCHhAOZOFBdN5gZkhuj7hHN8A6jLUsE6ReLjLy7
YsuF2WCtAqrIrdipxgedANy3nk7sq2vzPpqT4+PgHhhJ5O795Rkr+zm1KucSTpu39kxNsnkKgHiC
o4kaHnGtafRLh8FhieiBMVTKOgEz7gAEFATn6/HgpKs/YcpUJo5AXiFDYp57/JVZw+yLXEsMn57B
hd8x1YdOrjcftbzVW8CmsQxY6FfN8rIYuv3UAgDC2c5IlXx9yPr0Uv8jBuf7vTzPS8U8GzkyS39n
JE07soN8YJBB9cO4UGxrz8ECv3DcGGhQhkYIlgXMpTq/vqycmTR472IaHp9qXlR4MRUBmo+P9iE8
f+ataTQESqOJkzWapsnFuwn0mHnzVCJWjlMiiztkAUEZVIefcQ/5OhxGV7PQn/H/6rKrIntMFVRZ
/l5EJr1Dj+J2WiXLjAQ+GB8q18LdsPPD0qg5AsaRFFFRFv9CBzgzMdlnz4U5+Yg1VB1Vzt0luW3+
320bt7SgwqDJ2jN90kW1LIzfPNWJI8XNB99Qx50Oi5isamIS6pioe6xqgaUwx3/CgE680GkcGpyc
DX1J4euyYpwcocyeQvL1FcXRXFu3o/oMlih+VsQA321gqwVZAAPAQgtsS/590jxeNurO2z4yTK5z
C2jBrFL6MEY44qkF3EVMlyuu/lqPc1SAvYpEffFTW3D86NYWvPAcfP4sK2f1fI6w7fCoiycT6ejR
TgAm5mrt03T5d/1OmuZAveYKXkoTQ3Fp4tnYB+ncvl9v1hex87sH9GBv4b7939ffj/kQAA88HOjt
kt3bIzhtkfE6wLGWaXiO4bz5wKagu5TqoKQ7TJ/VaRgjjHdr2e91fM8euI4EwfYaOsak4cGVjSDX
aLqiAjVROm3jFSJkNdbeR+fP2yXzP9iy1sZ+3coMX82dXlAVK0Q2YWQcojnhQlnbFm7itVrLysoo
+lbmLdjZ+Q8XbKwa8svKuQ8jappaCeEYh+3PoyYUaJIWYsQnws8QhGaeNede7OWcFeIrEcKzJKSp
2aqYCXeuVlXv8WIGm2Y12bjq1cUZpcou+M4IxQf+mxPyiGUODqAmwwK5C2I8av+wZku9uvJg/NYG
ZABiSBVtmm/1pxDzvjHAAuJl3Isn+SVu6bR0ZxP11DgGVqg76SAz3OHeG4+c+bhmSKReIhVCvEeq
K+3+QU1xgL4ghUKB4B4r5dWBT5kjki/6zoHDyKGQqITBt5pbwf+2EEuIGtUepbDvaxolUKAEnrpg
ZuTio5T/EBp+B5FLAycKXvRGNm9pnBZa8nJsBdcNXJPb5hvIHbTLNZoU6XoGEwcn5P5cj01p9Mkw
YJUJERJsZZi5N7iwYxNd3PlaWNQnHS3tMZ3ibK0CWR6CbkiqjkUsIl75yCDIsPRMAgGbKPKJmNCl
iR8V6pWkWjWY28off/a62TWzdF0uZk3Gz/61dH0RuCUOw/JZg/9JUGm19raVAjgwce4JE7INLioV
9fofsvstVBO4T4GhksAVzrgpVu7fBruo1IFmOPpzCYEnGEzVLhot2vnmLKZmReYgyh+UiU8dk4jP
ptyRJVXJ0RZsAVvGSaPHigDXcjlRVbytCoZ8qWa3uSCs8t5NuxlnCswUdfPdf68K9iqX40Jde1B0
mUBd6n655aH9rXid9nCsL0f/mpgl5/5IF8D8WJqHOjRRmtgfKcyJtpSQHZxqPpPPUcksROyqIkZN
/5rQtEwbnwrowyVp3ync2E43/CHUBgIRT/GJ5hgJ5WQiWTfRZzvUlSMG/BojciCZbuNA63fpMBJX
5at5HIOhXj+I37ia2LjL9hUCHLSxV5RNS13/kO/pVLa5DyjPb2yM2jBqOB0HEwh5+mW/WwBqN2Yt
B4Kjx1BYsviT2Vw9tTlzrS7vXtq4k4CRoZsK4zQzMO2xjDKvAUfL5b0X/v+ynP59LPJKu3dkdTCB
xvC9vdb2MgMNl4Ezv1NAwl1KRFw75OBJkLLCwYCj5ZwkOuMgbOL7ptKwBJ2PoO7WPCF0aoD5Wlvb
ehUMmqt4QPKRUW4ixi31qGJIW2G23fHtWjowwLRuh3knofPiQA6D6OQUYSPZz2rDGLJaVKkWUhhu
KbvUnfH6vB/vwuSxkyf6a/7CRhbg3bAGvvJG8AiZXW+Ce4dY7LwNTKf03S5crovEg0UgJwAc/vXm
WAr9s0ICAUN3onDPrtXKhyBAeXCCFsyCRZ2nlqpih3dAOPlgLAJQO3ay2j2CniQtjgXuTNQec/X0
ClrAsH1RlVGKYxBglwqLadw9BRWG05C5Wlv6a1Qd0nrCoW9kvUlO49tcgakeU5qOlKRtzflDucI+
CK/hvpQhW2ojRZXpGzAhIwYD1wqOdWt4e4kQID7AzuFXIakrVrI+8w6wU/fuBC1LRFbuvS3CmknW
/Y1YPE4DRXbfb0EYA3SFko4ujnffTFqVZRkvQMkQKJgaLW+lTgxSuPYKfbEaOi5YBwSv6IiZeG3P
jVxHBBhl7D2NB84xuKKBaEcKGgbfHWewmO4zgvDmvtoPRXwL5gbDYV1Coc4wDuh1rOUgkRwKf51C
NwfhgrGkvUgFFbaw2SDTRSUwaeO1lQk6apz35cp6aAZFr8oSU5omSZPc8dtVV/HY/pTIZjbwJelg
royib+mbIF0CUtmr7IzHSGsMP6X/RAqcDVZXi6evAQJvihx5ft0uRVhTtTrvMx6JyqahT2GUs+37
ByGZf93bX36F+q84aJDvj7KUmRCbRSAXYjfAT8+InOTOeNgxMQmh5H4WOroyH987RDUV4zoKaArw
ciecxDWzTfaqhxnhGz2tqqQy8/LXmqm3/VgQiuYVOdXJ8jXBnXLKHcgUAGZc6tt3DTTLuKDe9v/y
R6sMvZdvzfQU67VPycAG6RQO9Cp8ZpCiILrIT6Uf4MjCLhj6J6M9AgQOIYjJXoeyODfPYdz5J3Ru
EKZVSZRalD26behfXjuIE9yA9n3zUkGUGRwpZTooKBOs9UN+OBnt700CKmjjT41a0iR5d8WDUFuj
MdwGGwvMy/CTFitY9bky9Elnm0zE1ZgXg8J6S1R9BX8tMYY4cCUco6gmghFc/IQ6PC5CyEvxZoJu
eqVA37XAaW3QvIDBr8EK7iFMMZz1ksfLXxlcCzC+y0y/agIwKutYxuDR0upDPVAHvB5U0OHTlp1E
AZnvzNtx+KX3XqqFrAw9a/ZYDg1pIbnWWaQHaOaCcyP71bzwxD1R/KyyvgJ2PGXTD8THZt9ngDig
LbHqMUFhmQ5W6AoJASRRGQBoBTo/uMqNKGnGvg1NkFzqHvVpPbezTGIPbPOWgfjjfh/FteNJAlsE
t4862TK5P+d1jykpCQiWif7LkZlkoYuwVn1qsh1oG+kttq5qElrbCBXE5BW6dcuS7z0x1J3Ws7+r
z6PNl7MKcqSNRlaNmutn+vYo8Gj3ySWDOP/4hcfIIJahrlkupwAtmveD6omRDpOTB7Eh9yLUv6Bj
8FIw4K0HzpnNTQi3GtEEUIPcwDnyCsCTbDcxjweCl1QCQzpqGy90eGzkwnCRuPd7ibghWEMVa5mW
pwHkQuwTdv7IWmXg3DIRGPCNtcmVSWKn4EINW88/s060n8gMwhdY001DEODwMaaFBYbctBWc4VMe
TBXXkWSk+DkHLHQqZYhh6aQJ/BU5WOGJJXst6XI7rlD2vTAXVzaEBcQPUCnz8Fqotnyu1eDUs65G
ZdxVaQAYW5OPkyajaDOpdsSKhlSke4be99BGeXQe+6jhzcvShC8aFH2ZntOVyj6Zq0P+4+0aB3/K
mwt7e5p59OZ9MWOjpWG7fMuOJ3dZAioeDZw/uprkzGJH5ouF1CizSXqirNbeJdKIql/lVQSIfcnH
FrmS3opS2qdDeRypz4oDoekX+e85fFElpbnKwftz7LbO3GubdS1WPs/97n1Sq0/fRiA0my13QDPS
KOhIP+ByEhSevskNOQAQ+yKMz+W2oqkbT5hCgDAmWlyZ8PKYt1P8cV/oqWPGBhNvwI6zT6HthqxO
QvZgsv5Jd5/X27JWaDR8CclZDwy2bQ+q2Sys1aQKxOTzqA13LEKB+K25C7n6+P3m3i031dpNheOF
OHXHTPfMwD3++RgwyMblcNJuCe3sZco4k1JRh1RscgBwJkaqsc476p+u8fFj1e71y+NjLhs19knv
LUnKEZrC6MJ24BBw07VI3vO5uLqdw8XTfW1JLHyMCha2xhciwHDapAYmVHl+YVpydfsQZsYcg6Y0
RIfC/eYcejkI698EnXTk3K3kb959cs489EJtDnh3XWHUCf0KaKOtwNiDj1nXypTkqxaZzdRg3dks
rbj5gdM0xB1VoXNcX0mJoFJzhnv4DGkiI+u7s5vnWQwkjfCYfZqmS0dH3nYfpD+QJRKJClghEZ7S
OK9tBUNz63EgYXHV5pLN9lQzp6BmKsk1/L8jPoWfuRVi4n5pUQi5wyPcdJVxOdh8Q8qoo7e3PhUa
U9FzW4EeImm5c0BJroJa5vCHX5t4aTJ5FNISSE3sFzm6poyAU2srpks4kC6qcN6HRJNV0TnGLjF+
F0ckOOEEQxexxLg6/KHwPRb7Nu5VKv5ki0hV1qagxMZQ1DyKRa8RWgLPFvy6RJWGcFhI2QJAhGHQ
MQAvlraONzSnvqaXMmJegRzY2kfVyLH/xkWnsoi641joXpVoE2GwIxebwBbPIlr/u30JAtyof90R
44r2F4qV+H1AmPn0itiovrNeDP49XwIT7ju0Z2CoFt8qpuyNSFen1r927w8oLYKiyf+npBq5j82u
LE+kD/z2eyTCEmMDFmaNRmkUpRMPA/3gz9wCTLMkFraA5AsRs6nXzoBc8dObB2buD6pnbXdPeyvW
dAqZos2HHkp+OLSHuZ4O+afh33x8MXrSxwkxd4qsIyKO0Xw5H0r9FBeU0/by9WzxXXNXJM/hVEga
ti1iMExdCJZFIfMa5ynyWS6beRhsO8dDLqMeHGKP5P5moBmycF+4ZYZsKTzvWeg8f+pJChep3nwW
5GxLt6aKZ3Lg2JG/4UuNN2LDakxft8DH5JmmCcdc4/C1C2SfCmRG3QTBB2qLKKUIGmBt/jRKwFst
zgcTvDXccm7IJnlParGz+95NoFhtbZd5uvq1rOvnqfmOi+YxtifbH7PEO2ZJH6I/AftlB2lzOOeW
fU6XlRqeFqm30Wstb5ofYoipzNu0hOwYVTqLRqjX+vGt/pJGN0pMnl6BnFvemptEBM2K9XPOxJ8b
8iFuQ9O89FC9PgO2mdUWeXyDW+f2wIsilPG2PzIHKnNm99GxqGK3qNC6zbRA8M5WvTI1mJjJHlur
CIf0CbE7deVQ/6VJJ8YYMDlaNUSjmZOznyJvwX0VbiWzaZ/9nYBq6CheyAlq1Qocu9xyigtGUUuo
SSsW0lkbE4J1KzGMpr7D5f5w1AxNcZNr2pyEgpAyGnY5qhyyPuDcYwuJw3n/bl2YmzGnAaZ0Zsq4
LS5tiy0AlKGloEUDFCDi7SpMls7ADfJWJJ14i57JezuBhLAuvuodqKu3SjUFE1L3ctg3HwMHeYlo
nkJrLjY7Qxxic0w8znYOtZeM33R0vyuoA+HfeedpOtxnj+85yIsoSMWSy3MUMF3dWVs58rg3P/ZS
2+6YD71R/DT1B4VpdV5jXa14DCg2I9kDL9rd7OsgC70yOjXj/u5ILL1kuTftYGtxrrUcshoeORL2
LdVRRHs3+VpdRdYuj8LaY4vcTEVyrMO+kdHi3LtojB1+59qGZKSNg5Gj7Wo3ENxVQSKHTyA2kCvx
qTP55CFTI4NVh7hhEMeNrhEPFDFfNMuEju8z9Osmyaz1MOVVDXSNtGasuLo49N3YJa839RpfotVE
o2F3GgIZSL1Jshdx1sM4tbSrpP8n1nuAtRCjOeGJEokwPdiWL2ZSdauHZXi0b+NYe9XG8jQBPSGR
mDcFFXmYzHlnL0YQLQ6++3O6E2T0/o7Ortp9/VfIE/MAvO6SUgZhsxqE1OufQbEXB7fRhyz6M7S3
EqY+iy0JFw3DXu4+Oe/ZPeuZaZEj2pCW60vioffmZJjh5fo02Ufj9xoY2lwIRVXYIT3lgCCPnhIW
tQYE17jxR3ZQsA/t0Q/wAakPYVKsH+Lb/+D82n6DQ2PANo9pzvHyTg1cV8wcZp0seRau3S4YRV7y
HcQ3TMKuwXvKfc7M9yJh+7pQQxqANQhdHPfZXRfMjRHg9JzCU4oPBDiyqHaslp+7D9TdYPXocmc7
z6+OJQuMSx8Gv1dkRv/acN6F2a3bY9n5BDRn080qVQtjp69ejosYivGJ9ImHWhZYix5G67FJa5vh
SRAwM+2k1jUFpzwtj6e84CvN8dQxHpw6JAXG3HJZZSkWjKQWfur9i9Sg1v8dAXSUfsgUJD48P5MK
FogTXTl822Z9pkQMHA/nezZg1GvBF3djO826pNq7LPsWs3NkQLSyOi1XZSCaS7KoEPp1GldH4IWR
XsPPDf7aMa8rFSuZlAPjpLa+3irzxInzuMqc/z/oAVSyBn5p7thR2J7+bKexLAFRx8SRyJwj8sN3
etfrT9Fc2RKGI4n3O15Q+xpY2B7qlPlOV/ZVyI6MO0ihTeevwYVcQTLxUUciKCbomJEFLFpL7tu0
1OrYbYvnGXab/eE0f7yrMVlhaejyOZ0GRuNoKGKmFKHSyr5IRKQwOjQhvP2GL7/PQmfqDmNdAcGu
gQvmdnm0llakfru3VGMfULWyllsILvbgEGJP4tKc0L4DK3+0d0c0K7m7g/mCaj+6MZfWFj0U+yer
XCiJnriZP7/HPh10But8+vrtOP6DK0IkllfsP2dW6jsQkBDbLDypHs3t7N1nVqAUPc10PVVOcdiL
kgFe8cqcCCbnceg4a6OicLN8mW0ZdLuOJnFvOL/YX6MKYnf4soqZ8Tyg4apGjhBk7VocmdqUBQqv
RxH6aQaPJlNK+JdLQbbi+naltLI5CBi6faibHVLBP/6HF/7Hzh6YF89BFpg1MKlHvt5smqqRDHFQ
sj2+5W+uSpFeHXVPGR30Y4fbNC6Q276kPo1x3aYFxgx8Xd0Hp8i+TCN8BhgH6eTGMOYaYpbWVmky
k9PVjtdV3D3UG4osNsA9N7Kl/2t/ZBgLWu8s383ZOp+XExh1vMo6W01Tjpji+8h52z/LYMZKQe9p
hU8k4GBBrBnNsQTpqB6w+NNBV0KbU2Lw6AtsF/0C0xvKnYihBnBTftyW/Nm0up/qZoAmdVJKzdtp
FnCXoVwqgTh8k9CC898PPe4o+Bor95+tdJbAuzlZi+z1ba4CiNaGovVe+Ummm+mIyU/fme/85F2+
fTwrLMBaVHSEI3sV63mxLgZa8A5jH2oYqctaCIEOLfDnoAfQvGljeJLkFaTbGBQfW3xfBcCiGuLF
KKvteWyZZrZrDOouKh5Wc9nWdghYxuuBGHcdRFhuRPl6X4U4mw5F/JNIBVycdvLxrpno+YkYW8Kp
pdo4R+yQxNASeBcv2m35qd6Uzyx86ZrIjqLnSrbY7MDKXjJss0O01YMIKVkxIxPqiqCUpX3L+1P/
xa2J7DZLKxBfJp+vh6HCnluRBXjyl81Biq3HXnPiyDR/w5Dbk2psvh/b0e4WGJN7U1gvjuYa/1vu
k3BuiLymPru3TOd89eqU+Cc4BlsXC2RJy+3HXh7kc3+2QH5ekyLul2bCYceo0oAndf7pBUnEKMD/
p4uMU4uZpMhjgLL5wI8pbCoExpA8Dm00wSYksgJwyOO0ZkDSM0jKQHl4bDy+wwdI/kTZPkS0VGG5
H0SmBxoPpiqs4ttgMMYrAHao8+1HHg2SME9PtrNCuEumk8LQ8H374FK6fMY7mjRJ+oPdV51oeTIf
MRvheUvPT9toa49ZShNsLg7XLGHomSZgw36Ol02IV9AH1LlLDe9FJVS/TbLJSOmpk7QWoaua4L9+
nZu22ndrpY56sYd67RtzEH7jeFWYv76Z0pK9cQfh7CHvrnQk1wMF3xgG+wrAYTSQFWnZMYUBZYo8
nAme/PQpcDiWalIrTRsB03tjGZu1abrZNuDm4Wg0LJ4RVF4hQajf2vHb3xzY5Dpv4xGVVsvxMaA6
BzwliHg1S52Fx/9BgVKNHu/Jm9vhzxVQrpuCA3hDzR9CYPVhNzIc33PEn4SYE298hm7DWNd4ZaLH
vibVxHs2WtsN36vHi7iRutPL+OPnMLgfWNv7LlRgpUk06RODThjo/CysiYPEXr/uQR7EK0ct+98l
FERqveZgQq2uDG9KzzFgndON+AH2HJ3xithcbpy2aIULSu8AnauXEguQz2XD22HwzZod9ZnyeWFT
JR3dIHgX8XXZwNkY9poRpiegEf7G8Brlv2WhDa+k4VZUKLTvfKtloqlLsV9FLk+QezxYRuCeEhRz
k6sTD4DZGBQoBTL8ZLHO+ZvForjMa1Jf0im/8QN/QKzggkP3T5nh+8AUhhnFyjqN3HrbmnVYte1h
luTpBLzkUmo+Pd+kQ7B0Lv7MwvqAqINH+dpGeuNvr5O6kKtlYXNreTXO0Ot1tuPZ97HrIwrEeqOp
y5c6UPNNPktSfhvpZoW7N60Z0vGb7D6yLxKbVFjv5hh+/jYS/+7rXjwpWah7sPSSQtq0viKzzN5e
LFYK9okkIFbu8YEkeCkUmDLVudd89OPSG/UJidC9uGmCJr4SzdbOEiuNWE6Jjcoqhe4+Ky79mykx
0/3Yzbyzi35jSTbY81Gh5wML8R8LQGqCTyBG5EejUlPyjo6tctScvTe3PVytV/IUX/mK/Bpc6N0c
IFLHhy0+dBc1NRblXh9zqPL+WWLTg5atoQxVyFk1a6oFWi7lxNCkNvqV2RFzdSpxUd6S2U17tVrv
3EZtG8OC//ZhE2vFbzvrQrNDzwDC+60ebOQw6g6v+R1qnDTCxIf18mUUm/6w3mg1rlEF+VsHfkAi
P0qENF+R+wldm+2NwQPCFIjeo3BsOH4rwQxHGRplAUxayoeVQXqLF2Myku3Wcy20iDu7K0J60Z2L
8Lk5T+zsIXh77IOs5wVeMB+XVv2icTtg3CejXAu8IsULJwBi5GHsA288OLU/MJbvPfNcebm30JMr
Y/iCVavsfSFutrIh/QAb/xq2ode98j4l3U1aMqjg0jw5zrTkNEHi5PFUkgwqO8v6+rN6JEQAeYTN
w5AgzYUgAnICKQeiV/ocTyi3BD1KueBf+e8yBjDBdtYhR9tXfKkgOB2eHfF0Iw/YvZfAlOyOZcQO
TJAjLV4lHTm+l3RgzNuu4MSDbZkOouL458urxejLSrQahcBYmss0MhTs/218FKvNVVvEpenyjrNB
rpWQq5e3kKPlqZsEYCzAj/XoKOJmvsu2UbZ2pW3VYIEpBCFctk4CfEg6N0XwjSrpkcA8DcLk8tqd
SOg43qJXGeF7KFOq7YrknQFq/WhlTuA/Ydqb9o3jbbpWMzAWu2KaCv8h2QZod/Q0eZT5xmS3aohV
8/7I2TvRSAitrqVnyRUjzTMN1tAkHuTj6IqO0mDm6OwK3MttaT7XaFMxnoJJ2joHzc1h6807B2Ng
4NClrBL7rfK+4lQHxRwG0y08t36/JST2inTNl1qO5GKijrmQD6gKWi0MN4kAzooW4JnQTkSj+SU8
C0yceR3WlEj3aBTuQuyr/kMFSyYJkFip6YpwgFFH9hqv3Cw9+RZgdGhyC34xkdnjI1AGYdMa2/Z6
14xKNDyyacBpYQDd75N4JrYnvh0rMxPYITBB2ek1exen+6xbFYEKYWF+V14daY8g0BMR3vMldcpO
Befkol50KI6z5FiYOvqfLNdWE/BG0zipr8tgjOAWQgIoVve5L5992BvEcXtqoxKqOqJ/un7Gnf+F
xHA3IhkQmUvf3tv/XDlsWUFNdt/lVEnJRGWSYLUqCUHf06lZmDg5sEUauxwGMDuc7Lh7/51Q9yxe
QEIEHNachimqv6RfduydBTr05uvys6NY8+dUnk2AXu9ZLPpOrLurP3adfSu/T8NylRU0qfIKyHdt
JXtj53A9+nlonjkZ/SByHVKLCNgSRcz0fkiuE2w76Kl3xlgf1oFRHlGR/q+50A/368oq+Iz0/C2R
BAmrGoWaXMrLSVoc7k75Wn1b4yFpiabJ43UwwUyXEEW0aJjKLi3e73ns56la4oG2/9xaYP7emk1Q
Ub9DXeRKEkekBo9aapmkaxAvCDMDDvkM5Vkb+SN2BVeiM5Mwr89g/midXpICLOl/2l/44m7Cnulg
8nv4jzlx1uNCyMc0HOps168i+bNZw2ZpTuSWjm8oNJS5xJ/ySlfrubAP9WTicCkELKTbI8DCJDr5
tLiSwJMWaH4rQvYF/WL63vaTZ4XOpV2E30N7G+0SFOauA0a/fSvQZemkwbfKsMEgRfqJKi/dIRTo
hdL9VEauT9ibkjdUbT44bFFfdN3H3uGxC9HyczbXyCwnRI/7/wEwrbhOOKylCOY8mQFhgA+5PWG2
mqIgjIhl5o1mVIJ9UOLe8MA5fMtugtFSZwdCEbkRcPU1KUqDXm5Q1Ee2uNnVtZQ/xoZSBSkRJf5I
taHqqF60Pc6ZlII1Z8bKftA/479CBg06Y/cgGmUvFpOE+tlYOMNOQ4OAfoti6fBUuPadTkgbAYcI
u79ELxnXJJb7/n1iW7OZ1LG0w9OQ3Luw7ZZ6kR7jJA3zSKUwRHIOJ2wrlUAgGThu6b8yfb5UDtsI
94R7DzbL0Oun3x06WQ/7c9HPKoMzfQYK7MiHc8nMVbn3H5PPCwVdiitD7J1nEj2hrftW6lsx9kjT
jBar9R4vlnlsuei7UshXmfxubwgcJskRvv5GOuh7NqDtqbD2q16htAClsuF5RbJnRK9wC9O3EkbF
Pf+ScPmEe7+zngejQmadv2Wss/fHyi4IZEJJngOjLDmPkM9s2KGA+Lti8kQRgVIIVj8dJ2dwytE2
7isfI9h2qEC25q4EMt1SCp9ZDKzxHFBZWwx5LeWX/29itpww50ycCK8mDpBRq0ltN7TR6mcwVUIL
zRR3ZZOXqiQCeoau2l+pv5zay3sVR9ctqUrl4QlU/Z1AKvnpovqUuDNBJkM5RXumih1agkw8ubTT
eARo/+hZW3AWfjBE42PDj09d1ueQmUXAwjE67YBH/pahiMFWgGL9YSFay8zLLSWSqIm7SHlihOH0
NKOyLGJgox3UE4OpPY/KjlZ7KjMDIdIKaTm1dl8uTZyX/5IeL9lIupDnsuH1S+BYMaBid6H2qbow
Ys9JUQfQMPsM/3LDbpl0Y0kp3fG4RFAfXczSjV4U1AfhEFP76fs94OtZ+WxtD4FpHNIkMb9q35tr
EMDswEgwq1hQ1jNnArOkgRO4r3qtUKgoF0urbfwrqMdRK6/Smy0Milojql5jTyESIJHY+1MAdKyk
NyLMadcyWADwI9N2Jp6pThZC7gP8A4mDBrHVt070IW1U14PUTS1UC+7kJNDi98WerHRe63VWy47y
THbF0PlNOPPONXCcQZdLwVbsRH8IXWUH1/y5B038bZ45/nJIrzQdi5js+s0PDb2eOYe2N3vHbuch
jevYpZ52U9hULZV9BnL2Qj/itCuI9X0MHzkbBiZc4j46VBte3OyjIpF+xjESPoD2OMNfohqx3ZyU
b5O84/rsxC/7IS5uDQUmgPNGw7SxCUNTWd+6CuqanzSwX/bhZAX4bMqyElfXT8VvfNoHv7O2GXP9
hQEjzsnFENEb/G/avi5qNOwTF8fq56Qaesmx0kd3yyN05dt0Q5JsIchGvgeSXHkFHDe8+AFyew4W
FHg+O1y5MDQxoXtvTa45U+FOiTkOyQNQE0s6KZma2mxD54jsWaxJahfOgPMVdvHk6F2C2A2lPy88
qGM0/q/juXc4JMkGZVSM5SwNm5QcjNaOv4eiFPiIfS31R5gkVUuTuxA/RpA3ZSIJ5jZ0H1jnxB+k
6gAwo4BFskncl6PQAkF6CIA82TlRwVKtxk/qiiXiaF4gIytElU6q+MHkdqA8mM2g0dYoFEUpav5j
8vlepeGcpiy9OdqhbH2zjFBxejtd0UMuZBZ8JtFoeRPTFatiOzT37FAVLgmH0CoSjf0j0nNAapSI
QTm4525HRpiWf4+wlMwBD5tIdgcPYigFAnagJtKJmBalpSTWjxXZMGhD74M2BwPYkBdB9Cr/tlr+
nExX+kysTqBbStJTz8gyjXEDzJzsZA0/j8G/bDt/XX3sMiKeUkS3UmysAoA94sYvd3GSy/GELy7e
IW/p+YIbp/4s7Gc8gfPtVz6tupZiXi3a1aRi8Ntnz9OOqIU4yHr2bc96OrDIt9EACd9UBWrz4b8i
UskSbxp3akSmRlvbUoCddSwGh872uvLHA6HQp3SxYVcWG2LOEmDlXZOu8syIM3QV3Mt0hLrdeTis
b5ZsW6s0lBzBOT2IYTcd/2M4Lbr2c/CrylNK+vaxFwd1jmCMckeKw/dg8AjUe9UVgFYRaq9PMHAj
tg3hjGwDXTHJaBuIUPYVoFx6k7EvzT3Ac5shNccvqFmliZBMCAXrD6BnjCyKDjTcq96XtFFMsCoe
Jg/XTUxcU90cqAZMgiPC58/zYj2giNB/0M3HxXyPMY7JXXbuCq3jdFRu1ia6txcWtP07IjII09Ma
Mpdl5i98eSfjovgG3keSC2kkXCZw4F59G71NLGlSuBe6M44XPCw1nWXnMXsojvH2pm0LssnFfiOB
IKNHRtfVceC99FVcuDq8nwSfgrFdmljYZYAXc8/oMapDtxJb/NliY68QDBxsfxwW78xW+GVsHq/1
CYDSAWD5t8qgAEuoWsdnoVCk6uB3SA4hyOCizFXy0okhZS8q9202i8OAZ4fvdOEuEf25Do/2juki
dG6plKQ00NV/OU4ZXyURbxd/6YuTGofd9bwXQM9Q73y6XTFVQX15KMlZ/kBvTaLHsPzpzpWIQcsl
h8K2qNILGZV3LrtQmkyRhyKvGuh55sSFvMGpQgz7hiX5MWu5kRr/tpq1zM9OTlM+EGqlkicnK2uL
3HSRvVGA9adVSPPiquBjfx43j6m4dFeAnEFEa4R96W8veScJgypZ6IAsqtjeklZJ33juaeCugI3n
giJtgxEsk9dTL9lndVXPUnvBG+4ytNA3Re1tjkPhTVtMcfUrZ+6kzelS067VQ/gjAnh+3OrtZKCe
emik3gfwOGDRg9ezYagqdYv3A8M0MW18omohAh/zkZjWKrVkoknIDLx/SSigcauScsgwDM0j1831
giBO7/fbR7fvluaOj7wW2rA9Bru5G+7/Uymvx+F/nvF/iQspiuTUWZ6iNDz6YGQW8M6oXg5+52Td
exIE1cQ9Y8WihdZQFTHru15iDVbx78dHYtPsKgNidavzfNnt/GJqMJZ5uOeg/E7T/Q7LuKzVCvfF
C0Ko5ZMH0oI+bmWDN6KcPAm9e945T7wZUNPxHMIR6TvvGz/YcLnHiyHDWT30Qh5Afjz5gyhE9jTl
DJZbVTGr2ZnMmkbwcVcxlTpr4Gb6XuspJX3BG3A24OM2Ddj5Noo22CwCq0M6KJOYl8pGz1M6Zp6e
02k7G3H7rD61S2tHizSdfBrOWlgHBt0xvb+KTSos/aTtb+NuTGI06+SMOvb+cJ1teCNcOgEiimT8
GRUlvtXPeMQXsRkVioB620vAREEoDNaUkB6ogSjvcThV4jWgg0N8ciASa30JIGBUNqbqiXpxKJfg
93fnm35+SGwuOLcBwTBraDX0m/EIZc/q+UEdOnjcqdqZzqavB1rvaFxJZK5LbnFTz1pEFqDUD8PA
3NojP/zgXwkKSU1GTtdud57GWANF07S+YrWSVH+VdDJKycxX1ZLHzTbBJCgnQ4KXN7Ot9gFVQlTq
0RA3EEEVS+0sQJfxKZqa9pp/mkiaCbq0q6uwlGBhiVhkJ0a/SWSr6YC5SJ3N2SadIBbG4isDnP1F
RC8t7EsWcxMzNo4XVivu1oO5kRMrk3SSVqcUPM3f7SK2CT3UJZRBxYOfZilTQ+Q66GhNEpok6Yzt
v2cZschJWoZ5dJ103GJi0wCj613FBv9vMXMJ7FYDFHlL9wjgNMm4ggSxUyXUd4qEpcsHOYQbI/kK
mS5mWIHq0IbOxhvivERGbHhodH1nxZND596iCBV39gHv5EzhdSo1EwjFXS8qSWsUYADQevf6Trqn
uex0moQnlPnvnPOMgCYp1RJ2MnoILd9CP/asOQuI/jx0PEHi+FXbIvBAjl+4JOm1sEtUtu50ZGH6
qiV07LE8ghINVn60OxsLh3+cCdvjlXc2KeGQyX+4TemZbZg3UBXPwuqiRTCOlNKdFx0+rnr9vk5I
3gYJgyR/v2UroYLzoRuDyjQqwBU7Cur2IP292B0jBF3fK4gldPf26Az9jCies9selwopd/FT6OfS
9pWaVVSozYKr/UN4/L1yldxhJi51SUcwnyVZjROZ/3gVHIxxyDxkFVthUaU9IHLMC+MOB5N8RAPB
Y795iaUSxXQ0DqoJ6o27AfiBgOTeax32dThi5UaXSo1lKujn0YihSQFkiMLcf0q6mrgLb0GxdYBZ
wxZOGeX9M8qPjxjLscRmj4X9dzxcvLe+JISwYSZcQlQOWCLR7Ai9hVNltb0WegI5AhnZTZIdVnFW
Y1etulUR3/yB+2RXOY3VfnyiQd6DQRFRA0o+28BM4HNEfqrvH8GGZiaXvazGu2i8Fkv2T82XQ/RT
FvTKnIM/edqJ7wNiBSytf9dTlBiFJCz194KMw0opC4wL6BebsGnLStC2AJeHekD9d3+s9GfQahCN
dsUEcvWUPJaeFNx3pPw/AZa3fATyMhNPI5l+tkgeafNT0uuwd6whVeI3kWcMMvn6zTg6MwjrVDVz
+cY5pY2GuvyZlqu0/EnpL5sw2URckqmLLUcn0Yl9Rvgjl4Diqz86GasZQaKgYskRzco1oj1u3we4
d5bP7W9OFK+bS9C9taYu9ZPbnmpmuWTsxPR2CWO+GJpBvwXAn4/iZZ1nSewPwKyycC0Pyz4Vm8qf
WA1eIPgGLY4/ya779/5XL0mW3+vzz7msK2LfDhfYrXBWQDcLqi9oWwChNfgDrHPektafsdjRw+Ty
a4Q/9fXY4JwUTQ4fAUfxdgGyPNzqYKsV5dhOjuOTzt0mK99KS7hhetOsud2LG3ED0YdAu+gh8qr5
z/+9EOcTXmL9xL2rXaqoidfrJTbGSl5QUInRxsTmaIHsDyCMRj/eli/nh/F8XMQJcT4GIdiXFVZj
puSvgu5yFQAO9GCU5e1NcQcKXzJPS+6T1Oh95Pk2yrgHNhULJqsruebljwcLJF5SXwjIPWi3qW1d
oPLb0Th346tejENCA4MX2nCSojtBX13OxJYRoNFbiK/v8URKfK9EdWNHcXlmsQaFozJoXCGAFZFw
I2WLZvUCkahZxmTFxt3qGKLp4LOrIyGHYPSRJQYLD7bxwqkexhyX/jRn+OPbWIpejkCYrAUBDNfd
/beA3BUgiLCQ8Z7Mrw5U3lbKOwff8X/P8wwXW07aV5dwB0QL696vGsi9k6nXXQb02+9+SBVSkw9o
JVOWyBTK1jcmE0e6CH43EEU09ZP+Si8EGoVb81iAAeosfC2ajwLh7OSz90D4hPJe77rwtR3tZHH7
85BWF8f2liLqpVi1K61c3cpjhkN07lz9qgcQ2hj+E833g+w3nEesHvLADYJE2THBKp7S6yHGEAI3
8Hk/6rA2Nfyw+Z+JqRtS0xVcfXAiW3TGdBpHH0hYKlQTm9McL3oVJ8ffoFyGDyFKDK8koV3EHuav
HmBFu9BTcJ/3/Cmo1mzDqwBhzg9Y2qlwjvCOUHXTgoWdCzpFmwWRNal6aA+Ie65GH1eW9FJg5ahq
dy32XxGEDIsrlVcm9QIEykbsekMiRb1GJZsNX0Snb56ATyA/TY7WTgnlWtbqnWjJ1dJrtMD1ng8o
+kFHX3VLhs5LS+1JjBUHrONrTV5kxHR/sJqA8cYs1aKqEiaK7XltANKdVa0DH/wphvAdB28Elu8z
T34BaeAbrLHv/Nw1dnmoduZxWtD+jqBahmflw1VH9Vb5jEGBQxA1HArq8y151doLtPopCKhsMxoh
e5exy14pfz1x+ih++jR0Q3PZMAuM+WkIBZvlWKUNXUhkQd4IAYslQCSPqpMq1lPr+3UqHbud+538
MndmZB/WzDrZaFiDAulLfxfK/ThUEr1aEDC/bBgFJ4rV7jxfaFTbsGsg8XzDcNlBVjxsoUjyqjxo
GPRQioNQhsNK86te+9O2MnPLBYmeCs+7wfRkz1IELPK01Z/GGgRDhSZLI3Vb65OpdTHNFeONB+3O
xvXBgTpZgYZ77Fs7bFLEl7HaDqJMybn0ThuY/n3cyRYQP+YBROZ0V6KEwEqxd5N/qETGedbfUE6M
3GFYuyGOwQ6VhbSPGWXHMvlLZae6bWZjm2CRB/nxgrATFCaTqNt4gyeH8GRot7e0Uu8XHrTN6rC1
OgzV2zF8EzmaeIW80Mehb3UPzYhIejnUB9f6Hk+V7Xcwnhb/GuDUhW0rXBP39Ml29rInQPcgv6XK
7PtaKxoS4sHJViu0RRcqXARmpt7LsU1+mm1ZdjqcUUjUbtY2RJiy0Y6o2q1Vz4fCz5p/e+Okxs9l
f0p1KxXuuSyH4cqKc/JrXv57yuqr7TfEQrtHe7IM+Rxn+bsm7Z6EhnSTl8Y3lFYPHHZVLSRhc4FD
gSH7Yh1OYgzyswPns850sKvEpqVQ2cagaJ5VXgrXBGeDDz9jjUsHyygMSmeftWdmginTKEbFH37I
g6ZNSlt850ctGNC5FS2LaRJP/z+TtKncWgS2AdbyUZj9gTRXLPVIkxvVjd79SpCX9TbUTnMZjWJE
cIhMBtEaUqMJ2mL2ov7s5GC9nvdC0n5DN2GF/dNc5IHh7hFOBsCK1hrwaDX1j0EDK/uS/kQtGh1H
ceIN3qEk8o5BbX+IWwZw41LcqyXpS89kBNsw5hUSwrz5SnAIgQeHhcheGRQunPR//fDBsYv6ueiM
11yHyikhA1r8ASHp53wZlUsK+xMx7ZIJ7YUCWjnbBrFjwaiaqLojyFISJ8ig0B5REqBVFfnBVKns
Bs2zT95MmTo5RwFejYriauzKbWp/KOGd2pylCv0JyPr5PZzGZTYD7HaemQwBncSdMfP6zY03grEW
3doNT6rHTLeOVvYm6L+ZIhFd1Y9nvcLP4l70pTpvXq6zR7nyind2DdK01uSsLm1ePs23Bt6uk990
xQnMp0bmScdCtaoSEVAf4L5VvIk4JFRkK/tnbvvJRSqRhdkg7b3SaBKfrw7PqvjTz/Z+MfbcmQ6b
QxQnYTSMUf6zpFILcKA4a/ZYu2lSHwRAPhTxRjji0Yr+DRmb79hDVnf5gFT21xuuj8Y5y319pSr+
4YMGJzTsVhq6vBw2cPDtRitKG4+VkN3vNEeiB+wfIeTO9cmrL/FcA/b08UdPEotZqaaIwgxtE1Bn
RqXtK+obA+UtgCK1MDkgUekW7EEuOA2BJKpKVANe/3yXde9CotgBkhc3ETVEwBJP0NaaZXKbOfPD
flegsCb6xc6FtT1csNje9nihQDLgjohysHAqotMEViJxerNBIqt1uGZyG4bmeYF8qCBCN1w4ILN8
INWeFUIqmixQWfK4j7o4L5xTmKRS7X2KINWYi1b4GAn4gIet0YIu/UclpaBp5YG2bjigBxROQiL2
I/v2HuGogQY8V7CXnkFqrUC5Mst80UTfe4iytwju+czAQ844+Fa1mMo3SS0QPbGfXpnSoWH8TWKN
90wH+c+6C3XwRDTNCDUgE/fLprrAEvejazLmpQJXhM2YKTXHuD/m7lDFUflt+MbOeXzYX4BOMODT
wp4rdkw2+PXX2zeV3uVRowOQCCK74WMIrOSUWBaAeSVj1llEd25wokyHgIrz+Rc8h5Gjylp9WQSM
7c7ERBwZkpHa+YJkvxpp0Y8ALbjSe6TQhuxUZEv+aSnir0egt6IH5DnbVtUmFDXJkJhLNEu4imWs
fzg4PXHmZSBmfytH/2uR/w5G5SZQIv/Ov2cCBwGHFLQjPRqi8jgaWH1bg3h/ES5oYBD9jHzz9NkZ
K6+gnV/Ja1Ya5dR77+aa3B3gqyUMGJzO5tqeLILRE10g2LGZXKQ2Q/txE7zgZPJqvIFL/N5pVrSp
2kGOlujo3m3EjAwmHZltKPl5epONdM3EZoasVpLpfBqHOUm23FoivTY3fwYWyNrs3osIy/i7yv8K
Ezruh+lMuf9wf8Pvs6nHo9ZVAUkDrE1R5zWOpJSDerR66Xqv2+pO77XB1Tk6SeF3QpFihzob3dQT
sGhY110Q6SUThqVWl2v09JDy59CPSVEWosJ4aBYYGPxqRJ2uPVu8+I/uCMbsr4UCi7MUUGUjfa7W
Eun1ah2+5QKy2ncBdU4M59R8Ox3ghXYB/837DOFINo3dF0/arcq4m6KrU4fACDrl0fGMkth3bUjV
/I0HXJVWcWnCwHSEyTFLCJS+WHm6EXVQmSLQnhxqlU5VFvZv01M4I3upxdXghJaCj8KloDuKdHXK
G4PCYkVaayYBLm9nQABESbd3b7Ic8xJlWQmoEBrdBprP5AR7CE2cTjVUKODKR07bu7z4Bp+1oMHl
ytrsZ8SGA2A3pGtdh4popEIIgzljqGjtRm7pmu3qJHu9FfibZGOhBufZ3pR5vY14NKElgJVL0czz
HqcuSnoDEvkkXfvNwCBl2FmQ/xbq69LnfYV4MQBc/VwcW4Nd5J8BvDZeVaiSckp5iFpb0Mgis0mK
xHUSvFo5RFh8WjK/t2h9kpwiHnpOZmMkP+tgQ18WO9hkhqmhTfTg7Y0pTyozmAoqDR5Vs7nrwvr7
/V72NvpSPG6aTIIXar0O8f910YgvyKLlInqNmtehrQc6uDwFyr/FNkudZYGNUKsfAt0kgwufJR46
mDMWpN3D9fB5C7ejDaj10eha07C9Q1j9T68J5RrP4jyYyxCLMBYTbhtYEVB4ebFZFTYOYomDFmah
/grDxG80YZgHYUwIX/TJf01vBJtEbcp6DbakPC4RwSfozsU7n5kzjV5+52PzhOMcPoCtJWcUHP8E
EWk86s4Poyl79ekp0tRTu2b+j4TT7F4zpRSwzCYlPfo+E3Un7olcXsf2yup2BsPKRaX1BF96Cfy9
2rPFDShIUP56ikKk3qMhSdrMzEhx7Sd7v6iqVzDGCqClznxNUunDlTkhIJ5+lYVZvdXt2xkUzmZf
Zg+rFr2k0oM+dlvJ2pkIEhBpSYWHJpOBN+a0yk55OxtU3xMagUZJimAYCfV3+7dxcDS0bJK/SEcT
jd/4P81XaaGfbNw5ABhrtY+98lQu33Ra+Pmw6OkH/Sv21RxJq5u7Sp+JzdKhsXjrey2JCN5M89iU
4q8roAXkBEVWpS1evooi+taD0nhe7hx3wIsX/AIB5OB9XUiNw431mHiW+TqvLOVWT2Ux8fndVuKv
kw22V4TBnym5AHJljrduxmGiEr4oTJJG9sOACJBmMeiifxEEkBhSRFYlUDIGn3YcHFAxLjJIRfA+
/bWCBEK9arQJXPXwYEGzUGkqxa6MjZjqhn2Q2ymQ9DP3J92OL13hZdzSDEUAJs7g4myiS2rAE4GM
QMjgibJ+NvZTNgLYC+DAqxft4ampO5A56XHd8PhXHYc2A/+LCGdXfdrOAfOeR8dJeCcvfFv9SlFz
75p1FNobuSPbtqikd5K9BvCEkMvvU63S9gFmrr2qWot5e+4LyCKM4E3Rarq1Vg2XcgdpgXlfkFBQ
61xsDNDPpw5d3BO66RYSUVnbb5DcSKlZuD8xRy1h6mA8sIeq4IZyUItc3dYqvN5Mv8hiiba7LuSv
Vc3FnmP0YY2R8Awuqzp+d6x6yJDTK/6S2S5Z7lPCKnwrWv4IN0h8a09mipEVEyRmQ2klrU2Nf1We
rq0tweiSB9QdqgHnKJJAvSsmsodWkrNfcA6N/OTcpTZX3q6oMPb4Taquk5WLpC9Luu7sKNZPzi5e
KJ2nH2iKFr6io5ASykvES0wsD9/WJ5rSEVLPPsiSb4h7fvKvKK22Y8RhjTiH12uHOAS6WmNZTMrX
sJSULRR3CrpH9r4QMbK329n90suUk+YzBESWTsbo15z6FQ252WYRMwFbXdpW5NduuQ9j2+O4E+9p
U0oJRr/8rV/TwpdW4w450MNPi4OLibUvJQQKJubGBi47ODLDXLgyPPlAwu/egUE7JR3dn+sq4lxs
9unB+paELRY8ijEXB1v0iQm3zgFbrg8gyklO2rMUf+7u/hbvK0GmBaTOGSIVfFJg0jGOfah8QilB
i4fO1u5x+wFmCKWNT8VLtm1F0yHj3P3utwgekx29S7K/I4a0DksHqO6mXFQvicRes3RDb0QYIuQg
J0IBSC5hjSgrHd3/2LS5RrxF28ZaaRJXdyQW82RfPR+/MRPgazDUVWSz3EB06MaDyB7Vx0qFWjS8
KUQKZ93Gr9fhfSWtIxWl1CiVuHDkMOHvaN9hyMYAjDixXdKsFzN/wkzxJNfidNHQbP01RKLQ6o4F
PiTrG75OXM5uvqDha87GJ1tFhs/NZbypT+EWTCJZwCa9phUxPxM/5zbNfp4x1fm126YuLURZCTqK
f1uqWtv3wEn0GUch4vVAci9CcP2KJPgVQjnaoH5Lv1SBsQL5AcNBZDRWv4ERd8uYVnyo01cwvu6/
pIBZ8tEwP8uMtfF0mkGNUzUb7OD1LRQr6UNXpnB5C7bTp3vcptSAL3Oy9Tx99gAgBVR/g/CcJYQq
TJo3z3iC9rbrfXaGg92MUyS9BF117tYWaiNY2jx8qaw8fkdCoaeVykZJ+fSlaeVfzKDOgC6wrRmx
GzBvPl6ml6mS4ULq/Wm/zmeWRTCv2djV1f8OZuO+ZKDDF23k3sBXP6fUdmPW7+DK5IKbp4CHUnGf
7tU82IAwEd+bexOXRM8SjkWyUbzHScTSfAf0xXkizGpmrNoW9yoqbQXVhQeRjSsN1PhTKmGPAR5y
o7rg//VWF3xRlHgN/PQEpoqJhrRXrTgw+woL2iFv72lxdHPglZB9TUVkXqnzfikrz5pfap4irJCA
RaIhn/sBd3xeVv/pMzy2aMy/5nvcqFlmOJlccfAa5Bx6ZfwWXACzU4T/pR0I+Wtra1ssLvPX+u7O
GKz/CDmlVrdNfSq1T3maMkgO9ZgQIioDxUz3dEq77gkQG2qlDxqQZA6Sh+zysUnGvbbNN6gby+Ti
Yf1GvDmw0C9dRvG/KjhhzoMviEbUwB9/98uzWwEi4SrmmjGuLEg+TTRxJvoXyAfKqLH1AqW2/vdo
EGJMyIaTeeiuzZKlRb8BAD/wYWL6fhcDe5seYIOyfToYdG8dafYCm6gKaoWtIIgTcRPSO8qtbPAP
L8hjvFUzgGYo+wHt44E1iYskEQw7UEC1aAeNALdiAsmwpeS52ftTyX/Ko2XgtL/fgh6hyQv7jiTG
jz4lClxNSAR/evrbKWHeEErRp6Txo7QtZtk71OuWxlnZvchDK+4KqA++CKh2IEpuUNfmDkJPFqdE
HjgAMA0jDUz6dMtCqNxDliaFp9Raqz0uUVoviF84/4iYYoI3jMhYjRtiRx0aLPTARifsIK5/z/Cd
TxaSYgB3sg8AV71U1Du9MchmgGfbVhTCR9Adwx+vTf95EOQE6vlhmepvKJHSpXT5GyKqLZtcWSIk
nCR0SRRU9YXJ5PixjOSVq2oC5Vta/5hY6D2CFTGRilxpJyLnD5KaC4IOBJS1s0mr7MfVepcydRaO
XZBZyx458YwySs0xjM1zRlG3xPYzzgYIbSUOVKc5fnIEeBB/G+MhIaaZX/p77EzXdDc+Kj9XGplr
EvVtSmVn4zn9gYV7gh3SEFhjl/rayfZw5mlDrADtlDW9VHIhu69sUbWWISbnzKHb23BBPEXMzox3
rK51IWnsUNAwpAhY8i2WKqvlAYnTRofLxkW9hiU+eJPFDICyX9xkcxG/HGJoN3h7WymDgcNx9tmG
vPqNpfqEobDmrH2VCHrUWjLI/IC+b3vau5thmdv0F9viGEmNADHCheynoychEnZb8injhVqfT5Xb
uHrit9kyb6S5NFucTjcJ1LScAtV1OIBINEtas+N29WAP/mq+d+nJULDnQoOPx3JZlpKdU5LJBPIu
9jp5ALKfCbHZwGmDdrlntrWy6RNq75k4Se+kQqyoMw+5PlGtVFLNRvSJYbqjZZzSZlUgBmCsqncZ
/nDkpVpM9x3D1xpamE+e5TfO0yGzWS6toNpP7cPL3CEUU3Xt9d6vsPNGf0+CKV5OtL7LBxZArC11
oNBtpSn7xK2Y9d2ZBu3bGXWtpGrqRXn5LBfVXzLXXHQqQMhw3DMvS6ROzFkA/1roz+/EmqYORlSd
XUG4tf6FjEoZFgN3wQu7giTxLgvigVpZEiofl1N0M+SPWTYCxQTDKk6sXF3bovHl4hU6ebo1CaFR
EXyQq8szTqP4B4I+F5vPMOV3F7biCk92pji09INfB/HxOuh7LFbtKp2L3zWzGlxHyGH3W701PGC3
fXp/ARypRG+Z+hciYtR1WnBIzm42a8lgP0dEa4eiB9jkhzO2dhi3SD+T3M7TxFlUw7b+7ggLV1P3
4yKCjvqwOr2OUjiyyxCrowKw+4NvulEyfcDHsBdbDOJLpRrqqWYz9b1ZmA457kwhviN1a12fJ6QS
PoS6H4yqWYj+rgGnTdGq4G6l15Oeizvqxuo5IlrgJsLIFy1JHv81SKuWtaW2u0xPwoXfTpsZO13y
Gx2zPEeKmCEvn/qoYc48WuI6P1HYIHbkCgtthriGApd/oHH/mY0xfhHTIsE4YTlDmAu3WU7JSLsp
zMRpPdLtCvQ5o3O339W/Ygky4ZcVdetNBF/22uuQ6TolYCbEDSfw3m80LcoJtFYHVOclLtO2tKBL
DDR/qORx+p8cQfk58S3nLUOrBrlSh/uc+dDhFAM7O8I7kbw0aj4SjcIu4gmNJ4S0f1Wn0cCWx4As
nJWXBwhlcbYOU9XUF4wZ3QmZKWRris4ZZKDy5MQmB0+2oUDe1IJPwYBnsze5L7KlXv2+k2sjZkEP
fIk/JJhGYY2DXT7FTibZhit0q1IwOtmL1LInfWRJfURVKBEzSfxprbg0JsOJm0uBTusH6udT5JTD
iCL+yEGlGB0KAYr+M7RbaZRuggv86p9+pl3EjhiFOEMN/Psyidl8C4EgOarY/oz5arXmKDtf8W3L
SzymgC+L5naw8IFNv3UypIPluhkc8ewbyF5ZP4+6p2g8uO7My2g87LSLL4zS70sTLHEcTGOL6su2
0XvglLs8mNXQjn8/AMaSTlERLTt6BrKhlDlCPgHKLzZfmL6uDCm5xbK1gEgm+ro4u9WLlw37pULS
QVy7lcBavX9bUUgim0Ww9VLDeiW4JsFH0cMpuOMjtQdcn+dkafkg66Cs7lKpX77HT9+1/B27Dy6P
34EXUvqXMOvrZZLB4x3GBEDyk212haEjm9HSRv882whtrK1P+4Cs9mFKVi3ypCLeQZLxSsT5J1BZ
55c7K6BfXnmQlwbxEhJ+MeRBrpOKFOjztDjKNoQg058vlE52YvoCLVPoMyhvmvYeU4WKTSWM6ut6
bfgTA11QVSdhq61K+PBgkeCvSHO2VsMVqEOaoYSe39vMsiSrmrCsBGfyps4SJkoonj8I2h0/MOct
zc5JTZnVGEtaR++3EsFbGBa7PoYCdqMhacDJ1EL8n7Wd75ob0G3z4H0SCMO8h5S0yJXoN43VAJT6
XPTHDSpIep+Pw5wUMmZeUhoqCMuXNdiw+jp7jVTOu/NkJBM+PzZegaZ15zFUUf/z0yAFPhYMogPZ
dtlhyZ7SWsPLmvTJ+9ipLhmt6L4t2rR3eOj5EyfAXZisXSsxIuB3Psr9mOU7EAygAK+RQEsX+MLC
oSTM+7hHgcYl53tH+hSMvycppgWzWMDS5wtFDnVV7BbX7hpX9E+9vMsdkrF1dAYpkLln41qbSYFA
3j3t8JX4JFOT1H+IAYBQeT+bRrpHNLFeELLb1enxCSvTFnLL5aqQiw715/TR6tixazi/9En8TAvj
Thrp8l66jebC96yjpGs81gc6AP6D6XC5Fg5zF5fCrBPuP+o4NEtt6c8eKXhLrsMtIH8diEMij8Jq
wuuvbJ5DyR7WcPLKvhWYITds8RmECSoyC0a5drkfRkZoZXvqMzxfSMKFpsQwwMN7stOIWOqhlVUL
QyVOyw8O9IFJiGU4dHionc03c5PyQ9d8vnTsdoxAPglDYFjs7UlfCSB6UDAO7dtDOpVAKiND1Y5H
dFKiz0YSzN75Zzt5B6Z9GNRYXAGhma4iMW5jsXZTT1ByklDq+sDK4/WaAaBK88pagMDHfpDm3VK3
gtDBAJ6cNFqsJw+Xcb1gKe9e5cd52e7wq2TL2QCX45eoOFAOADL9MnTrFmcGpvjoIHBdEtNx5+B9
q1UfuTJhXZgwZYBmpI6VgFJsDcwJEyIeooq/e6O+sYqE6+afaL4+Q38t7MGj1pE2FsxPLutdZWnV
cbJi9sV2GhJNMLeRKEjX1UMa5RDrz5qAhvyuZ7noUBgfg1q+QUSfTxKaPsRkPuByh3IIsxVpol+X
xxm08Y/kRBJ8xF8+CaXBdnOkOY991OCfWb7xnZEhQ7ONsJQC4r3tj6dV5EyJXHmo6AD1c6BFH7Ys
SFy43Vy2OXfjN9zdROc0TLW/BgXDd8p3mzRPd5vmTYHVWk1+66QlaxLvb5Yn6nEorJxDFiJdj+u4
QwPJf2yxAO4wze0w1g3N99pgTPd9X8Uw9SCzJf5/rNkLsCmNQXmVvBX7Iu3M+DMRdRzc/s3RnPUv
87cvfOPT1Qh6OBWosdzvNjKeXGfusV8gY1tcceSTYLsPt/RvAVJy7tIpHXsBDcCOjTL0zZtVNlmQ
EaViagXRKBLHESoRkANwpQJo+kMMcWKnIFsvbowiTsAzHVMjkFPSGfZBOXvNug9AcusYeIJCH27Q
VUWiugaJuAFueHC1/5pE41cvFlWf821FFmvOntApRGjlMdPPhB5RcrLMgztk8HO7XDRpk1UN4hhp
KQqrEGqnC1WHBb/yX6s5rgBDST+eydI/bl3DvyrMHj6FeM8BPsCAjcTWByVI73/fyjEn9kmG7R2W
Hh1Xh2m2GjqUpolhXNo1ZoG7VlPFuLSgWdZGitn3g6lAVmhBUjhu/w955PK3oIZMzjRiEPCJs8mZ
QiGBjiJwCJIJ7ikdTBJmDyKxvwqz8rpYS5jqzXVS/TmdsXTX8WoQCylabiukAiwEbqQfwGL6ZlHV
rA4ooA+mjOuBJtlEwsWQ4ouUxJ9fF46j33NJ8KygT/Nn2eeDBN8am9El9Po5lRKezwHCcIzL7o9N
gUo45ttk4YXbX2YVzGhq25mB5Fljby7BkxCPEDREZkH1vnqYrLX4clMbDE3rsur8/Vd51l1gZODD
+pq8/IDZy6ClXR9wSb71X8x/NopcbkSsW7f6DyTEVQCPbgM7j1KXgI2AykWq44NajgEAYHNVkhyP
hkPv9IuJb2DDS0GwhmxrBAFlG3NfMzaOrgk7IX6vEJHk6MloNLoOONsN+M3Os/ZmJFRVLRklXN6R
HUC6ZNN7zrxIB3PMNLkN4sve1oOo8lWhnWQ8yE/XxCzPS/UMveuK2+gCGOVLoSuwD8134vgkcIoY
kohYoXtc9INqdXQoOyAdMHHqfWW6M0fFTv9ndsLp/ZLEZThlalG28AikWn41kYCpKmT5unHV18lh
+81En9N6CcvjM3k22HZUbYzu/hBK0OKmLd3NlmQFW7yrKAzox2CEki0Ey0GFp+2SBSI3l0fNOiBh
vvxi5liWUmJbNoHkR+HOOJhJykXTjrQBQ/1EMa1YBhPbwWgraKW+DH34NBBO6rtWTeowcBEHHoJQ
gIfknnBLeBV4DDBVykoXxAW1U8gWKY+3eiHlNeQr5KKTgk2TOZ5Onfnuc3DVrdtWvhmvhAQMVP+4
HXtSoVjnF4FL1Le/u0REHTrsMo6Ys6N+XVmWMnPZx6mFGh0Wnkr/bL7UxhhWlyvUAgeg5K9uqpcI
HiTbvnwarsonrzSnTH2Ak/VlRNwVzg0VXaOljlR/2EFc8TyRKCh0B0DxOZlSJCL81r92/w1Cz3mX
uAMzCfvpDMpsNt7cGv6Yk4ZucaX8dDl8ao07QKD4QhRjdHXMmio8nwX/rD9CJwHOmNb0wIbOXtaM
yO3YxKhDefhA9zvbQU220Y37V7npZIByMSZbgCVy5h2Iam3tzn2mYZY6gcFYH1OZ37PVhJIi4DnH
aIhnAuOhZKlxkOvzt9wm3/shq2tdKYs3DFNH9Bw4WwVbHT+r3uPjlJrVU4Zjkb3p72f8pKDqtNHj
rFAoCEe8Wu8nh6vaPUfBQy3F+ndxyIe9cNcnFUCfwd7QBz14W4EvePofGcw/MJqO7WVc1hKx0XUc
QNLxOZn28f6xttggjlkC+KJrs+JjIuASVrJ6vTI0AZNbND0LSH6tZWFLb4J4EmMHnfAXStoAn9pj
1SlzBveYSpPnc04lc1/8Vl7dIkf8VVMjOuaNGZTvf7B4AgkTzF1W/v9HOyj0YGptBcZvMtJY+qtI
N/cnkL+jGhcpNo2JB7KGfzSGA5WKLfhgIxtwFV/41c5gdVR7tA++OnVghwAaNvOBa43P27Wu5cAZ
jH0GqO500UC7a3Ki6Yloj2va60NcNv1GuVSwv3ftED52zlworj0oSZoF+zqm7YRaJVA1tj2JZCXT
b14jTE1ayIg5jaSzM2obt+kmBTASJsL/PZ5uEh5L7YlFi1M8U/wisNskI/hR35agIJhTrPzR8UXc
RzKybYOetKTBKz3L6lA4ZfFybwZ/rtKBoi8d3DK3NC8vYcGFSurRXNTf68cDsB5WcuzaL+1jyFFC
yZE9Ui7K77f+est1sWuW+/bCBAg51wG1l8YcJj/v8uXGXQ4dyiLUX+SNJsBLnMtJ+braYAL29OKe
8xFa3YfwZ+xrF5qa7MX9A15OY3zqN4KAFUKTMV4Gw2U4v7ykzsu/d2x5uiBYn2zFL7a15tGeCHor
djU+hXsGA0Oo54uY047gz1uyWgYHGKpkIrjh7vJ1sq4aW2+z71arzSBqQXM9SrjgynB3isenm3XS
EAmGc/MfOR6unSAR+WYB1NkDs0Wmz4da2pPXydqFMxFIV2o0h/AnoIAUZGjvS5r/JCQaczhuxAKN
Ht/r/jSi+tRVPDS6hTAt0SGWle4Z0fUgOEpcYUpC7cDWzdFPZ9uYMsT7MZzkY7keSEpHAmAE6WeE
MYiqRWXCLWmJq68/C1HncVvkoITjN1FcO2hVYolG5d3PQKs98mFd8NwPLO/vy4syi2E/A0gPGjRo
jHYki9994TA0jqArFTg4CMFMlsTRbniHwSTpveUjEkzvszjmbxoGqGXgChGpAiVzzHSDegqHKjx7
amkm9ZL9J0eJAA28bsBJRYwK8KwcJJFf7ajIlC0EnpSqooFFW6MdXnCULL0hJ1IoulzRCIr5Ey6C
j4q5d12BeJA5GE5XA7K2y9u4kSsK0R8ZSXQMPAw0mIF5UWRBVrl4NpwkV3Iw2FMzJ0UbKbAHQ7KD
4ufTBYlUHw16FfZfbov3p6HgqGCOtVUBNshuQE7YGG0VZvgXkaXp7XaQK/cxYq49TmRR8N/PeQaN
Vwy9+Ple1+EXcH9azywmQSmsCsauj0Dgvjx7yXsVpvRlkl4ALqwzkidCuHgjSGb3L58QaowG0UE9
IOJ4/nLZgCTHbvbK0oifJ9Lz7sPhWBa3ob5S4J9InkIluSjlc1YDyzFMB3M9ZkUw86WB8HKTxUr9
wfz5vpCy74xNHDjzPPz+xxYV6iza1F6MsWXmmzLrYoPXUAtsPqWft8uPcyKARqSIzgAOwF+z2mX+
IlTkA1EbYkcMvTgtZFzXpku8DABMBmmalDhjut1mfV9dibdtysq84FG326VeRaPiAEfTdSAae7Yj
NW1hkhLkFcbTuiCWJOY/SYcrdjWzl/TkN8LE/YsxLGo2dgHaRZzOAoxYe3YINxIrzIwIf97CoRr2
S1VsKF1fN/BKd6wS03EVvuw0N8L+JmDnM6v9IertIF6i
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
