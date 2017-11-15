library ieee;
use ieee.std_logic_1164.all;

entity arbiter_lsb_nbit is
	generic ( N 	 : positive :=1);
	
	port    ( 	req	: in std_logic_vector (N-1 downto 0);
					grant : out std_logic_vector(N-1 downto 0);
					Z		: out std_logic
			  );
end arbiter_lsb_nbit;


architecture dataflow of arbiter_lsb_nbit is

	signal zero  : std_logic_vector( N downto 0);
	begin
	zero(0)<='1';
	grant_signal: for i in 1 to N generate
		zero(i) <= not (req(i-1)) and zero( i-1);
		end generate grant_signal;
		
		grant(N-1 downto 0) <=zero(n-1 downto 0) and req(N-1 downto 0);
		Z <= zero(N);
		
end architecture dataflow;
				