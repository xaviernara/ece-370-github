library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divide_by_50_counter is 
	port( rst, clk : in  std_logic;
 		   q        : out std_logic );
end entity divide_by_50_counter;

architecture behavior of divide_by_50_counter is
	signal count : unsigned(4 downto 0);
	signal qint : std_logic;
begin
	process(clk, rst)
	begin
		if rst = '1' then
			qint <= '0';
			count <= (others => '0');
		elsif rising_edge(clk) then
			if count < 24 then
				count <= count + 1;
			else
				count <= (others => '0');
				qint <= not qint;
			end if;
		end if;
	end process;
	q <= qint;
end architecture behavior;