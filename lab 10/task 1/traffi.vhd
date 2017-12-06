library ieee;
use ieee.std_logic_1164.all;

entity traffi is
	port 
	(
		rst	  : in std_logic; --Asynchronous reset
		clk	  : in std_logic;	--Synchronizing clock signal
		car_ew  : in std_logic; --East-West car sensor
		car_ns  : in std_logic;	--North-South car sensor
		ryg_ew  : out std_logic_vector(2 downto 0); --East-West traffic lights
		ryg_ns  : out std_logic_vector(2 downto 0) --North-South traffic lights
	);

end entity;

architecture BEHAVIOR of traffi is

	-- Build an enumerated type for the state machine
	type StateType is (GREEN_NS0,GREEN_NS1,GREEN_NS2,GREEN_NS3,GREEN_NS4,GREEN_EW0,GREEN_EW1,GREEN_EW2,GREEN_EW3,YELLOW_EW,YELLOW_NS);
	signal present_state, next_state	: StateType;

begin

next_state_logic : process (present_state,car_ns,car_ew) is begin
		case present_state is
		
			when GREEN_NS0 => next_state <= GREEN_NS1;
					
			when GREEN_NS1 => next_state <= GREEN_NS2;
				
			when GREEN_NS2 => next_state <= GREEN_NS3;
			
			when GREEN_NS3 => next_state <= GREEN_NS4;				
					
			when GREEN_NS4 =>
				if (car_ew = '0') then next_state <= GREEN_NS4;
				else next_state <= YELLOW_NS;
				end if;
				
			when GREEN_EW0 => next_state <= GREEN_EW1;
				
			when GREEN_EW1 => next_state <= GREEN_EW2;
				
			when GREEN_EW2 =>
				if (car_ns = '1') then next_state <= YELLOW_EW;
				else next_state <= GREEN_EW2;				
				end if;	
				
			when GREEN_EW3 => next_state <= YELLOW_EW;
			
			when YELLOW_EW => next_state <= GREEN_NS0;
				
			when YELLOW_NS => next_state <= GREEN_EW0;

		end case;
	end process;

	
	state_req : process (clk,rst) is begin
		if rst = '1' then present_state <= GREEN_NS0;
		elsif rising_edge(clk) then  present_state <= next_state;
		end if;
	end process state_req;
	
	moore : WITH present_state select
				ryg_ns <= "110" when GREEN_NS0 | GREEN_NS1 | GREEN_NS2 | GREEN_NS3 |GREEN_NS4,  
							  "011" when GREEN_EW0 | GREEN_EW1 | GREEN_EW2 | GREEN_EW3 |YELLOW_EW,  
							  "101" WHEN OTHERS;
							  
	--not a mealy outout so no need for inputs included in CCSA						  
	 ryg_ew <= "011" when (present_state = GREEN_NS0 or present_state = GREEN_NS1 or present_state = GREEN_NS2 or present_state = GREEN_NS3 or present_state = GREEN_NS4 or present_state = YELLOW_NS) else
				  "110" when (present_state = GREEN_EW0 or present_state = GREEN_EW1 or present_state = GREEN_EW2 or present_state = GREEN_EW3)
					else "101";


	
	
	

end architecture BEHAVIOR;
