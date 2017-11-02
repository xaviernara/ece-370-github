library ieee;
use ieee.std_logic_1164.all;
use work.mux_4to1_pkg.all; 

entity combo_network is
	port 
	(
		X  	: in std_logic_vector(1 downto 0);
		Y	   : in std_logic_vector(1 downto 0);
		G	   : out std_logic;
		H		: out std_logic
	);

end combo_network;

architecture mixed of combo_network is

	signal a : std_logic_vector(3 downto 0);
	signal b : std_logic_vector(3 downto 0);
	signal z : std_logic_vector(1 downto 0);
	signal z1 : std_logic;
	signal z0 : std_logic;

begin

	a(0) <= (x(0) and x(1));
	a(1) <=x(1);
	a(2) <= x(0) or x(1);
	a(3) <= not x(0);
	
	b(0) <= not x(0);
	b(1) <= x(0);
	b(2) <= x(1) or x(0);
	b(3) <= x(1);
	z <= z1 & z0;
	
	with  z select
	H<= '1' when "00"|"10",
		 '0' when others;

	G <= z1;

	--concurrent component instantiation statement. Associatethe formal ports of mux0 using positional association.
	mux0: entity work.mux_4to1(behavior_ssa)
	port map(Y,a(0),a(1),a(2),a(3),z1);
	
	--concurrent component instantiation statement. Associate the formal ports of mux1 using named association
	mux1: entity work.mux_4to1(behavior_ssa)
	port map(s=>Y,w0=>b(0),w1=>b(1),w2=>b(2),w3=>b(3),f=>z0);
	
	
end architecture mixed ;
