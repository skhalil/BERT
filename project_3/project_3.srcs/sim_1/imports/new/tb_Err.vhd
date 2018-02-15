----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2017 09:36:18 AM
-- Design Name: 
-- Module Name: tb_ROMe - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
library unisim;
use unisim.vcomponents.all; 

entity tb_err is
--  Port ( );
end tb_err;

architecture Behavioral of tb_err is


  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  
  
  
  component design_1_address_counter_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    tc : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component design_1_address_counter_0_0;


  component design_1_serial_pipeline_delay_0_0 is
  port (
    clk : in STD_LOGIC;
    delayin : in STD_LOGIC;
    delayout : out STD_LOGIC
  );
  end component design_1_serial_pipeline_delay_0_0;
  
  
    component design_1_dr_make8_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    locked : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wen : out STD_LOGIC
  );
  end component design_1_dr_make8_1_0;
 
  
  component design_1_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_util_vector_logic_1_0;
  
  component design_1_c_accum_0_0 is
  port (
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_c_accum_0_0;
  
  component design_1_count_ones_8_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    regword : in STD_LOGIC_VECTOR ( 7 downto 0 );
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_count_ones_8_0_0;
  
    component design_1_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconstant_2_0;
  
    component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_0;
  
        
      -- signals
     
     signal rst : std_logic;
     signal clk : std_logic;
     
     signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 13 downto 0 );
     signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 0 to 0 );
     signal serial_pipeline_delay_0_delayout : STD_LOGIC;
     
     
     signal make8_from_test_data_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
--     signal make8_from_test_data_dout : STD_LOGIC_VECTOR ( 7 downto 0 ) := "10110010";
--     signal make8_from_recovered_data_dout : STD_LOGIC_VECTOR ( 7 downto 0 ) := "10110001";
     
     signal NLW_make8_from_test_data_wen_UNCONNECTED : STD_LOGIC;
     
     signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
     signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
     
     signal c_accum_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 ); 
     signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 7 downto 0 );
     signal count_ones_8_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
     
     signal address_counter_0_address : STD_LOGIC_VECTOR ( 13 downto 0 );
     signal address_counter_0_tc : STD_LOGIC;
     
--     signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 0 to 0 );        
    

     
     constant PERIOD : time := 10ns;
      

  begin
  
    address_counter_0: component design_1_address_counter_0_0
       port map (
        address(13 downto 0) => address_counter_0_address(13 downto 0),
        clk => clk,
        rst => rst,
        tc => address_counter_0_tc
      );
  
    blk_mem_gen_0: component design_1_blk_mem_gen_0_0
       port map (
        addra(13 downto 0) => address_counter_0_address(13 downto 0),
        clka => clk,
        douta(0) => blk_mem_gen_0_douta(0)
      );
  
  
    serial_pipeline_delay_0: component design_1_serial_pipeline_delay_0_0
       port map (
        clk => clk,
        delayin => blk_mem_gen_0_douta(0),
        delayout => serial_pipeline_delay_0_delayout
      );
  
  
    make8_from_test_data: component design_1_dr_make8_1_0
       port map (
        clk => clk,
        din(1) => serial_pipeline_delay_0_delayout,
        din(0) => serial_pipeline_delay_0_delayout,
        dout(7 downto 0) => make8_from_test_data_dout(7 downto 0),
        dv(1 downto 0) => xlconstant_1_dout(1 downto 0),
        locked => xlconstant_0_dout(0),
        rst => rst,
        wen => NLW_make8_from_test_data_wen_UNCONNECTED
      );
  
  
    util_vector_logic_0: component design_1_util_vector_logic_1_0
       port map (
--        Op1(7 downto 0) => make8_from_recovered_data_dout(7 downto 0),
        Op1(7 downto 0) => make8_from_test_data_dout(7 downto 0),
        Op2(7 downto 0) => make8_from_test_data_dout(7 downto 0),
        Res(7 downto 0) => util_vector_logic_0_Res(7 downto 0)
      );
  
  
    count_ones_8_0: component design_1_count_ones_8_0_0
           port map (
            clk => clk,
            count(3 downto 0) => count_ones_8_0_count(3 downto 0),
            regword(7 downto 0) => util_vector_logic_0_Res(7 downto 0),
            rst => rst
          );
   
   
    c_accum_0: component design_1_c_accum_0_0
           port map (
            B(3 downto 0) => count_ones_8_0_count(3 downto 0),
            CLK => clk,
            Q(31 downto 0) => c_accum_0_Q(31 downto 0),
            SCLR => rst
          );

     
     xlconstant_0: component design_1_xlconstant_1_0
               port map (
                dout(0) => xlconstant_0_dout(0)
              );
              
     xlconstant_1: component design_1_xlconstant_2_0
               port map (
                dout(1 downto 0) => xlconstant_1_dout(1 downto 0)
              );
     
    
     
    simclk : process
      begin
          clk <= '0';
          wait for PERIOD/2;
          clk <= '1';
          wait for PERIOD/2;
      end process;
      
      process
      begin
          rst <= '1';
          wait for 20ns;
          wait until clk = '1';
          rst <= '0';
         -- wait until tc = '1';
          wait for 100ns;
          rst <= '1';
          wait for 20 ns;
          rst <= '0';
          wait;
      end process;
  end behavioral;
