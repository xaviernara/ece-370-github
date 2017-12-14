-- Quartus Prime VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;

entity vending_machine_moore is
	port
	(
		clk	: in	std_logic;
		nd	 	 : in	std_logic_vector(1 downto 0);
		rst	 : in	std_logic;
		disp	 : out	std_logic
	);

end entity;

architecture behavior of vending_machine_moore is

	-- Build an enumerated type for the state machine
	type state_type is (s1, s2, s3, s4,s5);

	-- Register to hold the current state
	signal present_state, next_state: state_type;

begin

	NEXT_state_LOGIC:process (present_state,nd) is
	begin
			case present_state is
				when s1=>
					if nd(1) = '1' then
						next_state <= s3;
					else
						next_state <= s1;
					end if;
				when s2=>
					if nd(1) = '1' then
						next_state <= s4;
						
					elsif nd(0) = '1' then
						next_state <= s5;
					else
						next_state <= s2;
					end if;
					
				when s3=>
					if nd = "00" then
						next_state <= s3;
					elsif nd(0) = '1' then
						next_state <= s2;
					end if;	
					
				when s4=> then next_state <= s1;
					
					
				when s5=> then next_state <= s3;	
					
			end case;
		end if;
	end process;

	
	state_reg:process (clk,rst) is 
	begin
		if rst = '1' then present_state => s1;
			elsif rising_edge(clk) then present_state => s1 ;
		end if;
	end process;
	
	
	 disp<= '0' when present_state => s1 | present_state => s3 | present_state => s2 else
	 when others  present_state=> s5 | present_state=> s5; 
	


end architecture behavior ;
