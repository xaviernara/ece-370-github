library ieee;
use ieee.std_logic_1164.all;

entity ring_count_nbit is

	generic
	(N : positive := 8);

	port 
	(
		clk		: in std_logic;--Clock signal
		en    	: in std_logic;--Synch. enable
		rst	   : in std_logic;--Asynch. reset
		Q     	: out std_logic_vector(N-1 downto 0) --Present ring count
	);

end entity;

ARCHITECTURE behavior of ring_count_nbit IS
		SIGNAL	Qtemp :	STD_LOGIC_VECTOR(N DOWNTO 0);

begin
 
 ring_counter: PROCESS(clk,rst)
		BEGIN
			IF	(rst = '1') THEN
	   --Utilize aggregate vector assignmentin combination with anothers clause 
		-- to initialize the N-bit ring counter to the proper initial count state		
			
					Qtemp	<=	((N - 1) => '1', OTHERS =>'0');
					
			if (en = '1') then Qtemp <= ((N-1) => '1', others=> '0');
			
			ELSIF rising_edge(clk) THEN
					
					Qtemp(N-1) <= Qtemp(0);
					for i IN (N-2) DOWNTO 0 loop
					
						Qtemp(i) <= Qtemp(i+1);
						
					end loop;
					
			END IF;			
		END PROCESS ring_counter;
		
		Q <= Qtemp;
		
END ARCHITECTURE behavior;
