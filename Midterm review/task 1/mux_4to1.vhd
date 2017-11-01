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

	
	signal x: std_logic_vector(1 downto 0);
	signal y: std_logic_vector(1 downto 0);
	signal a: std_logic_vector(3 downto 0);
	signal b: std_logic_vector(3 downto 0);
	signal z: std_logic_vector(1 downto 0);

begin

	a(0)<= (x(0) and x(1));
	<optional_label>: <target> <= 
	<value> when <condition> else
	<value> when <condition> else 
	<value> when <condition> else
	...
	<value>;


end rtl;
