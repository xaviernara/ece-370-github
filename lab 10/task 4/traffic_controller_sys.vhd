library ieee;
use ieee.std_logic_1164.all;
use work.clock_divider_package.all;
use work.traffic_controller_sys_pkg.all;

entity traffic_controller_sys is
	port 
	(
		rst	  : in std_logic; --Asynchronous reset
		clk	  : in std_logic;	--Synchronizing clock signal
		car_ew  : in std_logic; --East-West car sensor
		car_ns  : in std_logic;	--North-South car sensor
		ryg_ew  : out std_logic_vector(2 downto 0); --East-West traffic lights
		ryg_ns  : out std_logic_vector(2 downto 0) --North-South traffic lights
	);

end entity;

architecture structure of traffic_controller_sys is 

signal clk_1hz : std_logic;

begin 

	traffic_ctrl: component traffi
	port map(rst=> rst, clk=>clk_1hz, car_ew=>car_ew, car_ns=>car_ns, ryg_ew=>ryg_ew, ryg_ns=>ryg_ns);

	clk_div: component clock_divider
	port map (rst, clk, clk_1hz);

end architecture structure;