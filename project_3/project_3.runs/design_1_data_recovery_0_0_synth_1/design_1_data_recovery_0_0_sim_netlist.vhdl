-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Jan 29 16:43:43 2018
-- Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_data_recovery_0_0_sim_netlist.vhdl
-- Design      : design_1_data_recovery_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_recovery is
  port (
    sdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dv : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk90 : in STD_LOGIC;
    notclk : in STD_LOGIC;
    notclk90 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_recovery;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_recovery is
  signal aan : STD_LOGIC;
  signal aan0 : STD_LOGIC;
  signal aap : STD_LOGIC;
  signal aap_i_1_n_0 : STD_LOGIC;
  signal az : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bbn : STD_LOGIC;
  signal bbn0 : STD_LOGIC;
  signal bbp : STD_LOGIC;
  signal bbp_i_1_n_0 : STD_LOGIC;
  signal bz : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ccn : STD_LOGIC;
  signal ccn0 : STD_LOGIC;
  signal ccp : STD_LOGIC;
  signal ccp_i_1_n_0 : STD_LOGIC;
  signal cz : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddn : STD_LOGIC;
  signal ddn0 : STD_LOGIC;
  signal ddp : STD_LOGIC;
  signal ddp_i_1_n_0 : STD_LOGIC;
  signal \dvalid[0]_i_1_n_0\ : STD_LOGIC;
  signal \dvalid[1]_i_1_n_0\ : STD_LOGIC;
  signal dz : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pipe_ce0 : STD_LOGIC;
  signal pipe_ce00 : STD_LOGIC;
  signal \^sdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \sdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \sdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \sdata[1]_i_1_n_0\ : STD_LOGIC;
  signal usea : STD_LOGIC;
  signal usea0 : STD_LOGIC;
  signal useaaa : STD_LOGIC;
  signal useb : STD_LOGIC;
  signal useb0 : STD_LOGIC;
  signal useb_i_2_n_0 : STD_LOGIC;
  signal usebbb : STD_LOGIC;
  signal usec : STD_LOGIC;
  signal usec0 : STD_LOGIC;
  signal useccc : STD_LOGIC;
  signal used : STD_LOGIC;
  signal used0 : STD_LOGIC;
  signal used_i_2_n_0 : STD_LOGIC;
  signal useddd : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aan_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of aap_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of bbn_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of bbp_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ccn_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ccp_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ddn_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ddp_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dvalid[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dvalid[1]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ff_a0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ff_a0 : label is "FDC";
  attribute BOX_TYPE of ff_a1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_a1 : label is "FDC";
  attribute BOX_TYPE of ff_a2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_a2 : label is "FDC";
  attribute BOX_TYPE of ff_b0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_b0 : label is "FDC";
  attribute BOX_TYPE of ff_b1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_b1 : label is "FDC";
  attribute BOX_TYPE of ff_b2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_b2 : label is "FDC";
  attribute BOX_TYPE of ff_c0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_c0 : label is "FDC";
  attribute BOX_TYPE of ff_c1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_c1 : label is "FDC";
  attribute BOX_TYPE of ff_c2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_c2 : label is "FDC";
  attribute BOX_TYPE of ff_d0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_d0 : label is "FDC";
  attribute BOX_TYPE of ff_d1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_d1 : label is "FDC";
  attribute BOX_TYPE of ff_d2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ff_d2 : label is "FDC";
begin
  sdata(1 downto 0) <= \^sdata\(1 downto 0);
aan_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => az(1),
      I1 => az(2),
      O => aan0
    );
aan_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => aan0,
      Q => aan
    );
aap_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => az(2),
      I1 => az(1),
      O => aap_i_1_n_0
    );
aap_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => aap_i_1_n_0,
      Q => aap
    );
\az_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => az(2),
      PRE => rst,
      Q => az(3)
    );
bbn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bz(1),
      I1 => bz(2),
      O => bbn0
    );
bbn_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bbn0,
      Q => bbn
    );
bbp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bz(2),
      I1 => bz(1),
      O => bbp_i_1_n_0
    );
bbp_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bbp_i_1_n_0,
      Q => bbp
    );
\bz_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => bz(2),
      PRE => rst,
      Q => bz(3)
    );
ccn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cz(1),
      I1 => cz(2),
      O => ccn0
    );
ccn_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ccn0,
      Q => ccn
    );
ccp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cz(2),
      I1 => cz(1),
      O => ccp_i_1_n_0
    );
ccp_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ccp_i_1_n_0,
      Q => ccp
    );
\cz_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => cz(2),
      PRE => rst,
      Q => cz(3)
    );
ddn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dz(1),
      I1 => dz(2),
      O => ddn0
    );
ddn_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ddn0,
      Q => ddn
    );
ddp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dz(2),
      I1 => dz(1),
      O => ddp_i_1_n_0
    );
ddp_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ddp_i_1_n_0,
      Q => ddp
    );
\dvalid[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => useddd,
      I1 => usea,
      O => \dvalid[0]_i_1_n_0\
    );
