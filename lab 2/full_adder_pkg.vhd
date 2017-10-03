library ieee;
use ieee.std_logic_1164.all;


package full_adder_pkg is
	component full_adder is 
		port ( cin, x, y : in  std_logic;
          cout, sum : out std_logic );
			 
	end component full_adder;
end package full_adder_pkg;

