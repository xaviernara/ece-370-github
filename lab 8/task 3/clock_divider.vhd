library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is 
	port( rst, clk_50Mhz : in  std_logic;
			clk_1hz        : out std_logic );
end entity clock_divider;

architecture behavior of clock_divider is
 signal clk_1Mhz   : std_logic;
 signal clk_100Khz : std_logic;
 signal clk_10Khz  : std_logic;
 signal clk_1Khz   : std_logic;
 signal clk_100hz  : std_logic;
 signal clk_10hz   : std_logic; 
begin
	cnt6 : entity work.divide_by_50_counter(behavior)
	port map(clk => clk_50Mhz, rst => rst, q => clk_1Mhz );
	cnt5 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_1Mhz, rst => rst, q => clk_100Khz );
	cnt4 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_100Khz, rst => rst, q => clk_10Khz );
	cnt3 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_10Khz, rst => rst, q => clk_1Khz );
	cnt2 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_1Khz, rst => rst, q => clk_100hz );
	cnt1 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_100hz, rst => rst, q => clk_10hz );
	cnt0 : entity work.divide_by_10_counter(behavior)
	port map(clk => clk_10hz, rst => rst, q => clk_1hz );
end architecture behavior;