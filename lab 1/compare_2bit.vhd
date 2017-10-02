library ieee;						--library clause
use ieee.std_logic_1164.all;	--use clause

entity compare_2bit is --start entity declaration statement

--start of port clause 
	port(signal a1: in std_logic;		--signal_name : signal_mode data_type
		  signal a0: in std_logic;		--signal_name : signal_mode data_type
		  signal b1: in std_logic;		--signal_name : signal_mode data_type
		  signal b0: in std_logic;		--signal_name : signal_mode data_type
		 
		  signal L: out std_logic;
		  signal G: out std_logic
		 );								--end of port clause 
		 
		 
end entity compare_2bit; --end entity declaration statement

architecture dataflow of compare_2bit is --start of architecture declaration statement 
														--describes what the entity does 
														--declaration potion of the architecture
														
								
--------------------------------------------------------------------------------------------------------------															
								
signal sig_a0 : std_logic;				--declare internal signal sig_a0
												--represents input of a0		
												
												
signal not_sig_a0 : std_logic;			--declare internal signal not_sig_a0
													--represents output(s) of any NOT gate		


signal sig_a1 : std_logic;					--declare internal signal sig_a1
													--represents input of a1	
													
													
signal not_sig_a1 : std_logic;			--declare internal signal not_sig_a1
													--represents output(s) of any NOT gate
													

signal sig_b0 : std_logic;					--declare internal signal sig_b0
													--represents input of b0
													

signal not_sig_b0 : std_logic;			--declare internal signal not_sig_b0
													--represents output(s) of any NOT gate		


signal sig_b1 : std_logic;					--declare internal signal sig_b1
													--represents input of b1
													
signal not_sig_b1 : std_logic;			--declare internal signal not_sig_b1
													--represents output(s) of any NOT gate
													
------------------------------------------------------------------------------------------
--declare internal signal AND_1-3
--represents output(s) of any AND gates for SOP 
								
signal AND_1    : std_logic;					
signal AND_2    : std_logic;
signal AND_3    : std_logic;

---------------------------------------------------------------------------------------
--declare internal signal or_1-5 
--represents output(s) of any OR gates for POS

signal or_1    : std_logic;
signal or_2    : std_logic;
signal or_3    : std_logic;								
signal or_4    : std_logic;
signal or_5    : std_logic;
---------------------------------------------------------------------------------------

begin		--implementation potion of the architecture

      --Signal Initialization/assignment
		sig_a0 <=  a0;
		sig_b0 <=  b0;
		not_sig_a0 <= not a0;
		not_sig_b0 <= not b0;
		
		sig_a1 <=  a1;
		sig_b1 <=  b1;
		not_sig_a1 <= not a1;
		not_sig_b1 <= not b1;
-------------------------------------------------------------------------------------------		
		
		--To model the 2-level logic networks corresponding to the SOP of G
		AND_1 <= sig_a1 AND not_sig_b1;
		AND_2 <= not_sig_b0 AND sig_a1 AND sig_a0;
		AND_3 <= not_sig_b0 AND sig_a0 AND not_sig_b1;
		
		G <= AND_1 OR AND_2 OR AND_3;
-------------------------------------------------------------------------------------------		
	
		--to model the 2-level logic networks corresponding to the POS of L
		or_1 <= sig_b1 OR not_sig_a1;
		or_2 <= not_sig_a1 OR sig_b0;
		or_3 <= not_sig_a1 OR not_sig_a0;
		or_4 <= sig_b1 OR sig_b0;
		or_5 <= not_sig_a0 OR sig_b1;
		
		L    <= or_1 AND or_2 AND or_3 AND or_4 AND or_5; 
		
		
	end architecture dataflow; 


