// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 21 13:21:36 2026
// Host        : LXY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ila_eth_tx -prefix
//               ila_eth_tx_ ila_eth_debug_stub.v
// Design      : ila_eth_debug
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module ila_eth_tx(clk, probe0, probe1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[3:0]" */;
  input clk;
  input [0:0]probe0;
  input [3:0]probe1;
endmodule
