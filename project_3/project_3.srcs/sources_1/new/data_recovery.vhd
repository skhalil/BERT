------------------------------------------------------------------------------
--
--  Xilinx, Inc. 2002                 www.xilinx.com
--
--  XAPP 224 - Data Recovery
--
------------------------------------------------------------------------------
--
--  File name :       data_recovery_virtex2.vhd
--
--  Description :     Virtex2 data recovery module, uses two clocks 90 degrees apart to recover data
-- 		      from incoming line data. (which is running slightly faster or slower than these
-- 		      two clocks).
--
-- 		      Output data bit 0 (sdata(0)) is valid when dv(0) is high
-- 		      Output data bit 1 (sdata(1)) is valid when dv(1) is high
--
-- 		      sample A is captured on : rising clk,    rising clk,   rising clk
-- 		      sample B is captured on : rising clk90,  rising clk,   rising clk
-- 		      sample C is captured on : falling clk,   rising clk,   rising clk
-- 		      sample D is captured on : falling clk90, falling clk,  rising clk
--
--  Date - revision : May 16th 2003 - v 2.2
--
--  Author :          NJS
--
--  Contact : e-mail  hotline@xilinx.com
--            phone   + 1 800 255 7778 
--
--  Disclaimer: LIMITED WARRANTY AND DISCLAMER. These designs are
--              provided to you "as is". Xilinx and its licensors make and you
--              receive no warranties or conditions, express, implied,
--              statutory or otherwise, and Xilinx specifically disclaims any
--              implied warranties of merchantability, non-infringement,or
--              fitness for a particular purpose. Xilinx does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, Xilinx does not warrantor
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will Xilinx or its
--              licensors be liable for any loss of data, lost profits,cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if Xilinx
--              has been advised of the possibility of such damage. This
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
--  Copyright © 2002 Xilinx, Inc.
--  All rights reserved
--
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

--pragma translate_off
library unisim ;
use unisim.vcomponents.all ;
--pragma translate_on

entity data_recovery is 
    port (
        clk     : in std_logic;
        clk90   : in std_logic;
        notclk  : in std_logic;
        notclk90 : in std_logic;
        data    : in std_logic;
        rst     : in std_logic;
        sdata   : out std_logic_vector(1 downto 0) ;
        dv      : out std_logic_vector(1 downto 0)
    ) ; 
end data_recovery;

architecture arch_data_recovery of data_recovery is
-- FDC primitive
component fdc port (d, c, clr : in std_logic; q : out std_logic); end component;

--signal notclk 		: std_logic;
--signal notclk90 	: std_logic;
signal az 		: std_logic_vector(3 downto 0) ;
signal bz 		: std_logic_vector(3 downto 0) ;
signal cz 		: std_logic_vector(3 downto 0) ;
signal dz 		: std_logic_vector(3 downto 0) ;
signal aap, aan 	: std_logic;
signal bbp, bbn 	: std_logic;
signal ccp, ccn 	: std_logic;
signal ddp, ddn 	: std_logic;
signal usea 		: std_logic;
signal useb 		: std_logic;
signal usec 		: std_logic;
signal used 		: std_logic;
signal useaaa 		: std_logic;
signal usebbb 		: std_logic;
signal useccc 		: std_logic;
signal useddd 		: std_logic;
signal sdataa 		: std_logic_vector(1 downto 0);
signal sdatab 		: std_logic_vector(1 downto 0);
signal sdatac 		: std_logic_vector(1 downto 0);
signal sdatad 		: std_logic_vector(1 downto 0);
signal dvalid 		: std_logic_vector(1 downto 0);
signal pipe_ce0 	: std_logic;

--attribute RLOC 		: string ;
--attribute IOB 		: string ;

--attribute RLOC of ff_a0 : label is "X0Y0";
--attribute IOB of ff_a0  : label is "FALSE";
--attribute RLOC of ff_a1 : label is "X0Y0";
--attribute RLOC of ff_a2 : label is "X3Y1";

--attribute RLOC of ff_b0 : label is "X1Y0";
--attribute IOB of ff_b0  : label is "FALSE";
--attribute RLOC of ff_b1 : label is "X3Y0";
--attribute RLOC of ff_b2 : label is "X3Y0";

--attribute RLOC of ff_c0 : label is "X1Y1";
--attribute IOB of ff_c0  : label is "FALSE";
--attribute RLOC of ff_c1 : label is "X2Y1";
--attribute RLOC of ff_c2 : label is "X2Y1";

