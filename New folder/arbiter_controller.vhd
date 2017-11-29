library ieee;
use ieee.std_logic_1164.all;

entity arbiter_controller is

	port(
		clk : in	std_logic;
		R	 : in	std_logic_VECTOR(0 TO 2);
		rst : in	std_logic;
		G	 : out	std_logic_vector(0 to 2)
	);

end entity;

architecture behavior of arbiter_controlleris

	-- Build an enumerated type for the state machine
	--These names represent the states of the bus arbiter state diagram
	type StateType is (IDLE,GNT_DEV0 , GNT_DEV1,GNT_DEV2) ;
	signal presentState : StateType;


begin

	-- Logic to advance to the next state
	process (clk, rst)
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
					
					
			end case;
		end if;
	end process;

	-- Logic to determine output
	process (state)
	begin
		case state is
			when s0 =>
				output <= "00";
			when s1 =>
				output <= "01";
			when s2 =>
				output <= "10";
		end case;
	end process;

end rtl;
