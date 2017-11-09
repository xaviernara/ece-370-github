library ieee;
use ieee.std_logic_1164.all;
entity jk_flop is
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

end entity;
architecture behavior of jk_flop is
	
	signal Qtemp :std_logic;
	signal EN_JK :std_logic_VECTOR (2 downto 0);

begin
--Assign intermediate signal EN_JK to the vector formed 
--by concatenating portssignal EN, J, and K

	EN_JK<= EN & J &K;
	
	Qbar <= not Qtemp;
	
--concurrent sensitivity-list processstatementto represent the J-K flip flop. 
	
	jkflop : process(clk, rst) is begin 
	
--sequential if statement to  model the asynchronous initialization and active CLK edge detection logic.  
	
	if(falling_edge(clk)) then
		if( rst = '1') then Qtemp <= '0';
		--elsif ( rising_edge (clk)) then Qtemp <= Qtemp;
		else
		--sequential case statement to  model updates to the J-K flop’s present
		--state in terms of intermediate signal EN_JK during active CLK edges
			case (EN_JK) IS
				when "111" => Qtemp <= not Qtemp;
				when "101" => Qtemp <= '0';
				when "110" => Qtemp <= '1';
				when others => Qtemp <= Qtemp;
			end case;		
		end if;
	 end if;						
	end process jkflop;
	
	Q<= qtemp;
	
	
end architecture behavior;
