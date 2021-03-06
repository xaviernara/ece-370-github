library ieee;
use ieee.std_logic_1164.all;

entity traffic_controller is
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

architecture BEHAVIOR of traffic_controller is

	-- Build an enumerated type for the state machine
	type StateType is (GREEN_NS0,GREEN_NS1,GREEN_NS2,GREEN_NS3,GREEN_NS4,GREEN_EW0,GREEN_EW1,GREEN_EW2,GREEN_EW3,YELLOW_EW,YELLOW_NS);
	signal present_state: StateType;
	
	--declare syn_encoding attrib. of type string
	attribute syn_encoding : string;
	
	--associate syn_encoding attribute to StateType enum. type
	attribute syn_encoding of StateType :
	type is "0000000 0000001 0000010 0000100 0001000 0010000 0100000 1000000, safe";
	
begin

-- Dual-Segment Coding Style I

--Model the custom state register logic according to the following specification:

--Utilize a concurrent sensitivity-list process statement in combination with
--sequential case statements, sequential if statements, and the function
--rising_edge(). Which signal(s) belong in the sensitivity list?

custom_state_reg : process (clk,rst) is begin
		   if rst = '1' then present_state <= GREEN_NS0;
			elsif rising_edge(clk) then
				case present_state is 
		
					when GREEN_NS0 => present_state <= GREEN_NS1;
							
					when GREEN_NS1 => present_state <= GREEN_NS2;
						
					when GREEN_NS2 => present_state <= GREEN_NS3;
					
					when GREEN_NS3 => present_state <= GREEN_NS4;				
							
					when GREEN_NS4 =>
						if (car_ew = '0') then present_state <= GREEN_NS4;
						else present_state <= YELLOW_NS;
						end if;
						
					when GREEN_EW0 => present_state <= GREEN_EW1;
						
					when GREEN_EW1 => present_state <= GREEN_EW2;
						
					when GREEN_EW2 =>
						if (car_ns = '1') then present_state <= YELLOW_EW;
						else present_state <= GREEN_EW2;				
						end if;	
						
					when GREEN_EW3 => present_state <= YELLOW_EW;
					
					when YELLOW_EW => present_state <= GREEN_NS0;
						
					when YELLOW_NS => present_state <= GREEN_EW0;
			end case;
		end if;
	end process custom_state_reg;

--Model the combinational output logic according to the following specification:	
--	Utilize a single process statement in combination with sequential case
--and/or if statements to model the logic associated with both output port
--signals ryg_es and ryg_ns. 
	
	Moore: process(present_state, rst) is begin
		 if rst ='1' then ryg_ew <= "011";
								ryg_ns <= "110";
		 else
			case present_state is 
				when GREEN_NS0  => ryg_ew <= "011";
										 ryg_ns <= "110";
										 
				when GREEN_NS1  => ryg_ew <= "011";
										 ryg_ns <= "110";
										 
				when GREEN_NS2  => ryg_ew <= "011";
										 ryg_ns <= "110";
										 
				when GREEN_NS3  => ryg_ew <= "011";
										 ryg_ns <= "110";
				
				when GREEN_NS4  => ryg_ew <= "011";
										 ryg_ns <= "110";
										 
				when YELLOW_NS  => ryg_ew <= "011";
										 ryg_ns <= "101";
										 
				when GREEN_EW0  => ryg_ew <= "011";
										 ryg_ns <= "110";
				
				when GREEN_EW1  => ryg_ew <= "011";
										 ryg_ns <= "110";
				
				when GREEN_EW2  => ryg_ew <= "011";
										 ryg_ns <= "110";	
								
				when GREEN_EW3  => ryg_ew <= "011";
										 ryg_ns <= "110";	
										
				when YELLOW_EW  => ryg_ew <= "101";
										 ryg_ns <= "011";	
			END case;
		end if;
	end process Moore;
end architecture BEHAVIOR;
