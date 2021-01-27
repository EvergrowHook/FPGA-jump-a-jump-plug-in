// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jan  4 14:28:34 2021
// Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shift_ram_sim_netlist.v
// Design      : shift_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shift_ram,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
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
(* C_DEPTH = "216" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
FEKYwL2xmDCkVpe0xCi9uff+yva/1EqFXC/ra16q95T75AEujmnn1qsotWdw/hX+ljXu626OvxNZ
FzW6HXNtOvW09+eKNmWYFSq4Pi8eVMtw4Cp0qAgq1Eh6eeROnlK8uv8S3JiFYlAjLdMM7SRtOsuB
oiHI1iG1JKi/Vi77CLKrOYYLD99IMpCZRHNKPYMbKEb5O4zTBGVxZfbSY/pfJE5sJhBa5T1hPw6S
AipMwvDopdGu5ha6DTe7ZlRzEe2Ljkj01dUu1ON0DeE81utBaEg39jQe6st6gLqHLEwQa/20Ugc5
JorlYFoxp8i63uarxoJqChuU3jE9dartpiidsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOX5jLFUh68GojcjrJhXbJFMY+32/A3Uo122tupV9hvbC6JcaQjHIw29eTkMZByeLPuSvM0pnONG
9e5bl91BpDYFny8vMpgA5QtQYGWH0+csFLfrghRMetLLBos8AWHy1/MZEWcA6psY1ApxOHuv+zuq
XwsXfkKO36jARbwrDEmDpTkvNnckF2Otsta6G/I0G21K9LZ4jH3PR4TalnJS5d0rvC9zMISxbLE2
ysUmF9iD03tzE952WlnDqJBVqhHcszWWj5dMegqdTGE+6xye2jRn1Itna/TCcsk7RuQm08GDgwui
K33zkJAtfMsysrDUZLZMqn4gXqX2BAXeCHLN8Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50368)
`pragma protect data_block
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
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
