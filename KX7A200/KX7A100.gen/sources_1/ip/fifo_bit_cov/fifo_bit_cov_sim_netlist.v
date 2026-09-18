// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:35 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/FPGA_RTL/KX7A100/KX7A200/KX7A100.gen/sources_1/ip/fifo_bit_cov/fifo_bit_cov_sim_netlist.v
// Design      : fifo_bit_cov
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_bit_cov,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_bit_cov
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
  fifo_bit_cov_fifo_generator_v13_2_5 U0
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
module fifo_bit_cov_xpm_cdc_gray
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
module fifo_bit_cov_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64928)
`pragma protect data_block
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
ki4922I=
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
