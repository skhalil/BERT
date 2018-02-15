// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:43:43 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_dr_make8_0_0/design_1_dr_make8_0_0_stub.v
// Design      : design_1_dr_make8_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dr_make8,Vivado 2017.2" *)
module design_1_dr_make8_0_0(clk, rst, locked, din, dv, dout, wen)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,locked,din[1:0],dv[1:0],dout[7:0],wen" */;
  input clk;
  input rst;
  input locked;
  input [1:0]din;
  input [1:0]dv;
  output [7:0]dout;
  output wen;
endmodule
