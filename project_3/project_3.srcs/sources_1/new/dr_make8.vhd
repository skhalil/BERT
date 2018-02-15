library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--library unisim;
--use unisim.vcomponents.all;

entity dr_make8 is
    port ( 
        clk : in std_logic;
        rst : in std_logic;
        locked : in std_logic;
        din : in std_logic_vector (1 downto 0);
        dv  : in std_logic_vector(1 downto 0);
        dout : out std_logic_vector(7 downto 0);
        wen  : out std_logic
    );
end dr_make8;

architecture behavioral of dr_make8 is

    signal reg : std_logic_vector(7 downto 0);
    signal en : std_logic;
    signal count : integer range 0 to 7; -- 3 bits
    
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' or locked = '0' then
                reg <= (others => '0');
                en <= '0';
                count <= 0;
            else
                if dv = "01" then
                    reg <= reg(6 downto 0) & din(0);
                    count <= count + 1;
                elsif dv = "11" then
                    reg <= reg(5 downto 0) & din(0) & din(1);
                    count <= count + 2;
                end if; -- dv test
                
                if count = 7 then
                    en <= '1'; -- signal that 8-bit word is valid and should be latched into FIFO
                    count <= 0;
                else
                    en <= '0'; -- not ready yet
                end if;
                
            end if; -- rst
        end if; -- clk
    end process;
    
    dout <= reg;
    wen <= en;
    
end behavioral;
