library ieee;
use ieee.std_logic_1164.all;


entity toggle_reg_nbit is

	generic(N : POSITIVE:= 1 );
	port 
	(
		clk	: in std_logic; --clock signal
		SET	: in std_logic; --Synchronous reset
		T   	: in std_logic; --Toggle control
		LD 	: in std_logic; --Load control
		D	   : in std_logic_vector(N downto 0); --Load control
		Q	   : OUT std_logic_vector(N downto 0) --Current/present state
	);

end entity;

architecture behavior of toggle_reg_nbit is

	signal Qtemp: std_logic_vector(N-1 downto 0);
	
begin

	Tflop : process(clk, Qtemp) is begin 
	
--sequential if statement to  model the asynchronous initialization and active CLK edge detection logic
--and the synchronous updates to the toggle register

’
s present state during active CLK edges.  
	
	if(rising_edge(clk)) then
		if( SET = '1') then Qtemp <= (others=> '1');
		--elsif ( rising_edge (clk)) then Qtemp <= Qtemp;
		elsif LD= '1' then Qtemp <= D;
		elsif T = '1' then Qtemp <= NOT (Qtemp) ;
		
		else Qtemp <= Qtemp;
		end if; 
		
	else Qtemp <= Qtemp;
	end if; 
							
	end process Tflop;
	
end architecture behavior;