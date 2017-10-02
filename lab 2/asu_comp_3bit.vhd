library ieee;
use ieee.std_logic_1164.all;

entity asu_comp_3bit is --start entity declaration statement

port( signal arith: in std_logic;   --signal_name : signal_mode data_type 
		signal sub: in std_logic; 		--signal_name : signal_mode data_type
		signal x: in std_logic_vector(2 downto 0);		   --signal name : std_logic_vector(highint downto lowint);
		signal y: in std_logic_vector(2 downto 0);			--signal name : std_logic_vector(highint downto lowint);
		signal r: out std_logic_vector(2 downto 0);		--signal name : std_logic_vector(highint downto lowint);
		signal v: out std_logic             --signal_name : signal_mode data_type
		);		--end of port clause

end entity asu_comp_3bit;	--end entity declaration statement

architecture dataflow of asu_comp_3bit is 		--start of architecture declaration statement 
																--describes what the entity does 
																--declaration potion of the architecture

	signal z: std_logic_vector(2 downto 0); 		--declare internal signal z
																--models the outputs of the conditional negation logic
.
	
	signal carries: std_logic_vector(0 to 2);		--declare internal signal carries
														--models the carries into and out of each full adder

.
	signal not_sig_arith: std_logic;					--declare internal signal not_sig_arith
													   --represents not gate 
														
-----------------------------------------------------------------------------------------
--declare internal signal xor_1-3	
--represents output(s) of any xor gates
	
	signal xor_sig1: std_logic;							
	signal xor_sig2: std_logic;	
	signal xor_sig3: std_logic;
-----------------------------------------------------------------------------------------
--declare internal signal AND_1-2
--represents output(s) of any and gates	

	signal AND_sig1: std_logic;							
	signal AND_sig2: std_logic;
-----------------------------------------------------------------------------------------
--declare internal signal OR_SIG
--represents output(s) of any OR gates	
	
	signal or_sig: std_logic;
	signal FA2_fulladd: std_logic;
	signal FA1_fulladd: std_logic;
	signal FA0_fulladd: std_logic;
	
	
	begin		--implementation potion of the architecture
		v <= (arith AND (sub xor  xor  xor ) OR (arith and (y(0) xor y(1) xor y(2) xor x(0) xor x(1) xor x(2))  
		
		--not_sig_arith <= not(arith);
		xor_sig1<= y(0) xor sub;
		xor_sig2<= y(1) xor sub;
		xor_sig3<= y(2) xor sub;
		
		
		
		
		
	
		
		AND_sig1<= and (arith);
		
		
		
		
		FA2: entity work.full_adder(dataflow)		--Entity Instantiation w/Positional Association
		port map (carries(2) );
		
		FA1: entity work.full_adder(dataflow)		--Entity Instantiation w/Named Association
		port map (carries(1)<=x(1),carries(1)<=y(1)   );
		
		FA0: entity work.full_adder(dataflow)		--Entity Instantiation w/Named Association
		port map (carries(0)<=x(1),carries(1)<=y(1)   );
		
		
		
	
	
	end architecture dataflow;	--end of architecture declaration statement
 