library ieee;
use ieee.std_logic_1164.all;

entity asu_comp_3bit is --start entity declaration statement

port( signal arith: in std_logic;   --signal_name : signal_mode data_type 
		signal sub: in std_logic; 		--signal_name : signal_mode data_type
		signal x: in std_logic_vector(2 downto 0);		   --signal name : std_logic_vector(highint downto lowint);
		signal y: in std_logic_vector(2 downto 0);			--signal name : std_logic_vector(highint downto lowint);
		signal r: out std_logic_vector(2 downto 0);		--signal name : std_logic_vector(highint downto lowint);
		signal v: out std_logic             --signal_name : signal_mode data_type
		);		--end of port clause

end entity asu_comp_3bit;	--end entity declaration statement

architecture dataflow of asu_comp_3bit is 		--start of architecture declaration statement 
																--describes what the entity does 
																--declaration potion of the architecture

	z: std_logic_vector; 		--declare internal signal z
	carries: std_logic_vector;		--declare internal signal carries
	
	begin		--implementation potion of the architecture
	
	end architecture dataflow;	--end of architecture declaration statement
 