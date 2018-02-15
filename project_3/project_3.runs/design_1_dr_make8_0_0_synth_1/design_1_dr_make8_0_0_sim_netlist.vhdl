-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Jan 29 16:43:43 2018
-- Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dr_make8_0_0_sim_netlist.vhdl
-- Design      : design_1_dr_make8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dr_make8 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wen : out STD_LOGIC;
    rst : in STD_LOGIC;
    locked : in STD_LOGIC;
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dr_make8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dr_make8 is
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal en_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair2";
begin
  dout(7 downto 0) <= \^dout\(7 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004C4C334C"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => dv(0),
      I4 => dv(1),
      I5 => \reg[7]_i_1_n_0\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000552A662A"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => dv(0),
      I4 => dv(1),
      I5 => \reg[7]_i_1_n_0\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A707870"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => dv(0),
      I4 => dv(1),
      I5 => \reg[7]_i_1_n_0\,
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => locked,
      I4 => rst,
      O => en_i_1_n_0
    );
en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => en_i_1_n_0,
      Q => wen,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => din(0),
      I1 => dv(0),
      I2 => dv(1),
      I3 => din(1),
      O => p_1_in(0)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(0),
      I1 => dv(0),
      I2 => dv(1),
      I3 => din(0),
      O => p_1_in(1)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(1),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(0),
      O => p_1_in(2)
    );
\reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(2),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(1),
      O => p_1_in(3)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(3),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(2),
      O => p_1_in(4)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(4),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(3),
      O => p_1_in(5)
    );
\reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(5),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(4),
      O => p_1_in(6)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => locked,
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^dout\(6),
      I1 => dv(0),
      I2 => dv(1),
      I3 => \^dout\(5),
      O => p_1_in(7)
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(0),
      Q => \^dout\(0),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(1),
      Q => \^dout\(1),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(2),
      Q => \^dout\(2),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(3),
      Q => \^dout\(3),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(4),
      Q => \^dout\(4),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(5),
      Q => \^dout\(5),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(6),
      Q => \^dout\(6),
      R => \reg[7]_i_1_n_0\
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dv(0),
      D => p_1_in(7),
      Q => \^dout\(7),
      R => \reg[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    locked : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wen : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_dr_make8_0_0,dr_make8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dr_make8,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dr_make8
     port map (
      clk => clk,
      din(1 downto 0) => din(1 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      dv(1 downto 0) => dv(1 downto 0),
      locked => locked,
      rst => rst,
      wen => wen
    );
end STRUCTURE;
