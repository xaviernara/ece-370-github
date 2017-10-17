library ieee;
use ieee.std_logic_1164.all;

entity compare_signed_2bit is --start entity declaration statement
	port(
		signal A: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal B: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal L: out std_logic; --signal_name : signal_mode data_type 
		signal E: out std_logic; --signal_name : signal_mode data_type 
		signal G: out std_logic	 --signal_name : signal_mode data_type 
		);--end of port clause

	
end entity; --end entity declaration statement

architecture behavior_ccsa of compare_signed_2bit is
	
	signal AB: std_logic_vector(3 downto 0);
	signal EG: std_logic_vector(1 downto 0);
	signal LEG: std_logic_vector(2 downto 0);
	
	begin 
	AB <= A & B;
	
	--EG <= E & G;
	
		L <= '1' when (A = "00" and B = "01") else
			  '1' when (A = "10" and B = "00") else
		     '1' when (A = "10" and B = "01") else
		     '1' when (A = "10" and B = "11") else
			  '1' when (A = "11" and B = "00") else
			  '1' when (A = "11" and B = "01") else
			  '0'; 
		
		EG <= "10" when (AB = "0000") else
				"00" when (AB = "0001") else
				"01" when (AB = "0010") else
				"01" when (AB = "0011") else
				"01" when (AB = "0100") else
				"10" when (AB = "0101") else
				"01" when (AB = "0110") else
				"01" when (AB = "0111") else
				"00" when (AB = "1000") else
				"00" when (AB = "1001") else
				"10" when (AB = "1010") else
				"00" when (AB = "1011") else
				"00" when (AB = "1100") else
				"00" when (AB = "1101") else
				"01" when (AB = "1110") else
				"10" when (AB = "1111");
				
		E <= EG(1);
      G <= EG(0);		
	
	
		
	
end architecture behavior_ccsa;