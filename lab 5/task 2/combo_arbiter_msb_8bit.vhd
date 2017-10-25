library ieee;
use ieee.std_logic_1164.all;

entity combo_arbiter_msb_8bit is
		port (
			signal req: in std_logic_vector(7 downto 0); 
			signal grant: out std_logic_vector(7 downto 0);
			signal zero: out std_logic 
			);

end entity;

architecture behavior of  combo_arbiter_msb_8bit is begin 
--single concurrent sensitivity-list process statement in combination with a
--sequential case statement to model the y output of the 8-to-3 binary encoder.

MSB_arbiter: process (req) is begin

		if req(7) = '1' then grant <="10000000";
		elsif req(6) = '1' then grant <="01000000";
		elsif req(5) = '1' then grant <="00100000";
		elsif req(4) = '1' then grant <="00010000";
		elsif req(3) = '1' then grant <="00001000";
		elsif req(2) = '1' then grant <="00000100";
		elsif req(1) = '1' then grant <="00000010";
		elsif req(0) = '1' then grant <="00000001";
		else							grant<="00000000";
		end if;

end process MSB_arbiter;



-- single concurrent selected signal assignment (CSSA) signal assignment 
-- statement to model the zero output of the 8 bit combinational arbiter.

with req SELECT 

zero<= '1' WHEN "00000000", 
		 '0' WHEN OTHERS;
		
end architecture behavior;