--attribute RLOC of ff_d0 : label is "X0Y1";
--attribute IOB of ff_d0  : label is "FALSE";
--attribute RLOC of ff_d1 : label is "X1Y1";
--attribute RLOC of ff_d2 : label is "X2Y0";

begin

--    notclk <= not clk ;
--    notclk90 <= not clk90 ;
    dv <= dvalid ;
    sdataa(0) <= az(3) and useaaa ; sdataa(1) <= az(3) and useddd ;
    sdatab(0) <= bz(3) and usebbb ; sdatab(1) <= '0' ;
    sdatac(0) <= cz(3) and useccc ; sdatac(1) <= '0' ;
    sdatad(0) <= dz(3) and useddd ; sdatad(1) <= dz(3) and useaaa ;
        
    process (clk, rst)
    begin
    if rst = '1' then 
        dvalid <= "00" ;
        az(3) <= '1' ; bz(3) <= '1' ; cz(3) <= '1' ; dz(3) <= '1' ;
        aap <= '0'  ; bbp <= '0' ;  ccp <= '0' ;  ddp <= '0' ;	
        aan <= '0'  ; bbn <= '0' ;  ccn <= '0' ;  ddn <= '0' ;	
        usea <= '0'  ; useb <= '0'  ; usec <= '0'  ; used <= '0' ;
        useaaa <= '0' ; usebbb <= '0' ; useccc <= '0' ; useddd <= '0' ;
        sdata <= "11" ; pipe_ce0 <= '0' ;
    elsif clk'event and clk = '1' then
        az(3) <= az(2) ;
        bz(3) <= bz(2) ;
        cz(3) <= cz(2) ;
        dz(3) <= dz(2) ; 
        aap <= (az(2) xor az(1)) and not az(1) ;	-- find positive edges
        bbp <= (bz(2) xor bz(1)) and not bz(1) ;
        ccp <= (cz(2) xor cz(1)) and not cz(1) ;
        ddp <= (dz(2) xor dz(1)) and not dz(1) ;
        aan <= (az(2) xor az(1)) and az(1) ;		-- find negative edges
        bbn <= (bz(2) xor bz(1)) and bz(1) ;
        ccn <= (cz(2) xor cz(1)) and cz(1) ;
        ddn <= (dz(2) xor dz(1)) and dz(1) ;
        usea <= (bbp and not ccp and not ddp and aap) or (bbn and not ccn and not ddn and aan) ;
        useb <= (ccp and not ddp and aap and bbp) or (ccn and not ddn and aan and bbn) ;
        usec <= (ddp and aap and bbp and ccp) or (ddn and aan and bbn and ccn) ;
        used <= (aap and not bbp and not ccp and not ddp) or (aan and not bbn and not ccn and not ddn) ;
        if (usea or useb or usec or used) = '1' then
            pipe_ce0 <= '1' ;
                useaaa <= usea ;
                usebbb <= useb ;
                useccc <= usec ;
                useddd <= used ;
        end if ;
        if pipe_ce0 = '1' then
            sdata <= sdataa or sdatab or sdatac or sdatad ;
        end if ;
        if useddd = '1' and usea = '1' then 
            dvalid <= "00" ;
        elsif useaaa = '1' and used = '1' then
            dvalid <= "11" ;
        else 
            dvalid <= "01" ;
        end if ;
    end if ;
    end process ;
    
    -- get all the samples into the same time domain 
    
    ff_a0 : fdc port map(d => data,  c => clk, clr => rst, q => az(0));
    ff_a1 : fdc port map(d => az(0), c => clk, clr => rst, q => az(1));
    ff_a2 : fdc port map(d => az(1), c => clk, clr => rst, q => az(2));
    
    ff_b0 : fdc port map(d => data,  c => clk90, clr => rst, q => bz(0));
    ff_b1 : fdc port map(d => bz(0), c => clk,   clr => rst, q => bz(1));
    ff_b2 : fdc port map(d => bz(1), c => clk,   clr => rst, q => bz(2));
    
    ff_c0 : fdc port map(d => data,  c => notclk, clr => rst, q => cz(0));
    ff_c1 : fdc port map(d => cz(0), c => clk,    clr => rst, q => cz(1));
    ff_c2 : fdc port map(d => cz(1), c => clk,    clr => rst, q => cz(2));
    
    ff_d0 : fdc port map(d => data,  c => notclk90, clr => rst, q => dz(0));
    ff_d1 : fdc port map(d => dz(0), c => notclk,   clr => rst, q => dz(1));
    ff_d2 : fdc port map(d => dz(1), c => clk,      clr => rst, q => dz(2));
    
end arch_data_recovery;
