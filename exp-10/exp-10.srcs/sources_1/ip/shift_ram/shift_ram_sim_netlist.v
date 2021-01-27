// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jan  4 14:28:35 2021
// Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/verilog/EXP-10/exp-10/exp-10.srcs/sources_1/ip/shift_ram/shift_ram_sim_netlist.v
// Design      : shift_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shift_ram,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module shift_ram
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
  (* c_depth = "216" *) 
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
  shift_ram_c_shift_ram_v12_0_14 U0
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
(* C_DEPTH = "216" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module shift_ram_c_shift_ram_v12_0_14
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
  (* c_depth = "216" *) 
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
  shift_ram_c_shift_ram_v12_0_14_viv i_synth
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
gKqBPYxzRkVGop8nmfqFw5elq9/In0hK1d/MBR3Dxni3mrwtYm8tNDmFlfs5428t8x4ClGlfSSKl
BfMeXgOcE6M6rc/rkubd7m2lBSLMzssQmlUKSoyGYsCVlkWICJf2e47uQvFmcUg6frpLS+I1H9ej
QZ19md4rFdXP65VOaMtv2u+Xn3/xanEpNy/ZfwXiKfnbp0TdAs9JR4nS53YBedEff691TuHAjcPM
JN/KZGF2FO3GuzGxVBWLPvnKpKm6zSToyLAdjVcOzUd+1NwTtlurFpHW8e8ZVMdCgRHXgmJUHEgh
OfXiOIbIJNrKOZZeDKN3qVTpqBla/iFbkn0O1g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1LNIhyE4onNDFS68StamDYTgp/NN1TeGp6hjhTzYjFauRyQPpAd6LUu3RPjDFhml6ao6Q+0AsmWM
92xACknmCvs/y8n2G8HtRjVC/G9sBXUE/t7vEfBeSWbFaxY1zoRlVJCQwoYBrCojh9ma3sbbZ/8m
YisK1pVL8nYVxc9UFTdBiz+ofrxffCQfN++DvlClOmfMg1thJ4prv0MgSWN1ndClQ+R5LsCd4zcd
N3PnIPqoj+BspQfGJ2Mmki6Nvtz4fOVLHy51ovnpB+Hq7yfA+bpqAMCH3SS8gSbRPh2RhB5ZLvas
clyakG53UXqWsR8sU6p+D1bUrOsol0HycfBWdA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50352)
`pragma protect data_block
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
vU+6iKHfaZc+rKnocFUaUexzGhH6
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
