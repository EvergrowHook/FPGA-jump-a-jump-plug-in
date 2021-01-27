// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 31 21:21:06 2020
// Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/verilog/EXP-10/exp-10/exp-10.srcs/sources_1/ip/shift_ram_0/shift_ram_0_sim_netlist.v
// Design      : shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shift_ram_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module shift_ram_0
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
  shift_ram_0_c_shift_ram_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module shift_ram_0_c_shift_ram_v12_0_14
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
  shift_ram_0_c_shift_ram_v12_0_14_viv i_synth
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
BVoTPwS0VkraD3qteFvYt8sSsKR2h7gl6vNcPNADooUXPUZGZAz7nCeX8Jdz33bgTpmov9GPsqo2
xuUDGae5tKZk6N50tqy5CfMYjQeGeBduVHKu8JzyxX8bsHxn6aY7nQ8wQ+e88xwx6Y2PG4SzsHNw
F2IvAZxtvkuTRFidgwsntc9WewZnOunFNSyOgPhXFJvXCbkkDanO/X7DL0tXIUmfaYLVEUEejQqT
CLjwYYDN/d3XBFbylGYuNVPnJDiEHt8MiZ5DtntTRB3cdI7tVmGi9eB5LQjQWLAAvLdwGWOCRXML
0rOQgh2v1s9kLagj/a2lmTxtK5OmH3WC5reSdA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oIc+T+ZZ7D97zBL6IE1LYv9srsLDZLc08YB3qd9qFgfuboJeQyr0GS2TlFPLg0ZMEMlX24uYOF/g
5r/aXHwL0814SG1Ke9SH2zJfBgARYCrJ3NTSQw20C1BjQ0b14SBwGPEG68FKOlcLA9H+UIXgCP5G
qHzxu2Gyztu59tcYrpCL9ovvK3deoI2tu08RYXXg7qf024Wgacyqf6u0xvwebuS27RrqZ4eYMDec
oCRYOm5RFX2bJk6ooHMLslqQrfRizEQJQBWgy+Mi6cUOf6AtH+Pqr9NhiZVlvM4lr1iUuIu5RWYg
cn5yDD/HsZkW7aoIseRUQf6OKjd+DTJEQvMTvw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17104)
`pragma protect data_block
+TrokSB0GEdXy3bQJl+JUWZwUj0XAf0vomr8KE6bcPcMwJ0tctPBug6kICeMUgoWTcxAgcmOEfjc
gDTjqob8GLvMDKhEvVyGwhZzkROVGKMdCPcE5EpPH/JbHKMmgiFc1H2Fqzblwyxl0qHHi6QkpBRV
AlPuA5d/LPUnM5x+uQlSGftyglbsRR3jw8fpaMh4GrkFFhHi+EOCDsGKoxZ3L0UizhhiV9IinSxI
zS2a7NFZgBaLQ1Q/q8Rai3m5DXzdQml5KLuzyS713miUo8TqU/DC2N5aR+TWObK/uRk2iJ1OOomi
mHQNOKC8iscSOzHC3eXy5rAmvuY52YOU91HAjMihfeQs8cnjFKwq+lXEvZR5SZuqirsPjDOXkgPQ
1i6JT9zlGimdsgjZkQoT0u3CLKgKWpm1wc/b80fZ1M7JPrBKGnAG18ghJBH5S2KHBqvxqDmylrWK
KQpV6NnrLbx1nUfJ6EztkQ2zqh0XcgaGniEpBW7p0EpzkjtSomIiiRZCjgC7M1cIkn8eajGjGJEz
fGlPEqEsTbKcVbGDmlodcOL0IaAL9R529ucebxFFKemWYy+sgdNPT8TpxaAkfYPardSS1zaWJvFO
aHj5N4MqBWQJR1sy0HjIvzeZUjrSn/42JVHwvbaw846kSQ2PiCs+Si16GRg+MO1qJTnsXHqUMmBV
gDnX1g+TZsyQEzsJLi4XyaR1zCU5JN8IKRz2LXIKREjhbGgQ+Zx4Or/cNx7kSP6bsvURd+Ogk4xp
jfcZIhnHaRGIB6mtTenwMCrPuYyGscsSGMXHgMutOZR7yukSi2x77jSbogJPIGm7sEmos7pW1t7J
1sa81J8Vl0kpkc+0HqYdl0uSKY5JvdsAHYIpQwlMFsnv3IFiQJunhNxoAa2lVJxDO/CJFujaHHi0
gH7LbvdcJPzrAxRCqfu5rrEnU0o32re2RKg/6zzLdCHaXVFX+CaROo9xO8STYNZd7cbABMqEwsrN
c6cDk3knbxRiZRcPcprCVJAnoEIoShZ5kd6DaohuEidZW0s6plCf07IKpb9bGvCQfCTbIQMxrulD
/cBAHA41O9T1ifr5Q9tMmht2LIB4bIB/28TKMmrlr7gBqkMwYyDogGTkbtuk257qY1NeAr4KWE6I
fYwJ70xguZBO2KoiM2D7yHGJYWf0ELSQIS9D2O51Sk3CARc/FssjaYz4eTCGUkc+6f7852g7IZdA
bfLbH1onbu/ylwwvgeXZr7l8GE0E0AjA/BlTuUy0Y6ktfh5bumG9a6g3voMiJjayhKtInkmOWz2U
tAJX/gx0p1rb1ledxCsr3hVBHYTdtuqlyNOgR7pw87LSImaC6LFGFF3mgaAgjhiwShy518JsvibZ
a3Z+2ePl3QL1oV/xH/EvNT1BSzPxgXply7Y1SV0lAyOWUt4upM4yfUqxzRl6HfvW1UavrbpVCk9U
HSW7Zan7rk5Na8F2zAbJGqHFmbj/QIVbrNlm4rippEJMP+c9wx+cSIwKrinIpbTFi/jCc55geGLF
riDUx3ZKJWa4zIBQQIWEXC3RQSjZxyGSO65Vo/zIK99vmOREfYUL/GFllQgA1Usdwif6EAtNaR25
LBe/3w+JiJgN2XiS80+4yihSV2Sz9hzdyoy9WwtV/YHfChSy8iHACBpq0WRySVgKjeEaIhYGhlGW
8+pH2RPYT0qfS9zU4rS1JlgHjD2jtEHrqXu262/w0WEqI+ugJFMsN7ceDWV8aZXLbLopVJOhAHdd
Xt6PVPIi+LfkARqiwOONRyUa8l3VPYNQ0gP6+5nEUHLZj1RKsthsHLoplzJ3Js15I2cH2y+STVcl
WycWZVw3bz68Fi/UU9P8aETY4dKUifGi0a1Jb6OFZ8BiGJnlPOyz2gtYCdyIAJYF1O/djbIfR5EA
dic+nrHg9R/qHgeV2jEV8JF85E+d2KHna2Yk0r+KysuJPqEc4KiTwH02Z5fGHNWWbXD7Ml85vHAT
WyBb3/LjFiv8/9SowvLr1weQJYZfbVEZ9IL/ldI0dAqoBm7Y7JB6uhMC067YkYOwZk9wyyyxjlbf
8rkwLJ1hDc8wLyn7TbgS5ycYL44UI7leqHvhwGqhZh5sYW8YFtMhYlmY8LuvNOT51Pub1h8gSI99
cmFJNSRp4HB4HxtP53nApLM6GAoU28q5zG4LyUJs0IKoEGRx53pKOEqQ8LmrXnvdpkGOEweYLCYy
IV+xdxFK9bHw2tAfXr9mVKbDYeA2Dx5U4ViBOuXlmUGL/Kjv+x/kHya+60rXicODdybkXnUTVAdo
KmI9gbteeCin+ZySO1LS2junEPhFSvVhXVOXTAvtsBB2J3J7KWIMO2hvvLkew99navDiZounTHD7
vjCJB7H7Jpu6kiK/nDXL+WlYqXCRhD7WteOm9TIfRDjVmZztevQLt/eEUX2xwGfIxK4BoTTksy2e
dSyy6nrKJwlgkAbYY2zBTCnhd7YU2nAcyMj8AMpUZjLffP6Khsht6SrcGQ1Ii2dMQdtYRi1ntjjk
NbeAVWdMLkgUs8YbAQUEFT2Wz8hNuI70y488bM9s1vY97v7/2XJETPVy4ilTkPVXlXAyFitGzxoz
QbDiyDwOdztKS3yIJTDJFF9O1pw5w59i774bHdVeVa9qYHVvTvlJWvG1+W2YxL6hJdOc0vNaQCOo
o6KfzOE0mOlBHAgyynwWp2+bTwoHJGWCiLV9J2YOEKJZxRM6xzyeOXoS8ac7uOSaskH5T0fgpNJ7
B3Eqcml8GANHHPT80dAuuC4U5jn+DgR3mrnkfStPqmAYMMToUxZCA7ihBKJKShScYDvSY1dUFurd
GVhZmgqOkXNeH/B+Ny5vByn42Cg9Mogd2xS/pMV4uYxUmr584/8hiVd8d8U8FDtHbvPtNlPHwtYO
Y7YHi3woIuV03UpLimpYl3dm32r9W7L7nAY8zJgFZU/dbzey7Kx42c9a832nYwZYK0uIciluieEq
ukgQ0SDJyNdYcImnZ113qE/efvJo9B6BBaGwc7fLFvcIWnhmGIUP8xGW3YmjfJt3TxjQX6O1GV9o
MsRbOWonQf/0xximlpwElmSYuZPdpQHKH9o5i+9WVeboPBDQs7eQ6Z3GPzkzYeHjKPwDTCp+gJn5
VhtXRH0hTj/JEHBsuKd6FRD8/CXBYqDuBvwP8OUezPLnfbWlcnkBfNiPlK+cqfHqCvPbUjAuZRbh
NIOq/IXalVWF2EdxhN6cCAipQQBspxf9r3PrAMZaRs1sLYECOwYgULpRJrZFkp8q3Xh5iHjGsMI5
DDvhzxSLJlO+JpJgVj1fw9ORgQF+vUhqRx1CBo825XAoOs9dIfEl0w6G6qyJ3Fk3+lrBjN8WNomp
PwcuCuNz7CRoKNxT67noejR4BZbLPpKYw0/Mhv3Xmd90QnYpVFAe47HXVfmfN0I6UBWeVGrkGIEH
a4+1YP9Czf4EYOjWMCHyvGbDlc2dWsQ26qz2cdewFknWtjO7KlPsfe074HF6S/lnA4Fg42IJ1WKq
NR6rUd5KywE2bJrC/r/eh3+jwYV33I3gJ7TZoi2KbsqrJay80dZOhthrCOHAPCGFBhK91uP1oREm
eMTExcyJoP3Lp2C9dniqMkbQDm9ildCUxmqYvFtHYPVRaAk4wzGcKmc8HmhsVG4vX0PXcOeyRhjP
KnVcXqdC9pHzgC5dknu3yu5wCgLcbBIPn1xDgnbvR5MRF3SlP9XgqQV4YlwGIDDoTNwmUMF4tM5l
uN5YNogD8aHh2oVw//Wcf8BWcJ2zehGxRMO8qMgGDCZyFeGlus3UwAg1U1hhXouoFusSfDFifkDN
YX8R/kiT/Wf2fylNsdfCEePNj/jSzdg22h5fIHufcSR2t+9Rcd4bN4/O9QZfhyjp4RTi61ilGbsD
YKaJeE/Rhbo5kk96fcRQW9V+F61eUo89FeueGJMAQyQI2BKwoFQJH07WE1aWfHGd1nr/g3sIQ/v6
KiLeCH5YCdbK+dVj+SBvB388pHaFsD+LTqfZqIkRstW0DxB5hAJ5qF7PFKSTuS6Q9rMpJ+kckY6A
GuY/cDlIrSauaVeT1S5cJdk/GE+lnlfdfburlbkLtQlLaJXgsDDrydlkTykVJVxvtq8yCFU7xiWf
yev1ijo85ECn4Xg2A9Lvj6O1rXYmVKMAoZLC5LbNUQrRVS0o4R8r7OJPWk9Jk4OlRB6Va9avAiOr
vmDGhiA5C+K/LJjVMYZkEytEM87rZehSfKV5VRyetfcG2H9hq4p35v4fmdAYBk1FbY11J5bXjHLa
PuLeATLw+HZjvBQyjD0aUtYpvdE6MsQ0FWPvFxBpHs1K6x/34qeHdf1GxPEruVOTKVRaJsAmXFgA
EIb9Gj42npbU+DypCfJWcUt4oGm7auqZLOIPtO5EyZ2MRrwOWRog0IdhywYjD4ZZSFJhAPEJzspJ
5LyuHMAgK/WOEbvq18WDJA3PE0Kw5/CYjcSMijwA0bEPmSii8PoWRyUqM7rSJ5NnBj1Q9qgcctO4
MBjnqXIzeP7oRFqL/i4QlSt8CU0ywW3aQIan4H6ZNYI26HPU5+lDOssYzq/bSGgOk013a2/TRwwZ
rovw/e/rOi3t8+s9fmkXhydgCA3KEA3/KNpZuvay649TTo1207Tox0e82s9r9bp/ybSLym0jWBeu
2byq810zOWGwSWgaqxNXAO2+270E4aHaO2rdLpQJBgwhCpeOSWsnHnwdoo0Su+AeWmYzNp9Jf27t
dcUUPt15SqG8yf9eO0nUjN7maL3dFx+1s8uN70QiDj3IvFgBA4wZEO2x17KErSEOcQaI2kYPZfGT
pAyuueelTLYitMPsrX082Ja+pKvEFUQ8BevevwWeGWD3AJyJusC+yqYiUVU7uR/UR685DiKxcpub
YbdfLj5xyTzUgKGzeQrqV1rqARIdQJB32E5VQKSLl3KgJUR5YrnYr/kM6A+nuvgeFHMrAW+M0bGa
SS+WJniZVV9mLCzeoL8dPJNTf47t74QUlI4Q2C29tlwL2Jsc2B5x+9VHc5vV6DrqcEuN5nyFgGV0
u2LJJhUVaD4eqFvhZnZVcJIsSQbkJm/QPP+U92wbyE9gXoXJhHYOhVn4QX1JxfmAIjYOsT2V6A/I
5AzweIeUBDPt4jjQW658+Ob2VsRpTv6SQtWYmNLkiOnueAtDUvC3T1zkNwDxr3Nt/tNhPYwfzzUT
EQJFe/78veYHOYW9xcR++MNSaVPvZT7Bxh9HRN4xeY3tcnuWaIqMquikv7RCdxuRTPVB8Zv+yM8/
bYGg17rubCGOd7XvcBIwOi+jTUOYZee4Nu0LBddhyob+6coucqsI9wSDTQL4dntDzhNJJoFzt0La
GYjmoumdOxo2idq7swASflebF3M0hgNaLt9ZAnjvVWlPYA8fO+cHJLEMlqZxuNOogyE60BYXMEB0
nQguNyv4gc5Xak6CWAb8YwQB+nCmXhGQtX9flQKqEOuZCySeyw4iJ5QcvXy34YoZb0+GoMzihMga
qYCAxov3q6rxsWUyuCdaYkz/zcj2dVsa/frwIN3Vjt74UHhZ6oTzfM7T/ZuaIAAAyv4OuFeNtO0D
gf8TBlocxEPPnKd419Jz5OWlur19gV3w1+WLabEMpsMvvPeFaFRlLbKAb4dvIjB6FCMW57f7BC0E
MWZkobWJqcxKdu/eAi5tzf6+fAol2mClSHyYUUtcITaKWu8x7IYuFe1DXFIrpeGyl9mNGSfyaIXT
0S3hNjVPqFDRWBeJR4CD3C2z/YueD5WinowjnV0hPPkgJPKIHOPjtjfKXhA2gz19742eeVwL8Oma
lNbK2xi6QjfVBagKlZVH5nqzoWVIFsSMsju+HbHMBYUwr5RfRAEDd5zy00c25LjQW2PrSFiPKvDb
43e23Vzzou7GWugtTVQm6yJgs6HhMfm4uOgY7aCYTLBwnZNa9Vj9Hh4pBcG5V6ZQOMX/tZmZygWz
PYXG7jaeDSlOFz0Aiz2eBAWCIaWyq5JZlYGr0lv8TQbFyW8A7iVQGn9wlGTRG5mqiDZ7Sj3vwE/k
OcVbJN/6u76XPjpIg2qGpFh1AsjpLXHyqRaaQEhUOLF0I7imPQhExIjfKl0FL3t++OHBFWI6QhZ6
U7LacOl65vPhbgZzYBnpqKWXpghC++i29tttsWAm4ZoXP2kOyno9AYO7JBtVBnLAFAGZ4nsQlaXs
tGtXoDkIWMA6BVME7oN/ESfIC5BrTA0wuqHA493h9YOnVGxW9DoQslRBbOVuwVVcgNwnEGt1j6Ut
20nudheO5GI7pBmVkJH62IVeiHwUaHBmbYce6JzfYLrWVv6JB4em5kbs/b7l1FbewrUQA6OBkUVR
9jZ8EbeCvXlFEsougIHRQvhBg4Mq8dw/V5iUuJctjpmtPkwdQvHsSUBWPRIpKyAyCmX6VBGkny8Q
MtMT8Fs8mP0qvQYvl6ObFDcrzRoBTiB6ynDjYsaGArYiODfEPTLJu6D6iU3c9mE1T3omEutcnFw+
BIeS6YJb/y8cWwps0tgK5kXZxwQpUQaU5EA2SaeItZXkCvFiuqsRThfgqDbWtdQv86G8bN8Mkort
ddVa1QPixsIvE4823iWAeb65dtvIoW6eFvPpYNCSxvG17eL0U2FNfbHCM65CZ/X+5WUKQA2zDB6d
Xt+1b+eZWXBV59UrU/rxeRO1z+aU6N1PrT9VSHgtxq8/93oqOl0jCe4hAiCFOc1Mw4wS1imU14W4
4ysFptDzHd8K/xL6y08+3+oMxOtylv5if3f0/+GG0iY2FblXHOVQqqB6PdSaIECL9r6UHLlAU8Ig
seBqA96jicqf7HA+Gfbg/XGHFH7m8CEfmajQvo/TGbIS023XIYuMZnFjmS04L19R0Q0VGCNs0CtD
RnntOYm3e6QWbuj1hMl7bgrOME9qnK9adwQWwDZwXpR6iLjZRqb6VTX0Kce10U5yw0rNyMFczNYr
vqk6d/pgu9AndkxuA6f2RY/KnyalSDGOVNwTPfTdecXAFUUPs6yR6dUuy1SyJME9T4yi6FXqzM2a
6/7Aoin0V6ub4cWEpHFa9Ow2nEegIvKgG6zKc5N0PwqFZuM4Gpr2E2zbcSy8SD0NNiqRX3PvVeDD
P6cFJ/cuxdbf05IY1P27O8b+tn7Z5R0Lzc/EmKU6w5IyRxJEmv8azq8EQ/HnZawEv1ryEEBNd3Z0
6IVKXyPg+HO+ohJ6xO1FPfnMiF0QoYPBLzAT6LpEpeILIuccvuUako0QyC7l7Sq+ybbKTlGGHDt+
LFzwzLvNvBgPdBjTiSSTZf1LkvkTE0IQaku/FD311uZxx8k+2e9b7TInlrG7EZ8YwpCC52v+GXxH
r96IBZi5aCBnGmeQKmn3g7XQC4HKN6EK8Fz0QkdvYKliJbN9kdfLckE8ntswlYQ/cI4wNknMWg6p
vNI6+iQtqJ7yYW+jc5Y3GKG9UbV6hJqcIfR0iU2YhA72FLj+n5795/TDMcga2fgv9jLqYCa36KcJ
HRdMw8JkoaPyooEcEkibWIAvLY5O1AqhFOfE6FCVrnqtn6xQ7HlxLlrSCDganLw830QOq8WxxYhw
LlRyhsJs4IcC3ebBuw0KWz5d8iJDTRgPOXPQ2+OgMPP3ja4mcEu/1RvI9vOJcK/MFszfh0Q43kZp
IspvqVIyeiMzqktPUC4IXewsSem0MHBRkCdZ2tDEQBoKKNaJcyEtHxnrQOfPiWqV9DkZsc3AD9iu
mbt7iQngqLxfdmyFDJ1VFP9p1iTEFgo/tXM+povHUpUDu26q+V7sVoSGXGeN5AOL+LCVVhFWBY/k
5/3gSw4JnmZNC3wmizL1OyBQzjgYIW6NCRsObseqfz55KG/+y4xza93k5Of4N9HyojRKm2Xa3Rf0
dhOzn1DuYtNAbbQ377BDrhRBunK+GXfSzgcqZIM59Sl7c26Bjo32hiQqY/y3PC+MQlOUyt/jEx2G
OmYK/6BPBiJ44Uia41X/u9ry3d4ddIbaonalS8uPWS9TF5y/IfcZzeFQIR85F/NBOElfzlZVaUQD
Pi1xa9zqQAmejmeT6fG3r4GGtqt6lK3zCjRVyvIr8GLcR0HnLf/+gzPqE8jTk0t0wXo2n13p/B8n
QRTQYl1fKaZ/QnXE6HH+FIQTBa3Esxz4NenVpuyk8M33La8dLS9sb0QgeHGcVMovDkcrPQtxaFru
+Qog9t5rz7zrYQNcidSXefcXBNg79dkqOwx9GXAxF0OERgBolvUKzOTnsooUKPOr0L4sEn1B5grL
yl0eXRn+4GNgKMVt1M/9Z6wRJ+ieogYninTqsmZ1ZodnIV3QXtjkOaDZtcl/0Gl66wgkTfuSIGkC
9kUTofosxo1QLVApB0YMPy+vbdtriX4HmwDW9yrgAnHcoZMEF07ft4Rqw96OvIdCKnOQXrirDJet
5AwF5kVGWNFoIbmkeH+Qvq6JZxugSmuMoGBiAZCE/sAgCrO0v057rOyWXE7nUI1xmZcCMQQkg00E
6mgcq5VxUjYjkCuDxgxb8K18SaggyQjNUta/91O26GzyGqmEjl3nq8qILNBr/nydAfPvF+F0qkgP
6wQ2CNhtTPD9ccSdF/UGkZ9LmPubL5l15R7co//Y16JWXwrweUK9GZTpuO6kOrtwDzOPmnHeBsim
1H2UdhE7c+HLkFEsjW7xpU6NOaZXEd/ZyaeD96ui7OEwGQrIoNYeHSm8iZOc3B7/F6s9bw2TVbCS
AvlGtkksPumwtmJHR3dWMW1s2rCoStPqCZL9pTB1x2GoBTuUiGU+cZ+vh07otA0tTzpvyYnLPIRA
RO4Izk2D8TAovgvzxzLH5p+xDSmxb7PUhgJkBanltdOkTEEbLqbfhvvtGcDWSfDtAeWMp4ebFaY4
YdDnuPqpZmUl5fzbQkH2OnDHjdASGfe0jPE9tm3gTKtMaCPGxYzSEHYsqpiRM4FIF707sDfAMfEe
K6eplOzidEANPi0URH82mYYqYdOrmzybOVAoAPaUTin5K/W42eLHoD2DuOD9xBikJU3PBzYAx6Hn
F4QzIFqX90SXALXAtusDaGPDBuXObH/N6HPmHkb+upaHYOiFmdjEJJVbAmRx6zIGBbn9Fon7NUuv
vvpbdTfdCIjipLR7Kr0rpoK0j89BLSSnDYtD/0Tb3etEpHemQQh3br9wOMxZoQuQ8yLQr6RjFF5r
7XanSxZuirsRUaMbIWZa4BPoUonsHSrYdtFBz17dHuIH5yonsEfcGeg5xKXtcLe+3JAogFZqrYrm
BJ2pitqF06lbA8BOOR6WHNxKRFUTw02Hv6uN/a4jhKqH9R13afQktum+8VKO79N9/ylByIsiERj7
xOFA+5A46KWbOjfk0SpsnVJhg0+sXF2WuHUsIFqk01YCdKvkoQmInIWfrz00AM/Dn1ELBSHjYMvO
iE18U0bqEMRDOAa/Be7netK9LOFDe27TzENbY8U3Tuw2xIRcbZTuhU5JCYzP0SicZFncQ9bc0+IS
X3LBMM4T89QqyOfRxr08OHHuzIQR16oNr3zJHUL6qSN95WgoVKz8vtpCwlkZGqjwzIjSyC40Bgwz
nbyzPGcHVvbwD/DQS4cyFseABmIfhCSzZMGkfSn3fSqK/MjpbfeQxeQQTrsZ5zfBXAkhoF9zo3zk
2DwWK06NepSIC7pdd3Yeger5QCoWCBRPLsUtmrPG1aVjb7oJc7tHqFN3gfxAXCJhP6LsejARSif4
0YJOF2ClNcasTZQ3esVg7k0fMYQhrmQdPv5yDgGjmeqxHf0/4E4m/c1FmsVZhLidD7bXBX4wKsoF
D1orSvGUPX7Op7jRM2XipkkvtWtXKp0uHRF4VeoRwlQ+656kA/FxKtTmwQ2c26gHw85txy33nOm3
yrdj3GfWVGR0Nv9mPFR6DZ/TnvK/SnAW4tMGf56D+1CPSNazOkDJyvqvyfmEjb7R/WMbBhQRgC+X
Xp9QC9QSsmJLtP2DtfoBi9IvFgSKtZ/ZD09jDhc3KSL5mqBZa1U1Se0c9SB9kxR2G6DemEPgdSd3
CrvyRunM6XFPgw0Ce7McNSC8WW8l0URGKJhBK69XVyjR49yXaZKgaPsbsVfP4bJ4TS6hm4JGVwO4
6+qrFFu1ruuUZRoN4NUpVxS7HnF4dz2fctUvh8ICyFQ16NNAUewV0/HsgjJln2HKHOxLG7tw3BLS
aBGcJgC3MTvx4OvOXlhtp8PPQolWbFGmpW3ev3hzzG5HkqIc0VS6XmpUdyltQUi1nggyAOBtEuff
C6a1kd4I/SIAlbA3cBB0sYlh/FnQP+MBFpH9k82no8BdAq7pGpnrmtuCI7rlcf/vg6f1G3tJp6xH
0KTNOtINYYHw8JfleSBfXuEpnG0WqKP1uuJmWZzdaiNXLWmYoQIP/oV+MY7iXz5H0t6OTS8glI6n
68tXqEaGDZC4GreFqIF4kP65vt0d51IeDkIKTmdp/AFVG4dVEZQwEw4dbAxY7bPy+tSo4gTOGfDz
Bze+SfSfxYtIAdXq//UjLpb1VJkfEExBB2sGaN70c1rz1vZpZ0rgb0sw4Gr9rpsBwJcuei4GxGmR
BZcTUGPqovmKsKm5JVZDrF6gcFd0/8Z6G4UrgP1LaZBy/6X+IGBhsm7wLRu+V5eo7YiT2lwkh2bI
MN8u7EW/+EZBDHTt//fnqoaMtE1jzHm79ZMh8nKouwG1zaV89mCRQcCtZzRvXA0KKQV880crZWnK
BJWOSN7py8b/CfRoMR/kyjRWXb6R3lLA5fwDTm/fFijf4OZadfNEFruxUZQA4ScAvqqCR71FhSYy
sSG7U+tm7T1EOOOWlxP6DTglUXXvVYz+A0zkAhRgcDXtEA1Bu9W+sv7heuo/E1oZ4FyOGr6pSpiL
+pAtuavp5TJZo1lbxZNcu8jb03UoS8i1+N2haMqUCuA8YLhK2ox7gDZjdohdo2KWoDHzceoDJ0hI
xViMfOlxAt2weywSQRRlLyadoqCCAjJx7hWTEdWjFZvYO3rzoYSVZxD/wJRBt8ycC6tU1cc8RWxw
Dstd8DH3cQao1eHdVi9z3TUafyvsOD9ez52MfAgcG0vRJbFyZWljzRGp/KMjqOZVZiIvFDmn9Hzw
VZADbobuTkjwISvTBfUnYvD1f8a9dP3NloumWWKmppgjyj0sy3vx/Ahz43oB1ngjzEzrPnEjM2Iw
iJyW850OjnjPalZZwoE1VmbBi2K9JCj7Xefn3+Of+kkVDaBs7VeUkG0VEa+HfgBGQcM5PJAXolkH
IutYPoI8N05a8so1wvsBv4o3cLzWfNcg/7arE8+RJ35BSHmz/HhqI2UXkD1VXUfYh3MWkO56ckOG
TPto+e+sWxdnsQKVkamjT9ghe/NECFA1y+rhe/4GxFbzVsjMzTojcI8FpNWFcj46XLcwivCJsBkq
7Iq9qyisWPdBtonhX2J9puTJwuCQAGQ30rM1lHyjZ5S0DtDNaWbmfspCrgNFFc+y7EsYZVtBLaG3
DWnN2ohOBeeEJb1CoMPC/8RW4MdIbptPBw5v2LlFfkLkArJOnZ5G7NG4gvm2JTOpV/7uflIq9fUO
/grfs9r44Zzikh5Oqe43Gp8C7MN52F7FB4DQQqBPIImBaSkvzYAwnX8zfq0TTDZRtOZVDaeYtedw
mpMTtGMKRQbeY53IAJ1HbXa7+sOogf9Nh7APFm3sLEbUwbiLgIOckpKd9th2NTM5DfOwLEd4ukcm
hHayqW3SeS2zVip6EpsxILxnOiwO2Qijcmip5CIOTgil4bi7WJdK6dI076hv2Y7SSdjzFjNFCZ69
CE3jpaEb9J8gMPR22cWnzQIX/yipaL3szzMgi6lmIUqlvlEHRe9Sj2Za25a1fSuqu4PYiOU9ugHz
m/2Tk/j0qrwxS9kMMVYJ5h9uJgnYXAHxXffSJhRqlRcnF0KVN1dR2j4gWlZqJA3vxHy0A2Q8dujL
H77ZRAgibiMpApMQ4az2IJAm8F8YpWBlAJlvENa0Jez4j29jEI/U4WdbRiP/OF29WN+2d7VAfPhj
MIMJNCKBbNWnZbhSX92V+tzJfx/dmhmOGrIpNTHHpayQZ+sZGUC7QhM4nmZc02oWjfIAI0RVVYAS
CWFP/HkaJpcgi2CdNCtfOM7y93UK9GII1jLAF+nBOMTlpxVqMpv6fR4cjzAY4c+Te/1zhqFS0ZwW
Wp1Kp105f4Crj85mlLqqat6ycII+xU5I2R6cxqcFPyiX0KNTvNBR5kTmGL2T8d98suqzdqfa4lNw
MajB15cZL8pzn7jbZiesMi7A/CIKWaUXhikj7IezuTRTWoA3Fh85DRNnxOYsTTEsBfLSJILkSpoo
UVMvl3OY8892qI0iNEJOYN+0IRWeAIHIVE9Qp0z0xrRDa7ZeZWGwllZmrZCvV0+j8pmc5/h3LxPn
8S6DNbNf0NPaX/PdCVAePeyRsuMrMx5I2SVpOAFs+ru8acWR2kLS06t0RmpUcZCOwHACYTqcSJL5
UMkC+hwVR5Ka6oTU7VZ0+WdwZANWq9Hn3WZOlB5+bFcelKiXYGv2oJR+NPCobOGNNhVrWd9DWlpc
aB3J5f0pvh2PkUOvyvwrfNZ2F2rIvbgZ728QdJ7gBpy9xHIHgSTcaB3IUPs9zxSl+SvU1nrCEhQK
FXWTTppEaJM3xqLULy7BFFVJHu2tWePjKcsPJqpAds8lwshEnHaBck1ylPBjeVQWo8ixuR30IWYZ
inWYuvNLdz1Yh3Ykes3MIUdqu0Zpj4jJ3HLIij7UwDly/KZyLV4f+a0JY5Ke8tloakI39IZaLJmH
fF+IJJiZcsVxOjASyjVLB53gGRLvvbLW/8qltQBZZw6cmrOzpvLLyuccWCScw86uSznm5wy8s36+
EKumpVi9wsnCZtXrtkMQmQcljzwUHHWnTGN9L6yqSLh/sOO2tzWPxZejmCqulMmbTLTn+Yz5r+SP
YZ+D53mqc2CezQisxIfW4SJB8jYUKFp78aQYvqv3B6xufEz+D039WT9vOOo+09Kgsky6jJ8oPPG1
k0p9gokKHbPbkZkgYtogslJznw2WaU8CZJ+wd9dKyo0Wob15ITBcoEZSK6PkKyLAir4FOQUhPvHJ
gfk+tpw7gSz9N/qfrQtsFnf2/LpVm2DOYD3bwMK91MSYTe9iiPk1x/i3yoJ03lqnI1AcrBEAc2i5
PjarkUCAu91oBTKN55A9yVezaCrXtTzteOalybvhi9nYQlVzHZfftzDWWE2HZ86OLRpgFIoCcOBd
KReFQvnR1aGCKU0il+XL0iCTfUioMrp6WtXK1QXhnJrHc+0vkZOvuNbyiXxETYScByLqHJrfD8JV
OPvfWyFaY7w5LR8FZUG8ZytC2uImU5lsFNjlM4h7yDkk8VJZURYF76sy2T1Cf0cxEWgwlfsUe4KO
ZaS5aF8LyLmlJL5zGCJDzlXRskTHf4rGN1Gm5XerlT3yd02Xj97tBwIfjrPbw7+kjsQPTpqhNLzy
2rTjWFbG7yp0cQjmze00PTqDBWRVmMgFd1alMc5xZLVWgbk0ikM+CpUvBWcZOVkc+pdwlRcoOnmI
GJiGPGLi0/Pl/f7tZzh9xNb+Rbh+aP4XO+0ZDvkX/2WNCIUAw49CPZt+8rOK/j+Bku3wvoXdinFw
5MqDXzf6PDVOkd/EH5WEygpXx6qbzEUfFi9anF9CX0njb+NVxqx7mOlHD3ViX+5R+kacMZxw22rq
QlGexHZWzTDgVeaGqp3xOtsqSG38QDrT8tYfQd4GDa0UUgFtaLz537wcNUKrP3L2H1br0rRDYKyK
f+2/VNzzXfKi2ZfqZiCS7Mk8s8Rtxqa0U6bLO/pzeFhsKwihPjCok/fMqCNXPmweVRV2zRgJ1pmm
8qRCX1gxXpqbwbVlmV79b5b1cEHvLkSuerZs4JocodTQd4YKRcEmRww6w0R1755aU8MddS8Jb4Dk
01W4/I834RjadGn3K8aUdh7KHnD3tPuhHynLjpmLKRV/2VfbbK+6OoxXsoTCA1YJ1EEUXFRBm4DJ
aOS3eGnDyFj9XBxnN0o4wpLRIhBs0bTjRoS8Jl3gEfqQkVv4DBP+cQAzxgpbIYxjjLIKKYEnZAgB
Qd+f8Kq4/tZ4lOvfnk5cFXPCXjYv6g6RT7d8bZrwRqfmR4lDx4KMpBOmg1z8S3880cEFHQMK42Rj
IIBVsIbVOz8wqi9jD8SmnRFKxYeshSN/25lSY9WlT5RbUX5WDHHQ3dvcla3Nqr2ezfvq0MsHuVGL
XrhY2H//+q0xzGW4ZAi2UQAqvwLM91RZdeSz++lggZjRqqsOhbYNz/yHGB7ZOnvXd5T6kaCVG+OH
hIwwL6hXhOvf1bkQlvFooqdjsz7LgddkzSIptambHp+E0NVESX0+ierzXFH40tlBWZduuQRBoWCf
9cLtDo5S8gsAno+0AE5/b1ayhwaKqjoz8u9BMMi8BDGIZEGxjFVcWCMdXU9Mua1dKhlu4+bFyJta
sfXIbOIz4uAAbCxBQIix1uvashPzWH14fVhojJkol+xzfHRTr2uoxZvziWwyckR8uPaWit2HYtpv
swRoeeyxUt/FlgLbEgsFUk8L45m/uWUWcW8YlODNbA7O9JgDHgrmezmSXGgTweP1Lg0riOviSxQd
M1mSTm++2oHsGGXDD4jM9+eeYKTglTAbjkTV9k48lRd8iXOFuSQo3VoXjHJlFPo08FfYZ8im+JUG
tyvpLeFbYXDbi4fdV0l7mafNh2HLelbH4IbsdT47I84WRXDjAePpWyjCK1JKLOQvzh8HsF7ErtSc
QzO34BYVyEMYqfdsUIU0VAnGNPzDwKdoqIgnSF6Z7MEWNr7dyUECQaN2EXjI2/hjxSlVPd5tsWJd
l7f1+iXTlpzetSDVPs465/O5uB26YkLmFoj9TqVnaZhp2v+RguGx0maU22wx4+I47S1ZdzRL3Ltq
kx8jkDHfldQgtZB89PWh199Wy6TOanRrN+2ZoFWoh0XZTkpQyHYNtVBgrpphX19XZOofY6TFr9gA
7qYyyynCb5ny3Lu1BCoAjdNg4Hc+WMFxvTzUgWaZqqw4lLTMT8kCjVDNMJIbOMh30KWhTH1OX5rh
RzjrE/nV0qgxyn1Q9hqlq7Ifn4B1Oz7C9VjBDl6svtuAbzn/lwPd1utOCkp3nmpbzK1t/I5dCCgX
h1aB1Pkk12g2hWZ8oFKGcfoYaS/gETPTpRp7IEpaDbQOen7bKu+vpXi6Pho/irTltVRDqx7Nkh0+
3Xx8IlYOf0saK9IAFqY+p/Bus4BdyPsgIi0CSjfaENoqklJ2KqHb2eUd4cul2T0zNQ5clHuBT3AU
WK7FrQTzDNeqNhkw8lT3SBetXEaQ4lKlfboipxqrezwPxrnDe/VDOCX89X9xQ2XXdDI9yKymd3Hv
ljN5tIqp/QzxPzWCXx0bST04xpbX07NuGC/CtqheQmAI3A8yiT8vY+K8tHmi74qCGDbcQ613FZyq
WO+4O2suxGKCyUV84ZACIut2JUi6GfO37wAkXg5g61q9hQoS2flT+BilvPRdaXJetNT7xgLHelpw
t0a6vQXou+7O1iLWXNNGEpfwlUfmEN1/eWdeZWeekFov2FmlCAoCZ3oltuw86YMrVO0bRyapwh7L
mhmHbc502IGeUjZcFdKCekwWFGqteX1eGa7haOYGG3zRkNebiS0GoS2jDQ3TFqYOgCwXZBbxtro4
i9DxWxqmEbSh7MmmUtfjerMjtD7edOy+61D7PKE+db9RMw8xgyc/ONtZh4OIUvynBbCW3/ZKpudQ
Ux6O4G9buhydR37xIsMolJftdxUSw4/FqoAHBf3v7JUYvNbOlDclYgzJam4r7h7nfNLE5za0BJ9t
Z1Dhi6xgG4f3SclLWm3jm4ALr+pseQTCYNsoxVs8jMJq/kc/DwZbpc4jMVn9a4MxTN1/jnDFkBF2
ZT/obZmcG+hu9YszefiKrKDBwoYJAQWjuAhwVHAUc1Vy0zMo5mt5KknaZKhAaDmEfNaO+Kb01120
p+v1VUTV2yuDGEhHS0jMOJPecH33WP5Fbc1bIV7ovT8NxI/W60MPn/1jm6mKr+uE+bL3BLB1bTCM
ZMDsDiwnF+L8BKkJqNxJ7cuxoZLV6cJizjNgEBVHl2U+oEsADbTpoh8WXG9uewfpXKSGN+88dSdd
bHWs33vFMJqgVVL+U127opb2BAxJA5v9ltWugMZDqZVB9l4AdVllhgG1sp5r6ckhcglVuAiGi1+/
4m37670xNTujJRqMxW8Cxy4bEguOVnAI/9jUpoz+5bE8hsxs2BBSOVjgGdN8NJr3NAb5GAZG8CkY
ZFeFNBMGyOJAlGvxIN3e0b1bKrQ7W4Zdsf588Eqf4M/gU9ORSve2k2ywte6buLpEJnmtHKWGrs+F
neNr0XJeOY4vWdGtUm9PDjOotunkYieLX1wOJNWorsaqadRLDuZOuWxI9kVT1ZcYW9CROlaBi55t
XbjBzmfJbNsIpmSW9bgEPsSDkR6eT0QuqVYywQyliNvDJK3xu25HUOPVW0OVWWJSCJmCD+cP5Neo
SHv3uVharJcIWIJnBTtrEHepi+aXydyBZvN2Rs8EnLtiKhDU+wafjDYNgH5tx7Ss63oUUnljExei
miqtCN//DIyFscIBbZVR9eOe84IsRPR4xRevggat7Wy8I7C6w7glUdlrHlEbziPwfKJckmNR22Bk
vfONCMANIxx/fadRo1t1cAqDRk4r08j1vtwgybqZip9R7KON8p7mXOk2XlDSIjH/EoY5gnMZh/9r
wt54LjzH8Tr9ntu9LpSRxCeJD6RAZAlNL1q69zlXQKTHCSdNGXAeH0rnod8SqCG4jzA9Lx5fDcd3
dV2x277sMcjqQYlyrHneq5fO7noOVBst3w015jkOzjDPzzwXAlv58LBE8aiIjIDRIR0FkoL7ouj8
vIlj6wpfHVPVopig/LSjxc4+pq7FSInqkE2nUIiEZqFiMJQWu0H82e8ZtAV2UdA6B9HSKiidsFtx
A/69j0JaMphOVRBNWxoun1gMRUSfTo/cDCwIMrIs9vVlqdB22uMeBYlU0qzA3dol/PCnZ6hnqE1b
cMDLzDQVQ41RmFIdCE3KLBOylOH/tjIJhdiSv42/bI/Ndfp0Na8JXe62dj96z8tLwvpcFefKodV6
b0/mczYk1Gyfw98oDlInUFmMUsZER/YMV7RfCiU9aN30kVRL4VDoeE9Z65rfzLwYaomvrxDlKWcK
cp7egMbNNESD1aXk/VrlvS6C99D0UOtTKlsau1YUqNSPmXugUAX9rxJROcDvVTfZBm/4EG0V7xkH
bgVzxYvyjuLfNNmuQdPLw9dK1+4OK60woNCi4Ye8XkA/U5Cv16wlrFgxk+60kLPIiwOcPl17eRuf
I8e6Olhs5B+Bq37Cat2YmGybZBAFliUs4CGeaIaoDpbiHK6w3GLdpCu0uk0DMjJxi9fxAHlJXN2N
d5g0x61Xev/I2goQ8unL6zyVIpZvSqo+4gHpPSfioa7AS/dKbC7cVfHAHRpNqeAe30S7EtSwefXl
CRhqza7gS/c+KigaT7ANG2qeu0Di4d2BjhwqRDo2qRO9V8AgFCneWBBSOunNXayMetYeQ4uxAOlI
4H1v7eCcoy8fMPmcV/rgVptnsUQAvw7w/PT0jzt9GywFaI8e6Z9DztqItDj7CeIacKQhb/ksXFm0
gmKlzt1JIgDV/igQjEKN4ZVVj4NAxVhlo43UC7UV2pSRYxpw2RDjipQOgeJ9zjmadJNJAyD1On4F
Nvs7QybxbKW6BtP705HjbaHM/xAtbfkKr4yzUR/k8H1M6bh8BNIFgqEIT5mdlXpoXfZjE5Q+8XFo
XRvEQ5s55O9fR22y+LZJWm7cTUN5HUYdI/WLmKn8dKTSUSRp4wS/1VGpdg6Uor3+6IkLCvYYljBM
97wIErYX/E/w+ODWnI6eDGAT3Vv3TAt4Qn8f6zOqsp/noTiBITW52vcw/zI4Iwjot54vX8grvh2z
xK9DEKumCbd6iZdM5Sbp4u2BcI7XDLLFwzC3Aagf+rgvC1REagZMNgFP45eKYoBT8rjoZC+zcDdm
WMyDPPrSKzhaY/GZ+NnD1K98MLLUyWpyEF+vonN6Gi2lrrkdf9oFHYHA7k6os9xRRbVF6CTpWH2r
ct/lBvPxquRjvByJiHzMEG08Oe7dq56XiTAJWg6OVYIf4VEdmvWi3EzF2V5RlptMKv2x7wcJzAfZ
NOc+RLYaa7GnrAHbq1yq8HpYBstExui2CX57oSHwn5WebPBdxRUn1mDYqfKvD9of9fYWFLt2ws+t
AG7rJK1V5y2VmbW+vGayRRXJbkBIc0Z6IEp0WmSIRBnc09C3vHsXWVmKDgQrJ8dfNfj2lVHJuu5I
0YICnPwhNzHopHG1dpNLTZYf9ueKdu28F84nv6Q2COjbkHC07b68UQBJNErz3Qy/JxPdXeWssEaQ
xCinzpcgrnRhKc0AonxKntnlWcQxY5CVyTCEopfcQ6UYeIxTWgFYBVfozKHskWm5309jQZgeqVMt
dX75udkpctrurYuVGQbObDkC0ecBTiwwEhq7hih9AR7dAvL8YF03hFtoricu0akwBttQtbXUvxju
VT/n8CeCyzm38gouuTR2jynqBi3crApthI5uTv+CIWYpDiFvPqkop9honZ/fTa+AgsJLYfvBHkLg
BJ9ZSW6ujSLPKX87mf2wwOuzdj0TI6YMIuY9sKSaR6DDdZMCIeUtku0ou+J7NRCuQPU9yjE5oSe4
Fsjw0XAqnPfzJcNVwwmMauYxj+ykwKJnXRyDWD278VMumK3WAFyhMTMHB0roSBDoI9OohBnMXqt3
l7HM/JfzvbZcYPP3T2u89EaiYdgu0eNTr1q1eEHlkzb8pjyUtsIijVizwFl598YNwOYb5ez4Ntt2
6i1a8kWzJqNrnn5beZ9cmwr8n0NmgLizm4xwWxzkn/cZNMDkv+4cMaEg339PNAfBtdTOuh0u0e3k
VwcmESLSds9e/EtiPYwSmLR7GgtPNO+Mi4Brr+Pd9SXDJA0QfH5upiQq0l4BcDh/9uR1myAqI/6O
rsnX8Bqp97JU4IrE6eJMWiFpqmF9DC5V5yiXORR3TbCcQOMWVMAyvutZ7YrgqpwsKFTnquowJCGf
HGV1xZSOtHC5mKdnX53vcUvCcr82safXxr0iP4dkWZw6kGgVdrdr/boXatpNnYjQcI+BGo0SUBlO
0K+5RPcCXyUqto9EJJZt5BGEvACQwopp4xH6WW/ITtgXRwD5go+UWJdi1dOTyzPwnQc5uc5mviT2
eou2M+jCGtRgmNED14Dgr1v67jt0kVUk3tHmucO4ASlIDkjV1FmwTtsT1lD/p7ESzyJT7KjC/52t
T+D7gQzANcIGbfMxmmlwCIfyReKgCn4Q6cWyq4KeZHiz1JIeyomn8JoY/mWp8Ns1gIrXwArS1btY
DEm4yCnyru17Z2EBiZsvhvurY99kucbfaaGEJe5jvADF2qqSDTKWqhPv7ZfrRQqa/M7JfhtbUkws
bVYWzYjmTsvNrREG/eW/RpFRh6i/oUyMASad9AiKISBkdYsW3Hy0dBZAVSNIU+UQ8FQFSXSL8WE5
fLIHHVAovw2y3WjvZXUWszr9OVksVFWcaHg7cMhpzPwdQVjZmKn/mQXRVNW9yfSlAljKMVUhiCRs
PA/mqekllEewQvUfpBHS3RPCePw55VKqVlUK86QZ3m1jo9cGhKUK9RavpOtLwd2IW8ayhSQephtx
oyleeAp0AQeTEl9NxujjCwuXYwYE5G7ei8PEonojG2gvYbZMJoscU+VZGjw5LK2A4BWZR8TMMwVM
qhs60oLsdZihpGzk3u7tpg8wKfqoGbDLdLGlayDHQAjyddeXAS0zjUmVeZGk4Dm0cXvVM12DoHPM
tn3yj7e+zErOTC5kk0wejXZQta8LSzGjNC7sZBGVFwtLpC/o+gXcHs1K5MOyETddhUHKOodsQVeq
Z/97axIet6QW2WhWoYBu4uFYy4gFDfSMO3VE1NOvatMEegydGed9Wh7JnPt+SyVtsUpMlrMlAdMw
H5goJIm5LYVhVqthiOeyo2aitR61p8Lk59Hw/+QVyyShSxztRS4J/8LDHtN/zJVStI8B0WVkwIIk
//tC/2W8cBHkQFb3wVMJSDCfABndSskiYu4dVe31omLvfqBGSIpahqEbg3p6pfDdrpdm8cfUkrWQ
xYf7DkAAMsdWb8euBm81b8+mM3KF2gWZDKopNdyLHov4gh3a8ncSnpDqD86vY0fbyg/CqI7VdEne
qh2hedzCZHX/ZiLKeItiy7Hfife3iwM/uu+DpMo8K/MK08jq5cBRZ9XnRQmiwxPh+whTDuMg68ZH
oOex87QIWpvpTi8k+NpAtkcKOWzxJ5Av8O2BAe50BgMohHgSZ9bGNk5VWJFghcfgQHPLYYu1NZRC
4xPcUqH2f4YDkzITg+4q4uSumNwNFhbianFnbs9+FS34hau5anvQqKbAIgaNBZNYaUVSq8gnNk6W
VlKABjtREIWBVXDSiAPIDFzC3RrqNU5d7TcA1Jcf5LbGUZAgYEqwU5BsnjIiAyNPfxJnXbWESHMs
jKCFT42O4zA1kpl5Qqi7cHqIGcljNTUyp7+vdHLtWMPNpyBoW5wNjZTMO9npSIlIk5T/zROfgdTu
5h/kitGoTc8AEuDHx+HWNuV6nn8DYDALRSuI4OgLvqvzYnNBkygiqDBmc4cP8dFmYvX8/mBVTn32
j59st4tcsjskwKWPvUeJzo1iOQiapJ6F9+L6+C/Yerv1C1AQAAgjZmIRcywNffhNpZasB2sWZylz
G443nN7K6xvBBBbeq4B463XaaTgbDcH88gEGatvsjjVtzOdD2kxVMG8iPgGjnipwPloJwIDgE/Hc
vaY2JP/CGv5Y0prAXYXaMvDJgIK/emxT1Hg+0sp9OgwwRD9wKOiy/GjC76WLpoKKockbxE1Zcc/v
RsAkdnKA5fGfoacObEPQPQk24fv9RyHu6N/6NGlkiJq+Kj0wbWZSgKWQ8q9nmV8tjp8yqFU+dRjl
9zGna6DXTWECBK68Vl1nJpetG+cCGlp4jBIzozjIlLzD8up77GRPWzwLHRxc/Ut0UBoIKEGGmCh0
YnWKMScvX5iCmY19dJFu864minqTUuJ20EeqqeLZ+0WJ+NdHrDzuTgisyzzbmfHJDjCVXq6jW3VP
cdTXTpimi2q9ZIcVL1Tbf05s3BQW2a2Fh1Oc2kqJWmOUI8fY6xpRAckrdzvlQgHLRf0cNozypWMW
EYSu+7VfpW09d/rPrDHprhlyLQoBOYQMgH8kcq90U1IDdnRimcvso6iVaJKFVlRUPscHDG3STeM4
2ohTSFxwiUKSlDFB/9Ytjo/JjDKHJRfuF9rNA89/mAs1aXSkq0Gp83Z3vO4f60k9J3Q9hU7O7ScO
hUB+m6m5f97wu/fRscH3pZfkbmo6pQ02PAoKn6zhZMP5fzEjhHkuzEdipf+1siaDjt8vdSbqykOK
mOl9hXtCaPoCy+Os4M9PgzPaBq/3HDxrTHUw6SvSR/uAakfmKomdg3iZ+FyUZYeP84CkUPHMexLV
PQqpA0pvNLgN9GKVEXjXrGPkyXDJIgdCFR9XBLCe4e7Dg/SSjasv9IAhSkeHS4gq17QuETS2KOfB
8rnSE7k2Nl3m7uqXzZmb//M6lfPcr9WNRCX4IfQX35JsPx7jNNMiuhqI7V1u3gdKpDB/G9NLe4Z3
WSp5nr3SZoK8n3ZB5llnKIIaZIpahfyG8j9hq9UpG8ShYbuHNq0B+9+W648ASqA1YMtPIhPGchNR
HoQvX5BNZR5E5bFxcBd0xLljR4ZS0W2ZANGTZXGZ/adfS8ovutSKhWXG0zvW7wZ1dw8g2lrYhc5u
fCbIDrN2jIaI0IIjPvdjX7L7u3/XXrdbzDz4zZV3mDgUAC/zt/GhlN4q2400TSniRuAsotlx4aWS
vj+L+22LVjfjNbXdI0lxICA54Uf/Va/yChFsQ0WhJWJVAFNnA+A5uZZ95BFNEAarVwwzh5TzEujk
5iyWpQKeFoFJQJsSG1TqmwoUVir9HwHH7ADNOkxQXCnF6Q+FwCPFEhSPyfPfcV+GH+zHHx1ZOFQA
8oIGg9EriFypjMsAwbNKU01GtRZumHD501QfpNstm59+1ZUY7AsV1sUeAFccRtUDax3u+L1yC6A9
AqLM68Gvhc9IuFs/vjBspO0NoImsTXeN7QieW26xfpRQ2EsvFOYmDQ7P9MGxCI/cYGTMjUH0DXak
wD6lpyXijIB/EaLHfCLB6XGLukoRRcsEGvJMNzGj7seKm9WEb2DENQ61sz4uCM1yM+Sk+7sIh8sg
XTiEZ8ytYY1yPrjDa0fjo1gNB+FBRr7AJKz70Xxn3NUKjhn1ThFj79Qayk8sJlJEz/Xl9cBeVOv2
Jfkv0ZeK4fAcDLQC3xeMojFffzgYJsM5QYvtyTSqSDq3GWFTVPOcsSmNPM8C5/BmSje/8Tg2SUbG
hxwXvMMledfCrjzeknxtrFHRgiTvifcm3O9yfSDjO9a6EnoNAHPQWFk92kbVLlEZ6+1RrOezPJt4
5tZdrSn3PSuQ/M2cENItRFONVuG/zMBASfzlXwCFCLAjkuUTdgiqSqxHJ2vXg2KQ47gcMUPcvk5E
dIzQQz1Vbd2pEY7Zvk3SWBhGK/nXQFfq5WhEXRR79sRjzoyPdmTamArXhDu+DT3F05Wq9N5k/d5u
wrYARs54KZ42RlFwNwtEkwEVVsRokU+rwEPa8RIzEEpRLsgFZSnz7dAdWVL30Dk9v7Nj63vN/pUv
QSxS+kFUBiqzatqqf/QTrdgnWk0W+FTx3tci00wteXhRyahXChE080NQbE8WXY+mQhvQroZIMyNi
PBF9ik+1V5n0qG/8B1ijlZzYl71EU7dEfBDXnIAmqq+X+tKXyhcrZPBQJtKG7hNRZIWtj2X+c6wq
caqWBQ==
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
