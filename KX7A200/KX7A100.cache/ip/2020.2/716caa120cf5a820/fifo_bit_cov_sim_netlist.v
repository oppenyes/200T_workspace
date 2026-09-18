// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Oct 21 16:01:12 2025
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_bit_cov_sim_netlist.v
// Design      : fifo_bit_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
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
