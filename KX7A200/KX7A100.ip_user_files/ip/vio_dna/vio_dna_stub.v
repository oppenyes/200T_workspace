// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 18 09:51:31 2026
// Host        : salad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/FPGA_RTL/KX7A100/KX7A200/KX7A100.gen/sources_1/ip/vio_dna/vio_dna_stub.v
// Design      : vio_dna
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.2" *)
module vio_dna(clk, probe_in0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[56:0]" */;
  input clk;
  input [56:0]probe_in0;
endmodule
