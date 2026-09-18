// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:35 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/FPGA_RTL/KX7A100/KX7A200/KX7A100.gen/sources_1/ip/fifo_bits_cov/fifo_bits_cov_sim_netlist.v
// Design      : fifo_bits_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_bits_cov,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_bits_cov
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
  fifo_bits_cov_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_bits_cov_xpm_cdc_gray
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
module fifo_bits_cov_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 95952)
`pragma protect data_block
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
qANCGvr4NOj+o4ewJ3WnIAPGnEJf
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
