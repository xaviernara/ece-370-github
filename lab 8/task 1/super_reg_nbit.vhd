library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  super_reg_nbit is

	generic
	(N : (POSITIVE := 3));
	port 
	(
		clk	    : in std_logic; --Clock signal
		en			 : in std_logic; --Synch. enable
		rst       : in std_logic; --Asynch. reset
		load	    : in std_logic; --Synch. load
		op			 : in std_logic_vector(2 downto 0); --Synch.operation control
		D			 : in std_logic_vector(N-1 downto 0); --N-bit load data
		Q			: out std_logic_vector(N-1 downto 0); --Present register state
		SLout		: out std_logic; --Shift left out when shifting left
		SRout    : out std_logic; --Shift right out when shifting right
		TC       : out std_logic --Terminal count when counting

	);

end entity;

architecture behavior of super_reg_nbit is
	
	signal Qtemp: unsigned (N-1 downto 0); -- present state of the N-bit super register
	
	-- Build an array type for the shift register
	type sr_length is array ((NUM_STAGES-1) downto 0) of std_logic;

	-- Declare the shift register signal
	signal sr: sr_length;
	

begin

	registers:process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then Qtemp <= '0';
			   if (en= '0') then Qtemp<='0';  
					if (load = '1') then Qtemp <= unsigned(D);
			   
			 
			
			 else 
				Qtemp<= (N-1=>'0', N-2=>'0' ,others =>D  
			
				
			
			
			--sr <= (others=>'0');
		--elsif (rising_edge(clk)) then

			
			else 
			Qtemp <= Qtemp - 1;
			
			if(

				-- Shift data by one stage; data from last stage is lost
				sr((NUM_STAGES-1) downto 1) <= sr((NUM_STAGES-2) downto 0);

				-- Load new data into the first stage
				sr(0) <= sr_in;

			end if;
		end if;
		
		
	end process registers;

	
	SLout <= Q(N-1);
	SRout <= Q(0);
	
	
	Q<=

end architecture behavior;
