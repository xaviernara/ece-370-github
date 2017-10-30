
library ieee;
use ieee.std_logic_1164.all;

entity arbiter_lsb_nbit is
	generic(N: positive:=3);   --Bit-width 
	port 
	(
		signal req : in std_logic_vector(N-1 downto 0);  --Request inputs
		signal grant : out std_logic_vector(N-1 downto 0); --Grant outputs
		signal z: out std_logic_vector(N-1 downto 0) --Status bit indicating absence of requests
	);
	
end arbiter_lsb_nbit;



architecture dataflow of arbiter_lsb_nbit is

	signal zero : std_logic_vector(N downto 0);

begin
--single concurrent for...generate statement in combination with
--concurrent “simple” signal assignment (CSSA) statements to model the
--i-th bit of the zero prefix indicator that spans bit positions 0 to i-1, for i > 0.

	ARBITER: for i in 0 to N-1 generate
		z(i)<= (req(i) not zero(i))  and grant(i);
	
	
	<optional_label>: <target> <= 
	<value> when <condition> else
	<value> when <condition> else 
	<value> when <condition> else
	...
	OTHERS;
end generate ARBITER;


	<optional_label>: <target> <= 
	<value> when <condition> else
	<value> when <condition> else 
	<value> when <condition> elsE
	...
	<value>;
	
	z(N-1)<= (req(N-1) not zero(N))  and grant(N-1);
end dataflow;


