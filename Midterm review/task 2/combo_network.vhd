library ieee;
use ieee.std_logic_1164.all;
use work.mux_4to1_pkg.all; 

entity combo_network is
	port 
	(
		X  	: in std_logic_vector(1 downto 0);
		Y	   : in std_logic_vector(1 downto 0);
		G	   : out std_logic;
		H		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end combo_network;

architecture mixed of combo_network is

	signal a : std_logic_vector(3 downto 0);
	signal b : std_logic_vector(3 downto 0);
	signal z : std_logic_vector(1 downto 0);

begin
	--concurrent component instantiation statement. Associatethe formal ports of mux0 using positional association.
	mux0: component entity work.mux_4to1_pkg(behavior_cssa)
	port map(Y,X)
	
	mux1: component entity work.mux_4to1_pkg(behavior_cssa)
	port map()
	

	


	
architecture mixed end;
