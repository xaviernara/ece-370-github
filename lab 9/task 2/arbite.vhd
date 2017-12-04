library ieee;
use ieee.std_logic_1164.all;

entity arbite is

	port(
		clk : in	std_logic;  --Asynchronous reset
		R	 : in	std_logic_VECTOR(0 TO 2); --Synchronizing clock signa
		rst : in	std_logic; --Device request signals
		G	 : out	std_logic_vector(0 to 2) --Device grant signals
	);

end entity;
--Use coding style Triple-Segment-Style 1 for this implementation.  
architecture behavior of arbite is

	-- Build an enumerated type for the state machine
	--These names represent the states of the bus arbiter state diagram
	type StateType is (IDLE,GNT_DEV0 , GNT_DEV1,GNT_DEV2) ;
	signal presentState, nextState : StateType;
begin
--Utilize  a concurrent  sensitivity-list process statement to model the next state combinational logic
--of  the  bus  arbiter  controller.  Which  signal(s)  belong  in  the sensitivity list? Name/label this process statement next_state_logic
	-- Logic to advance to the next state
next_state_logic:process (presentState, R) is begin
			case presentState is
				when IDLE=>
				
					if R(0) = '1' then nextState <= GNT_DEV0;
					elsif R(1) ='1' then nextState <= GNT_DEV1;
					elsif R(2) ='1' then nextState <= GNT_DEV2;					
					else	nextState <= IDLE;
					end if;					
				when GNT_DEV0 => 					
					if R = "000"  then nextState <= IDLE;
					elSif R(0 TO 1) ="01" then nextState <= GNT_DEV1;
					elsif R ="001" then nextState <= GNT_DEV2;
					else	nextState <= GNT_DEV0;
					end if;	
				when GNT_DEV1 =>
					if R(1 TO 2) = "01" then nextState <= GNT_DEV2;
					elsif R(1 TO 2) ="00" then nextState <= IDLE;
					elsif R(1) ='1' then nextState <= GNT_DEV1 ;
					else	nextState <= GNT_DEV1 ;
					end if;	
				when GNT_DEV2 =>
					if R(2) = '0' then nextState <= IDLE;
					--elsif R(2) ='1' then presentState <= GNT_DEV2 ;
					else	nextState <= GNT_DEV2 ;
					end if;
				when others=> nextState <=IDLE; 
			end case;
	end process next_state_logic;
--Utilize an other concurrent sensitivity -list process statement to model the state register of the bus arbiter controller.  
--Which signal(s) belong in the sensitivity list? Name/label this process statement state_reg.
	state_registar: process(clk,rst) is begin 
		if rst = '1' then presentState <= IDLE;
			elsif rising_edge(clk) then presentState <= nextState;
		end if;
	end process state_registar;
	
	
--Utilize a single concurrent conditional signal assignment (CSSA) 
--statement to behaviorally  model the combinational output logic of the bus arbiter controller
--The CSSA statement should assign port signal G accordingly.
combinational_output_logic: with presentState select
	G <= "000" when IDLE,
		  "100" when GNT_DEV0,
		  "010" when GNT_DEV1,		  
		  "001" when others;
end architecture behavior;
