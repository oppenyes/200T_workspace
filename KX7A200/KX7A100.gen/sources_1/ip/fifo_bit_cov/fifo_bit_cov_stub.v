// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:35 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/FPGA_RTL/KX7A100/KX7A200/KX7A100.gen/sources_1/ip/fifo_bit_cov/fifo_bit_cov_stub.v
// Design      : fifo_bit_cov
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *)
module fifo_bit_cov(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, 
  valid)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,rd_clk,din[0:0],wr_en,rd_en,dout[0:0],full,empty,valid" */;
  input wr_clk;
  input rd_clk;
  input [0:0]din;
  input wr_en;
  input rd_en;
  output [0:0]dout;
  output full;
  output empty;
  output valid;
endmodule
