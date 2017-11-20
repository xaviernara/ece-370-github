library ieee;
use ieee.std_logic_1164.all;

entity ring_count_3bit_sys is
	port 
	(
		clk		: in std_logic;
		--clk_1Hz	: in std_logic;
		en			: in std_logic;
		rst      : in std_logic;
		Q			: out std_logic_VECTOR(2 downto 0)
	);

end entity;

architecture structure of ring_count_3bit_sys is

--constant named SIZE of type positive and initialize it to the value 3

	constant size : positive := 3;
	signal clk_1Hz : std_logic;
	

begin

	clk_1Hz <=clk;
--Utilize a generic map clause to associate generic parameter N of ring3
--to the constant SIZE using named association.

--Utilize a port map clause to associate the port signals of the ring3 using
--named association.
		
		ring3 : entity work.ring_count_nbit (behavior) GENERIC MAP(N => size)
	   PORT MAP(RST => RST,CLK => clk_1Hz,EN=>en, Q => Q);
		
--Utilize a concurrent entity instantiation statement to instantiate a clock divider 
--with instance name clk_div Associate the port signals of the clk_div instance using positionalassociation

									 
	   clk_div: entity work.clock_divider(behavior)
		PORT MAP (RST,CLK,clk_1Hz);
		
end architecture structure;
