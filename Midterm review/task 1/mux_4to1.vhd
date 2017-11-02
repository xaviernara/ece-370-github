library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
	port 
	(
		signal s	: in std_logic_vector(1 downto 0);
		signal w0: in std_logic;
		signal w1: in std_logic;
		signal w2: in std_logic;
		signal w3: in std_logic;
		signal f	: out std_logic	
	);

end entity;

architecture behavior_ssa of mux_4to1 is
begin
	
	--how to make the inside of a mux
	
	with s select
	
	f<= w0 when "00",
		 w1 when "01",
		 w2 when "10",
		 w3 when others;
		 
		 

	
	--f<= ((not s(1)) and  (not s(0)) and w0) or (not s(1) and  ( s(0)) and w1) 
	  --  or  ((s(1)) and  (not s(0)) and w2) or ((s(1)) and  (s(0)) and w3); 
	

end architecture behavior_ssa;
