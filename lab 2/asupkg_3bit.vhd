library ieee;
use ieee.std_logic_1164.all;
use work.full_adder_pkg.all;


entity asupkg_3bit is --start entity declaration statement

port( signal arith: in std_logic;   --signal_name : signal_mode data_type 
		signal sub: in std_logic; 		--signal_name : signal_mode data_type
		signal x: in std_logic_vector(2 downto 0);		   --signal name : std_logic_vector(highint downto lowint);
		signal y: in std_logic_vector(2 downto 0);			--signal name : std_logic_vector(highint downto lowint);
		signal r: out std_logic_vector(2 downto 0);		--signal name : std_logic_vector(highint downto lowint);
		signal v: out std_logic  
		
			--signal_name : signal_mode data_type
		);	--end of port clause
		
end entity asupkg_3bit;	--end entity declaration statement

architecture mixed_pkg of asupkg_3bit is 		--start of architecture declaration statement 
 		
																--describes what the entity does 
																--declaration potion of the architecture

	signal z: std_logic_vector(2 downto 0); 		--declare internal signal z
																--models the outputs of the conditional negation logic
																--signal name : std_logic_vector(highint downto lowint);

	
	signal carries: std_logic_vector(0 to 3);		--declare internal signal carries
																--models the carries into and out of each full adder
																--signal name: std_logic_vector(lowint to highint );

	signal not_sig_arith: std_logic;					--declare internal signal not_sig_arith
																--represents not gate 
														
-----------------------------------------------------------------------------------------
--declare internal signal xor_1-3	
--represents output(s) of any xor gates that are connected to the y inputs in diagram
	
	signal xor_sig0: std_logic;							
	signal xor_sig1: std_logic;	
	signal xor_sig2: std_logic;
-----------------------------------------------------------------------------------------
--declare internal signal AND_1-2
--represents output(s) of any and gates	

	signal AND_sig1: std_logic;							
	signal AND_sig2: std_logic;
-----------------------------------------------------------------------------------------
--declare internal signal OR_SIG
--represents output(s) of any OR gates	
	
	--signal or_sig: std_logic;
	
	
	begin		--implementation potion of the architecture

		--not_sig_arith <= not(arith);
		
		
		xor_sig0 <= y(0) xor sub;
		xor_sig1 <= y(1) xor sub;
		xor_sig2 <= y(2) xor sub;
		
		
		not_sig_arith <= not arith;
		AND_sig1 <=  not_sig_arith and (sub xor carries(3));
		AND_sig2 <= arith and (carries(3) xor carries(2));
		
		
		
		--v <= (not_sig_arith and ( carries(0) xor carries(1) xor carries(2) xor sub)) or ( arith and ( carries(0) xor carries(1) xor carries(2) xor carries(3))); 
		v <= AND_sig1 or AND_sig2;
		--v <= ((not_sig_arith and ( carries(2) xor sub))  or ( arith and ( carries(2) xor carries(3) )));
		
		FA2: entity work.full_adder(dataflow)		--Entity Instantiation w/Positional Association
		port map (carries(2), x(2), xor_sig2, carries(3), r(2)); --Positional Association( i.e place the inputs in the same order in the port map as the way they were created)
		
		FA1: entity work.full_adder(dataflow)		--Entity Instantiation w/Named Association
		port map (cin => carries(1) , x=>x(1) , y=>xor_sig1 ,  cout=> carries(2), sum => r(1) );
		
		FA0: entity work.full_adder(dataflow)		--Entity Instantiation w/Named Association
		port map (cin=>sub , x=>x(0), y => xor_sig0, cout => carries(1), sum=>r(0));
		
		
		
	
	
	end architecture mixed_pkg;	--end of architecture declaration statement
 																--describes what the entity does 
																--declaration potion of the architecture