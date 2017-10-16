library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
   port ( w0, w1, w2, w3 : in  std_logic;
          sel            : in  std_logic_vector(1 downto 0);
          f              : out std_logic );
end entity mux_4to1;

architecture dataflow of mux_4to1 is
begin
	f <= (not(sel(1)) and not(sel(0)) and w0) or
       (not(sel(1)) and     sel(0)  and w1) or
       (    sel(1)  and not(sel(0)) and w2) or
       (    sel(1)  and     sel(0)  and w3);
end architecture dataflow;
