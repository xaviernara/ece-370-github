library ieee;
use ieee.std_logic_1164.all;

--remember to include "package _______.pkg is" first 
--remember to inculde "component______is" in the blank is the file you want to call (ie mux4_to1 in this case)
--component defines in and out signals like entity 
package mux_4to1_pkg is
	component mux_4to1 is
		port ( w0, w1, w2, w3 : in  std_logic;
				 sel            : in  std_logic_vector(1 downto 0);
				 f              : out std_logic );
			 
	end component mux_4to1; --calls and utilizes the mux_4to1 vhdl file so no need to write archtecture (ie internal signals)
end package mux_4to1_pkg;

--remember to use component instead of entity 
--remember to end the package after you end the component 