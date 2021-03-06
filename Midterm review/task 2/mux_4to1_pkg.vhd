library ieee;
use ieee.std_logic_1164.all;

package mux_4to1_pkg is
	component mux_4to1 is
	port(
		signal s:  in std_logic_vector(1 downto 0);
		signal w0: in std_logic;
		signal w1: in std_logic;
		signal w2: in std_logic;
		signal w3: in std_logic;
		signal f:  out std_logic
		);
		
	end component mux_4to1;
end package mux_4to1_pkg;
