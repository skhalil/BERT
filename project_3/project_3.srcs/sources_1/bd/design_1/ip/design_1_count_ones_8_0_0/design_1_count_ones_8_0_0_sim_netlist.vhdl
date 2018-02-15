-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Jan 29 16:19:22 2018
-- Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_count_ones_8_0_0/design_1_count_ones_8_0_0_sim_netlist.vhdl
-- Design      : design_1_count_ones_8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ones_8_0_0_count_ones_8 is
  port (
    count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    regword : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_count_ones_8_0_0_count_ones_8 : entity is "count_ones_8";
end design_1_count_ones_8_0_0_count_ones_8;

architecture STRUCTURE of design_1_count_ones_8_0_0_count_ones_8 is
  signal \c[3]_i_2_n_0\ : STD_LOGIC;
  signal \c[3]_i_3_n_0\ : STD_LOGIC;
  signal \c[3]_i_4_n_0\ : STD_LOGIC;
  signal \c[3]_i_5_n_0\ : STD_LOGIC;
  signal t6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c[3]_i_5\ : label is "soft_lutpair1";
begin
\c[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => regword(4),
      I1 => regword(5),
      I2 => regword(3),
      I3 => regword(7),
      I4 => regword(6),
      I5 => \c[3]_i_2_n_0\,
      O => t6_out(0)
    );
\c[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E1E187871E1E78"
    )
        port map (
      I0 => \c[3]_i_3_n_0\,
      I1 => \c[3]_i_2_n_0\,
      I2 => \c[3]_i_5_n_0\,
      I3 => regword(7),
      I4 => regword(6),
      I5 => \c[3]_i_4_n_0\,
      O => t6_out(1)
    );
\c[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF8FEE0FEE0F880"
    )
        port map (
      I0 => \c[3]_i_2_n_0\,
      I1 => \c[3]_i_3_n_0\,
      I2 => \c[3]_i_4_n_0\,
      I3 => \c[3]_i_5_n_0\,
      I4 => regword(6),
      I5 => regword(7),
      O => t6_out(2)
    );
\c[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => regword(6),
      I1 => regword(7),
      I2 => \c[3]_i_2_n_0\,
      I3 => \c[3]_i_3_n_0\,
      I4 => \c[3]_i_4_n_0\,
      I5 => \c[3]_i_5_n_0\,
      O => t6_out(3)
    );
\c[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => regword(0),
      I1 => regword(2),
      I2 => regword(1),
      O => \c[3]_i_2_n_0\
    );
\c[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => regword(3),
      I1 => regword(5),
      I2 => regword(4),
      O => \c[3]_i_3_n_0\
    );
\c[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => regword(5),
      I1 => regword(4),
      I2 => regword(3),
      O => \c[3]_i_4_n_0\
    );
\c[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => regword(2),
      I1 => regword(1),
      I2 => regword(0),
      O => \c[3]_i_5_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => t6_out(0),
      Q => count(0),
      R => rst
    );
\c_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => t6_out(1),
      Q => count(1),
      R => rst
    );
\c_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => t6_out(2),
      Q => count(2),
      R => rst
    );
\c_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => t6_out(3),
      Q => count(3),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ones_8_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    regword : in STD_LOGIC_VECTOR ( 7 downto 0 );
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_count_ones_8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_count_ones_8_0_0 : entity is "design_1_count_ones_8_0_0,count_ones_8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_count_ones_8_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_count_ones_8_0_0 : entity is "count_ones_8,Vivado 2017.2";
end design_1_count_ones_8_0_0;

architecture STRUCTURE of design_1_count_ones_8_0_0 is
begin
U0: entity work.design_1_count_ones_8_0_0_count_ones_8
     port map (
      clk => clk,
      count(3 downto 0) => count(3 downto 0),
      regword(7 downto 0) => regword(7 downto 0),
      rst => rst
    );
end STRUCTURE;
