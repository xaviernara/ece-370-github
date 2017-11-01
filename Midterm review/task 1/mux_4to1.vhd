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
		signal f	: out std_logic;
		signal G	: out std_logic;
		signal H	: out std_logic	
	);

end entity;

architecture behavior_ssa of mux_4to1 is

	
	signal x: std_logic_vector(1 downto 0);
	signal y: std_logic_vector(1 downto 0);
	signal a: std_logic_vector(3 downto 0);
	signal b: std_logic_vector(3 downto 0);
	signal z: std_logic_vector(1 downto 0);

begin
	
	W0 <= a(0);
	w1 <= a(1);
	w2 <= a(2);
	w3 <= a(3);
	
	a(0) <= (x(0) and x(1));
	a(1) <=x(1);
	a(2) <= x(2) or x(1);
	a(3) <= not x(0);
	
	b(0) <= not x(0);
	b(1) <= x(0);
	b(2) <= x(1) or x(0);
	b(3) <= x(1);
	
	W0 <= b(0);
	w1 <= b(1);
	w2 <= b(2);
	w3 <= b(3);
	
	s(0)<= y(0);
	s(1)<= y(1);
	
	f<= ((not s(1)) and  (not s(0)) and w(0)) or (not s(1) and  ( s(0)) and w(1)) 
	    or  ((s(1)) and  (not s(0)) and w(2)) or ((s(1)) and  (s(0)) and w(3)); 
	
	
	G<=f;
	
	AB <= a&b;
	
	with  f select
	H<= '1' when "00"|"10",
		 '0'	when others;

end architecture behavior_ssa;
