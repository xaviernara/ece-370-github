library ieee;
use ieee.std_logic_1164.all;

entity binary_encoder_8to3 is
		port (
			signal W: in std_logic_vector(7 downto 0); --Encoder inputs encoded as a 1 of-k code
			signal Y: out std_logic_vector(2 downto 0);--Encoder outputs encoded as a radix -2 unsigned number
			signal any: out std_logic --Encoder status output indicating at least one encoder input is asserted
			);

end entity;

architecture behavior of binary_encoder_8to3 is begin 
--single concurrent sensitivity-list process statement in combination with a
--sequential case statement to model the y output of the 8-to-3 binary encoder.

B_encoder: process (w) is begin
	case(w) is 

		 when "00000001" => y <="000";
		 when "00000010" => y <="001";
		 when "00000100" => y <="010";
		 when "00001000" => y <="011";
		 when "00010000" => y <="100";
		 when "00100000" => y <="101";
		 when "01000000" => y <="110";
		 when "10000000" => y <="111";
		 when others =>y<="---";
		
	 end case;
end process B_encoder;



-- single concurrent selected signal assignment (CSSA) signal assignment 
-- statement to model the any output of the 8-to-3 binary encoder.

with w SELECT 

any<= '0' WHEN "000" 
		'1' WHEN OTHERS;
		
end architecture behavior;


