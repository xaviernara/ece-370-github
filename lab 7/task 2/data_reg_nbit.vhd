library ieee;
use ieee.std_logic_1164.all;
--use work.jk_flop_pkg.all;

entity data_reg_nbit is

	generic(N : POSITIVE:= 1 );
	port 
	(
		clk	: in std_logic; --clock signal
		rst	: in std_logic; --Active high asynchronous reset
		EN	   : in std_logic; --enable control
		D	   : in std_logic_vector(N downto 0); --Data operand
		Q	   : OUT std_logic_vector(N downto 0) --Current/present state
	);

end entity;

architecture STRUCTURE of data_reg_nbit is
begin
	
  JKFF_stages: for k in 0 to N-1 generate 
			--concurrent component instantiation statement. Associate the formal ports using named association
	  JKFF: entity work.jk_flop(behavior)
		port map(clk=>clk, rst=>rst, EN=>EN, J=>D(k), K=> not(D(k)), Q=> Q(k), Qbar=>open);
	
	end generate JKFF_stages;
	
end architecture STRUCTURE;
