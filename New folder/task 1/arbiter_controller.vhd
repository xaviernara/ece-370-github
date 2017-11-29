library ieee;
use ieee.std_logic_1164.all;

entity arbiter_controller is

	port(
		clk : in	std_logic;  --Asynchronous reset
		R	 : in	std_logic_VECTOR(0 TO 2); --Synchronizing clock signa
		rst : in	std_logic; --Device request signals
		G	 : out	std_logic_vector(0 to 2) --Device grant signals
	);

end entity;

architecture behavior of arbiter_controlleris

	-- Build an enumerated type for the state machine
	--These names represent the states of the bus arbiter state diagram
	type StateType is (IDLE,GNT_DEV0 , GNT_DEV1,GNT_DEV2) ;
	signal presentState : StateType;


begin

	-- Logic to advance to the next state
arbiter_controller:process (clk, rst)
	begin
	
		if rst = '1' then
		elsif (rising_edge(clk)) then
			case presentState is
				when IDLE=>
				
					if R(0) = '1' then presentState <= GNT_DEV0;
					elsif R(1) ='1' then presentState <= GNT_DEV1;
					elsif R(2) ='1' then presentState <= GNT_DEV2;
					
					else	presentState <= IDLE;

					end if;
					
				when GNT_DEV0 => 
					
					if R = "000"  then presentState <= IDLE;
					elSif R(0 TO 1) ="01" then presentState <= GNT_DEV1;
					elsif R ="001" then presentState <= GNT_DEV2;
					
					else	presentState <= GNT_DEV0;
					
					end if;
					
				when GNT_DEV1 =>
				
					if R(1 TO 2) = "01" then presentState <= GNT_DEV2;
					elsif R(1 TO 2) ="00" then presentState <= IDLE;
					elsif R(1) ='1' then presentState <= GNT_DEV1 ;
					
					else	presentState <= GNT_DEV1 ;
					end if;
					
				when GNT_DEV2 =>
				
					if R(2) = '0' then presentState <= IDLE;
					--elsif R(2) ='1' then presentState <= GNT_DEV2 ;
					else	presentState <= GNT_DEV2 ;

					end if;
					
				when others=> presentState <=IDLE; 
					
			end case;
		end if;
	end process arbiter_controller;
	
	
--Utilize a single concurrent conditional signal assignment (CCSA) 
--statement to model the combinational output logic of the bus arbiter controller

--G <= 

	
	

end architecture behavior;
