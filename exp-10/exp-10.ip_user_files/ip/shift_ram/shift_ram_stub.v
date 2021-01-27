// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jan  4 14:28:35 2021
// Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/verilog/EXP-10/exp-10/exp-10.srcs/sources_1/ip/shift_ram/shift_ram_stub.v
// Design      : shift_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *)
module shift_ram(D, CLK, CE, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="D[7:0],CLK,CE,SCLR,Q[7:0]" */;
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  output [7:0]Q;
endmodule
