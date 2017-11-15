library ieee;
use ieee.std_logic_1164.all;

entity signed_compare_2nbit is
generic  ( N : positive :=1);

port 		( A : in 	std_logic_vector ((2*N)-1 downto 0);
			  B : in 	std_logic_vector ((2*N)-1 downto 0);
			  L : out 	std_logic;
			  G : out 	std_logic
			  
			  );
end entity signed_compare_2nbit;

architecture structure of signed_compare_2nbit is
signal less, great: std_logic_vector (2*N-2 downto 0);
begin

	compare : entity work.compare_signed_2bit(behavior_ccsa)
	port map ( a(1) => a(2*N-1),
				  a(0) => a(2*N-2),
				  b(1) => b(2*N-1),
				  b(0) => b(2*N-2),
				  L    => less(2*N-2),
				  G    => great(2*N-2)
				  );
	
	comparator  : for i in(2*N-3) downto 0 generate
	comp   		: entity work.compare_2bit(dataflow)
		port map ( a1 => great(i+1),
					  a0 => a(i),
					  b1 => less(i+1),
					  b0 => b(i),
					  L  => less(i),
					  G  => great(i)
					  );
		end generate comparator;
	L <= less(0);
	G <= great(0);
	
end architecture structure;
			  