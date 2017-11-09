library ieee;
use ieee.std_logic_1164.all;

package jk_flop_pkg is
	component jk_flop is 
		port 
		(
			clk	: in std_logic; --Synchronizing clock signal
			rst	: in std_logic; --Active high asynchronous reset
			EN	   : in std_logic; --Synchronous enable control
			J	   : in std_logic; --Synchronous J (set) 
			K	   : in std_logic; -- and K (reset) control
			Q	   : OUT std_logic; --Current/present state
			Qbar	: OUT std_logic	--Inverted current/present state
		);
		
	end component jk_flop;
end package jk_flop_pkg;