library ieee;
use ieee.std_logic_1164.all;
use work. mux_4to1_pkg.all;

entity compare_signed_2bit_pkg is --start entity declaration statement

port( 
		signal A: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal B: in std_logic_vector(1 downto 0); --signal name : std_logic_vector(highint downto lowint);
		signal L: out std_logic; --signal_name : signal_mode data_type 
		signal E: out std_logic; --signal_name : signal_mode data_type 
		signal G: out std_logic	 --signal_name : signal_mode data_type 
	);--end of port clause

	
end entity; --end entity declaration statement

	
architecture  mixed_pkg of compare_signed_2bit_pkg is	--start of architecture declaration statement 
	

														--describes what the entity does 
													   --declaration potion of the architecture
														
	signal less: std_logic_vector(3 downto 0);	--declare internal signal less
																--models the outputs of the conditional negation logic
																--signal name : std_logic_vector(highint downto lowint);
	
	signal great: std_logic_vector(3 downto 0);	--declare internal signal great
																--models the outputs of the conditional negation logic
																--signal name : std_logic_vector(highint downto lowint);
	
	signal sel_A: std_logic_vector(1 downto 0);	--declare internal signal sel_A
																--models the inputs for the selector logic
																--signal name : std_logic_vector(highint downto lowint);
																
	--signal not_sigB: std_logic_vector(1 downto 0);
	
	signal small: std_logic;
	signal big: std_logic;
	
	
	
	begin 	--implementation potion of the architecture
	
	
	
	less(0)<=(not B(1)) and B(0);
	less(1)<='0';
	less(2)<=B(0) OR (not B(1));
	less(3)<=not B(1);
	
	
	great(0)<=B(1);
	great(1)<=(not B(0)) OR B(1);
	great(2)<='0';
	great(3)<=(not B(0)) AND B(1);
	
	
	sel_A(1)<= A(1);
	sel_A(0)<= A(0);	
	
	L<=small;
	G<=big;

	
	mux0: entity work.mux_4to1(dataflow)	--Entity Instantiation w/Positional Association
	port map (less(0),less(1), less(2),less(3),sel_A,small); --Positional Association( i.e place the inputs in the same order in the port map as the way they were created in the mux_4to1 file )
																													
	
	mux1: entity work.mux_4to1(dataflow)	--Entity Instantiation w/Named Association
	--port map (w(0)=>great(0), w(1)=>great(1), w(2)=>great(2), w(3)=>great(3), sel=>sel_A, f=>big); --Named Association( i.e connect the inputs/outputs in the port map to the inputs/outputs of the mux_4to1)
	port map (great(0), great(1), great(2), great(3), sel_A, big);
	
	E<= small xnor big;
	
	end architecture  mixed_pkg; --ends the implementation potion of the architecture  