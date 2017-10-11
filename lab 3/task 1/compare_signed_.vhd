library ieee;
use ieee.std_logic_1164.all;

entity compare_signed is --start entity declaration statement

port( 
		signal A: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal B: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal L: out std_logic; --signal_name : signal_mode data_type 
		signal E: out std_logic; --signal_name : signal_mode data_type 
		signal G: out std_logic	 --signal_name : signal_mode data_type 
	);--end of port clause

	
end entity; --end entity declaration statement

	
architecture mixed of compare_signed	--start of architecture declaration statement 
	
													--describes what the entity does 
													--declaration potion of the architecture