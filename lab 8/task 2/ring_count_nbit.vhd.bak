library ieee;
use ieee.std_logic_1164.all;

entity ring_count_nbit is

	generic
	(N : (positive := 6));

	port 
	(
		clk		: in std_logic;--Clock signal
		en    	: in std_logic;--Synch. enable
		rst	   : in std_logic;--Asynch. reset
		Q     	: out std_logic_vector(N-1 downto 0) --Present ring count
	);

end entity;

architecture behavior of ring_count_nbit is

	-- Build an array type for the shift register
	type sr_length is array ((NUM_STAGES-1) downto 0) of std_logic;

	-- Declare the shift register signal
	signal sr: sr_length;

begin

	ring_count:process (clk)
	begin
		if (rising_edge(clk)) then

			if (en = '1') then

				
				
				
			end if;
		end if;
	end process ring_count;

	-- Capture the data from the last stage, before it is lost
	sr_out <= sr(NUM_STAGES-1);

end rtl;
