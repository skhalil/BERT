-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Jan 29 16:19:22 2018
-- Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_count_ones_8_0_0/design_1_count_ones_8_0_0_stub.vhdl
-- Design      : design_1_count_ones_8_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_count_ones_8_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    regword : in STD_LOGIC_VECTOR ( 7 downto 0 );
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_count_ones_8_0_0;

architecture stub of design_1_count_ones_8_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,regword[7:0],count[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "count_ones_8,Vivado 2017.2";
begin
end;
