// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 20 18:55:51 2026
// Host        : LXY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ila_fft_debug_stub.v
// Design      : ila_fft_debug
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[6:0],probe2[12:0],probe3[11:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[31:0],probe8[11:0],probe9[0:0],probe10[0:0],probe11[31:0],probe12[5:0],probe13[11:0],probe14[0:0]" */;
  input clk;
  input [0:0]probe0;
  input [6:0]probe1;
  input [12:0]probe2;
  input [11:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [31:0]probe7;
  input [11:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [31:0]probe11;
  input [5:0]probe12;
  input [11:0]probe13;
  input [0:0]probe14;
endmodule
