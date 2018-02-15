-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Jan 29 16:44:49 2018
-- Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_serial_pipeline_delay_0_0/design_1_serial_pipeline_delay_0_0_sim_netlist.vhdl
-- Design      : design_1_serial_pipeline_delay_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_serial_pipeline_delay_0_0_serial_pipeline_delay is
  port (
    delayout : out STD_LOGIC;
    clk : in STD_LOGIC;
    delayin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_serial_pipeline_delay_0_0_serial_pipeline_delay : entity is "serial_pipeline_delay";
end design_1_serial_pipeline_delay_0_0_serial_pipeline_delay;

architecture STRUCTURE of design_1_serial_pipeline_delay_0_0_serial_pipeline_delay is
  signal temp : STD_LOGIC_VECTOR ( 0 to 0 );
begin
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => delayin,
      Q => temp(0),
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => temp(0),
      Q => delayout,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_serial_pipeline_delay_0_0 is
  port (
    clk : in STD_LOGIC;
    delayin : in STD_LOGIC;
    delayout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_serial_pipeline_delay_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_serial_pipeline_delay_0_0 : entity is "design_1_serial_pipeline_delay_0_0,serial_pipeline_delay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_serial_pipeline_delay_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_serial_pipeline_delay_0_0 : entity is "serial_pipeline_delay,Vivado 2017.2";
end design_1_serial_pipeline_delay_0_0;

architecture STRUCTURE of design_1_serial_pipeline_delay_0_0 is
begin
U0: entity work.design_1_serial_pipeline_delay_0_0_serial_pipeline_delay
     port map (
      clk => clk,
      delayin => delayin,
      delayout => delayout
    );
end STRUCTURE;
