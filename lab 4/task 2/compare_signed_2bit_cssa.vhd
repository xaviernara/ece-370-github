library ieee;
use ieee.std_logic_1164.all;

entity compare_signed_2bit_cssa is --start entity declaration statement
	port(
		signal A: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal B: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal L: out std_logic; --signal_name : signal_mode data_type 
		signal E: out std_logic; --signal_name : signal_mode data_type 
		signal G: out std_logic	 --signal_name : signal_mode data_type 
		);--end of port clause

	
end entity; --end entity declaration statement

architecture behavior_cssa of compare_signed_2bit_cssa is
	
	signal AB: std_logic_vector(3 downto 0);
	--signal EG: std_logic_vector(1 downto 0);
	signal LGE: std_logic_vector(2 downto 0);
	
	begin 
			AB <= A & B; -- the concatenation operator (&) to concatenate port signal A and port signal B
						    --and assign the result to intermediate signal AB
	
	--EG <= E & G;
	
			L <= LGE(2); --Assign the individual output port signals of the 2-bit signed comparator by
                      --appropriately slicing intermediate signal slicing intermediate signal
							 							 
			G <= LGE(1); --slicing intermediate signal			
			E <= LGE(0); --slicing intermediate signal
	

		--concurrent selected signal assignment (CCSA)
		with AB SELECT 
		
	LGE <= "100" WHEN "0001" | "1000" | "1001"| "1011" | "1100" | "1101",
			 "001" WHEN "0000" | "0101" | "1010"| "1111",
			 "010" WHEN OTHERS;
					
end architecture behavior_cssa;