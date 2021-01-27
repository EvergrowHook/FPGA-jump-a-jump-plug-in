-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Dec 31 21:21:06 2020
-- Host        : DESKTOP-NKAIUVL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/verilog/EXP-10/exp-10/exp-10.srcs/sources_1/ip/shift_ram_0/shift_ram_0_stub.vhdl
-- Design      : shift_ram_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_ram_0 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end shift_ram_0;

architecture stub of shift_ram_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[7:0],CLK,CE,SCLR,Q[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_14,Vivado 2020.1";
begin
end;
