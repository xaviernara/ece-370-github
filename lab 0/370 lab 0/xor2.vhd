library ieee;    							--library clause
use ieee.std_logic_1164.all;			--use clause

entity xor2 is  --start entity declaration statement

	--start of port clause 
	port(signal x: in std_logic;		--signal_name : signal_mode data_type
		  signal y: in std_logic;		--signal_name : signal_mode data_type
		  signal f: out std_logic
			);								--end of port clause 
		  
												--scaler NOT array

end entity xor2;  --end entity declaration statement

architecture dataflow of xor2 is   --start of architecture declaration statement 
														--describes what the entity does 
														--declaration potion of the architecture
														
	signal a : std_logic;		--declare internal signal a
	signal b : std_logic;		--declare internal signal b
	signal c : std_logic;		--declare internal signal c
	signal d : std_logic;		--declare internal signal d

begin
														--implementation potion of the architecture
														
	--f<= x xor y;  --signal assignment statement 
						 --concurrent signal assignment (CSA) statament using 
						 -- signal assignemnt operator (<=) and xor 
						 
				--variable assignment operator (;=) 
				
				
	 --f<=(not(x) and y) or (x and not(y));
	 
	 f<= c or d; 		--concurrent signal assignment (CSA) (i.e you can write these in any order)
	 a<= not(x);		--concurrent signal assignment (CSA) (i.e you can write these in any order)
	 b<= not (y);		--concurrent signal assignment (CSA) (i.e you can write these in any order)
	 c<= a and y;		--concurrent signal assignment (CSA) (i.e you can write these in any order)
	 d<= c or x;		--concurrent signal assignment (CSA) (i.e you can write these in any order)
				
	
	
end architecture dataflow; 					--end of architecture declaration statement 