\dvalid[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => useaaa,
      I1 => used,
      I2 => useddd,
      I3 => usea,
      O => \dvalid[1]_i_1_n_0\
    );
\dvalid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \dvalid[0]_i_1_n_0\,
      Q => dv(0)
    );
\dvalid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \dvalid[1]_i_1_n_0\,
      Q => dv(1)
    );
\dz_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => dz(2),
      PRE => rst,
      Q => dz(3)
    );
ff_a0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => data,
      Q => az(0)
    );
ff_a1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => az(0),
      Q => az(1)
    );
ff_a2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => az(1),
      Q => az(2)
    );
ff_b0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk90,
      CE => '1',
      CLR => rst,
      D => data,
      Q => bz(0)
    );
ff_b1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bz(0),
      Q => bz(1)
    );
ff_b2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bz(1),
      Q => bz(2)
    );
ff_c0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => notclk,
      CE => '1',
      CLR => rst,
      D => data,
      Q => cz(0)
    );
ff_c1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cz(0),
      Q => cz(1)
    );
ff_c2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cz(1),
      Q => cz(2)
    );
ff_d0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => notclk90,
      CE => '1',
      CLR => rst,
      D => data,
      Q => dz(0)
    );
ff_d1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => notclk,
      CE => '1',
      CLR => rst,
      D => dz(0),
      Q => dz(1)
    );
ff_d2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => dz(1),
      Q => dz(2)
    );
pipe_ce0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pipe_ce00,
      CLR => rst,
      D => pipe_ce00,
      Q => pipe_ce0
    );
\sdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \sdata[0]_i_2_n_0\,
      I1 => \sdata[0]_i_3_n_0\,
      I2 => pipe_ce0,
      I3 => \^sdata\(0),
      O => \sdata[0]_i_1_n_0\
    );
\sdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => cz(3),
      I1 => useccc,
      I2 => bz(3),
      I3 => usebbb,
      O => \sdata[0]_i_2_n_0\
    );
\sdata[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dz(3),
      I1 => useddd,
      I2 => useaaa,
      I3 => az(3),
      O => \sdata[0]_i_3_n_0\
    );
\sdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => useddd,
      I1 => az(3),
      I2 => useaaa,
      I3 => dz(3),
      I4 => pipe_ce0,
      I5 => \^sdata\(1),
      O => \sdata[1]_i_1_n_0\
    );
\sdata_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \sdata[0]_i_1_n_0\,
      PRE => rst,
      Q => \^sdata\(0)
    );
\sdata_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \sdata[1]_i_1_n_0\,
      PRE => rst,
      Q => \^sdata\(1)
    );
usea_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000400"
    )
        port map (
      I0 => ccn,
      I1 => aan,
      I2 => ddn,
      I3 => bbn,
      I4 => used_i_2_n_0,
      I5 => bbp,
      O => usea0
    );
usea_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => usea0,
      Q => usea
    );
useaaa_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pipe_ce00,
      CLR => rst,
      D => usea,
      Q => useaaa
    );
useb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400040004000FFFF"
    )
        port map (
      I0 => ddp,
      I1 => aap,
      I2 => ccp,
      I3 => bbp,
      I4 => useb_i_2_n_0,
      I5 => ddn,
      O => useb0
    );
useb_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => aan,
      I1 => ccn,
      I2 => bbn,
      O => useb_i_2_n_0
    );
useb_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => useb0,
      Q => useb
    );
usebbb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => useb,
      I1 => usec,
      I2 => usea,
      I3 => used,
      O => pipe_ce00
    );
usebbb_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pipe_ce00,
      CLR => rst,
      D => useb,
      Q => usebbb
    );
usec_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => useb_i_2_n_0,
      I1 => ddn,
      I2 => aap,
      I3 => ddp,
      I4 => ccp,
      I5 => bbp,
      O => usec0
    );
usec_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => usec0,
      Q => usec
    );
useccc_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pipe_ce00,
      CLR => rst,
      D => usec,
      Q => useccc
    );
used_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400040004FFFF"
    )
        port map (
      I0 => ccn,
      I1 => aan,
      I2 => ddn,
      I3 => bbn,
      I4 => used_i_2_n_0,
      I5 => bbp,
      O => used0
    );
used_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => ccp,
      I1 => aap,
      I2 => ddp,
      O => used_i_2_n_0
    );
used_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => used0,
      Q => used
    );
useddd_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pipe_ce00,
      CLR => rst,
      D => used,
      Q => useddd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    clk90 : in STD_LOGIC;
    notclk : in STD_LOGIC;
    notclk90 : in STD_LOGIC;
    data : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dv : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_data_recovery_0_0,data_recovery,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data_recovery,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_recovery
     port map (
      clk => clk,
      clk90 => clk90,
      data => data,
      dv(1 downto 0) => dv(1 downto 0),
      notclk => notclk,
      notclk90 => notclk90,
      rst => rst,
      sdata(1 downto 0) => sdata(1 downto 0)
    );
end STRUCTURE;
