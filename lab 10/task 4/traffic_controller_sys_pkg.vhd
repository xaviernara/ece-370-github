library ieee;
use ieee.std_logic_1164.all;

package traffic_controller_sys_pkg is
	component traffi is
		port(
				rst	  : in std_logic; --Asynchronous reset
				clk	  : in std_logic;	--Synchronizing clock signal
				car_ew  : in std_logic; --East-West car sensor
				car_ns  : in std_logic;	--North-South car sensor
				ryg_ew  : out std_logic_vector(2 downto 0); --East-West traffic lights
				ryg_ns  : out std_logic_vector(2 downto 0) --North-South traffic lights
			);
	
	end component traffi;
end traffic_controller_sys_pkg;
