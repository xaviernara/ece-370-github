library ieee;
use ieee.std_logic_1164.all

entity binary_encoder_8to3 is 
begin

		port (
			signal W: in std_logic_vector(7 downto 0); --Encoder inputs encoded as a 1 of-k code
			signal Y: out std_logic_vector(2 downto 0);--Encoder outputs encoded as a radix -2 unsigned number
			signal any: out std_logic --Encoder status output indicating at least one encoder input is asserted
			);

end entity;

architecture behavior of binary_encoder_8to3 is begin 

B.encoder: process (w) is begin
	encode case(w) is 
	
		 if w(7) = '1' then y<="000";
		 elsif w(6) = '1' then y<="001";
		 elsif w(5) = '1' then y<="010";
		 elsif w(4) = '1' then y<="011";
		 elsif w(3) = '1' then y<="100";
		 elsif w(2) = '1' then y<="110";
		 else  					  y<="111";
		 end if;
	 end case encode;
end process B.encoder;