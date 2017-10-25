library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to7seg is
		port (
			signal En: in std_logic; 
			signal R: in std_logic_vector(2 downto 0);			
			signal mag_leds: out std_logic_vector(6 downto 0);
			signal sign_leds: out std_logic_vector(6 downto 0)	
			);

end entity;

architecture behavior of  decoder_3to7seg is

signal En_R: std_logic_vector(3 downto 0);

begin 


--concurrent sensitivity-list process statement in combination with a
--sequential case statement to model the mag_leds output of the 8-to-3 binary encoder.
-- Behavioral Model with Nested case Statements 

En_R<= En & R;

MAGLEDS_decoder: process (R) is begin
	case(En) is 
		when '0' => mag_leds <= (others=> '1');
		when others =>
		  case(R) is
			 when "000" => mag_leds<="1000000";
			 when "001" => mag_leds<="1111001";
			 when "010" => mag_leds <="0100100";
			 when "011" => mag_leds <="0110100";
			 when "100" => mag_leds<="0100000";
			 when "101" => mag_leds<="0011001";
			 when "110" => mag_leds <="0100100";
			 when "111" => mag_leds <="1111001";
			 when others => mag_leds <= "1111111";
		end case;
	 end case;
end process MAGLEDS_decoder;

--a concurrent sensitivity-list process statement in combination with a
--sequential if statement to model the sign_leds output 

SIGNLEDS_decoder: process (En_R) is begin

		if En_R = "1000" then sign_leds <="1111111";
		elsif En_R = "1001" then sign_leds <="1111111";	
		elsif En_R = "1010" then sign_leds <="1111111";	
		elsif En_R = "1011" then sign_leds <="1111111";	
		elsif En_R = "1100" then sign_leds <="0111111";
		elsif En_R = "1101" then sign_leds <="0111111";
		elsif En_R = "1110" then sign_leds <="0111111";
		elsif En_R = "1111" then sign_leds <="0111111";
		else							 sign_leds<="1111111";
		end if;

	end process SIGNLEDS_decoder;

		
end architecture behavior;
