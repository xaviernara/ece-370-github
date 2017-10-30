library ieee;
use ieee.std_logic_1164.all;

entity signed_compare_2nbit is

	generic (N : positive := 4;);
	

	port 
	(
		A	: in natural range 0 to 2**ADDR_WIDTH - 1;
		B	: in std_logic_vector(2*N-1 downto 0);
		L	: OUT std_logic_VECTOR ((2*N-1) downto 0);
		G	: out std_logic_vector((N-1) downto 0)
	);

end entity;

architecture structure of signed_compare_2nbit is

	
	signal ram : memory_t;

	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;

begin
	
	comparator : for i in 0 to 2*N-1 generate
		
	

end structure;
