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

-- Dual-Segment Style II 
architecture BEHAVIOR of traffi is

	-- Build an enumerated type for the state machine
	type StateType is (GREEN_NS0,GREEN_NS1,GREEN_NS2,GREEN_NS3,GREEN_NS4,GREEN_EW0,GREEN_EW1,GREEN_EW2,GREEN_EW3,YELLOW_EW,YELLOW_NS);
	signal present_state, next_state	: StateType;
	
	--declare syn_encoding attrib. of type string
	attribute syn_encoding : string;
	
	--associate syn_encoding attribute to StateType enum. type
	attribute syn_encoding of StateType :
	type is "default, unsafe";
begin

combo_logic : process (present_state,car_ns,car_ew) is begin

		case present_state is
		
			when GREEN_NS0 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_NS1;
					
			when GREEN_NS1 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_NS2;
				
			when GREEN_NS2 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_NS3;
			
			when GREEN_NS3 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_NS4;				
					
			when GREEN_NS4 => ryg_ew <= "011";
									ryg_ns <= "101";			
				if (car_ew = '0') then next_state <= GREEN_NS4;
				else next_state <= YELLOW_NS;
				end if;
				
			when GREEN_EW0 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_EW1;
				
			when GREEN_EW1 => ryg_ew <= "011";
									ryg_ns <= "110";
				next_state <= GREEN_EW2;
				
			when GREEN_EW2 => ryg_ew <= "011";
									ryg_ns <= "110";				
				if (car_ns = '1') then next_state <= YELLOW_EW;
				else next_state <= GREEN_EW2;				
				end if;	
				
			when GREEN_EW3 =>  ryg_ew <= "011";
									 ryg_ns <= "110";
				next_state <= YELLOW_EW;
			
			when YELLOW_EW => ryg_ew <= "101";
									ryg_ns <= "110";
			next_state <= GREEN_NS0;
				
			when YELLOW_NS => ryg_ew <= "011";
									ryg_ns <= "101";
				next_state <= GREEN_EW0;

		end case;
	end process;

	
	state_req : process (clk,rst) is begin
		if rst = '1' then present_state <= GREEN_NS0;
		elsif rising_edge(clk) then  present_state <= next_state;
		end if;
	end process state_req;
	

end architecture BEHAVIOR;
