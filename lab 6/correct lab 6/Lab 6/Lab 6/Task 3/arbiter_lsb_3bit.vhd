library ieee;
use ieee.std_logic_1164.all;

entity arbiter_lsb_3bit is
	port (	req	:	in  std_logic_vector (2 downto 0);
				grant :  out std_logic_vector (2 downto 0);
				Z		: 	out std_logic
				);
end entity arbiter_lsb_3bit;

architecture structure of arbiter_lsb_3bit is
constant THREE : positive :=3;
begin
	combo_arb_lsb_3bit	:	entity work.arbiter_lsb_nbit(dataflow)
		generic map (N => THREE)
		port map ( req   => req,
					  grant => grant,
					  Z	  => Z
					  );
end architecture structure; 