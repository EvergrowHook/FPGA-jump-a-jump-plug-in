// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 31 21:21:05 2020
// Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shift_ram_0_sim_netlist.v
// Design      : shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shift_ram_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00000000" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "8" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "54" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000000" *) (* C_DEFAULT_DATA = "00000000" *) 
(* C_DEPTH = "54" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [7:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00000000" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "8" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00000000" *) 
  (* c_depth = "54" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EbXZS4y9cLjOTv9aN2dDC1sJBVVR3T6cbmKAVT9lmEHVIdHGCTfu8iy7QkwIs1KmhdwMqwdjQdXK
KX59vPzAEw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
svosYlCBRVGey6v4WrNTTJ/a5E95XJFz56V4Zc0YljtTgqhYJjaDcp0yGul9TGC5O3yPB4RfWGyi
btg6o3Dcl+FOWudpxsWABJlvSnbhUeNY+1OKCV5sW4s8s0XiKCJje0Ckn8Rp6OvgxUpP6PcdRMvZ
/iOZAbfkFtowP72szm0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bkZxbcKN0VCVZ8Sn45uafqVYQYk99p4mTYGqhmN6rGL2wN71zIp7oyvjrZ5+IkYIHjaRPVw6MFHU
01i0/bnlUJiW8yu2wC0IWq+Qr+7tToxb6o9RWnXK0n99HX1QMXGzkrlEpdmtBZrVGvgv4FixWWZQ
dodQluVohp21teUBqa8WcGsxqwaf1e28uNmi0DepWjqMe9id/BduXSphJGM1DlXD21S42kAcvg1F
rd0pAgZ6lhG9/NzFbvb2jrcNLh6ifBCr2yjVd33eQU68fnkIGCXAggzWpyR3yOvnmG/zCHLWi4gb
PMOlEmzrjfeM8zl2NP1wqpFDnlaPnYEIcaR53A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uYdetOP0NrAC/6FuAtYFxT5Pr7xP1xI60RhX9Ysmg000CklbBe3op1FJo9+N93iKzuAQn8/dUzat
ZR36c3yAxvWyYey+XkDfh+7aMlphnj5vggVXK9DqeVsHakNPxVCao7RCkkSR5x9XCYQXJlARvh9C
RhB/l2sQN5DF9bDt9yCKJlWeBEbbcjDJ34WronEFGxp/E9TbIEVWGB4V7jnlgc0oxMMYU40V0d4i
oAADER64AUPfYZ+0e97lsHeETWrkCE5+mE0OLxvjypqZXIFAINmnYsr5zMzToF2CiK/NT3DIL+hM
q6OlPRN1R85uBOCDP7qHtxj+CdoOVPKhdBfsMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mo9oRLIx4kH0M86v4sywZvgPz5p30+mzb2H1aU6fkraIKHMy5ue8V7ysmq55k9NVOSXTmYoCdFml
rPPuT8ktqPXADjRPNUmPsenolR9+96Fta26fIQSUqMHuwI/y88nM10meyCjIBjD3+oIqsgrFqbaG
saQSaPJ/MMnei2igUfM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MqMRozeQ+7B22v/pgqDAubmlkM+wpqpbsz6L+ntdBscEB6ki7vLly/oGOJTK4ju8/qS8LlggHRaO
xtd0voFIGd0icRz64Q8EBqol0lxXJPuQx4zOa4ucCqaUViJ8DL8xQgErcDHpb1p8W6mgaMCbp1Kn
SuN+ZfS1rS2R+r3eI2jOHh5EF/8a+cFR0oqrSsWzggfrGMzKWWsSLwd0s7UMDTtruNQTcAzYvm5V
RP9lHvvN8So5DeLrtLSl96n6SsbeObAAXX1i6fiyPV/C4IkPyx5F/L/IwAENNAvrINtYTWp3zjEx
G/xKzVTUEKeNs9XMESxa+4oJjG8+036ic0vnUw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IMm39dcG+n5fcIDQcybfOguCUX3GDSDHnE0ukUt3z0GfgxGXQ4udN7KfIK0bhw+jASYUkEQOG82Z
jWNGyelrCJ7tpuvsm9YaIUYr2IJ2QT1Ynkbvb89to7fC2N8oJIj+CoBTtLC86KT5zZElgE6hbiEz
7BmQos82ixAQStfvYXzLNA28OuJ6lb2E0qmPHv4aIX8Fpurga4e+hsxFRIU3Z4ic/LvKJqpD4ezA
/K83dWOlScX9ZuWTi4mAGoqA+zlbNbFwBU8V+8K3oDzdsqo44Z/2l9hMNYUPYCk1/tnKaQd15Ehg
LrY/vRDu7I8Vy15n/vvtYw8+JsW+ZTjk06pwIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SsO3/u3pdnkO+dB+OKyx1QDt1mi6uw+plCPLC3gD5vGcT/Rw1DFHrlAIQTmqwHN5GzbPEGkjYmZY
9kwB9EjM2gIdSIdoYRB1RyY5bhp3JCgYfTzMPK5LNFIi+g7M+TtGYVMGT8Di35eaWdm5aaUgxJyR
rB3b4SCUL81yP7DQyIwpQFQa4PC7Xf7b/l1KQrz+rVnuLA25Y6pCjkhIHqPImKXB1AIZfdbma0kD
own9h+IJWBIJ2BjOJkXUROMuM/7PUU6G0C+o/q/qITJAS9HIja+EqxZMlLGXOml4m0pXrwayXWl6
J//yfLFAhoQveWL1I3f0/XvBrtcSUqNyZJThzQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rGUo/JqxXHI4LiroeJP/5v98epEBpyTzmJ7YInVFh76jqPQYqQwo7AVwoh9TgiUlhpU9Wb+qQU19
+qvTF/Gqn30nqqrVU/oVBHdlWt4Qs7hNLYOLL2vX0gnNrqLUKTwnZ21AvRsqNAIDdd1qtREs1EeS
42HSzbuUYLsGYNqM8uyFwr0jelHBt5LHDWvXN1qjep+TpbkIqq07XOteo6VssQFqpoz/YTd2B2WE
0lBQSolvgVtGwYzyvQpu1ZzLlU+b0f4KM2H2Ya3wcFnTGTJr+/5jFzS67ngtvo4QtGMsCXIVZ4g3
ExCDIk47At+SmE7ocd0zDTf64FowzSAMc5LF9w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iX21HDiq9arsnrDwnESSgbtkwm4xn6ZrCC45sBO17tpaClunCFt8ilP8kvYzRjkkHzvqFPWBzW0y
H/IfMERTDpt78WTn9jctRZG1Aq91/23ut2QzMldMQNIfrAGhkuxTNLFNsoi2lBOitHJcbDAwF00o
/fX235hTMxZyGExheO391fj3PNUKhUViUCqWmBVO7NTbLtd+MrKjyio7bfXjEeiCjXMF851g40de
HzlmCDaIqq87N90VRKElzeuBRbprGwsDA2cMNCx7Y4OxDtFv/Bj6NrvHzPzgxziShs4kvrmaTiCu
z18W98KhFsHKSNodmuGHqqhFkgqna5aUV1KddA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
McVzS6T1iRZGbXvLalIfs/uSzMOLGO2QJ/3IU0HHxAg9OvLa+8eBKRBm1k2oH84Cv8VmRqFv+ZnQ
4y/wj/rQzRQikh6dXiQ0e42ZikwQkjiEg3VHGEGlPyih5tpu40UxOeGA5gT4KRTwLB1vWLQxRPKC
KdVpTzuppMTUGxoFfpgqIrhp51KEXI7UrsS7dPcB66/nbUZQ42uduDhPGLFARIeTm/1wi9YmzD0S
64JVwxm1SCL8HsCtZXaZqXP7mwx5vgCGwgvx+W6er4R2cgtUQp0tfeEHYVtfnzNjvRdIOwXLus1G
ojtKYxnhcZVe4svQIFwO81Y2Klh8qkONxDFMZg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17104)
`pragma protect data_block
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
riHEzw==
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
