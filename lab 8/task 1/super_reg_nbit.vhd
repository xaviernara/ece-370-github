library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  super_reg_nbit is

	generic (N : POSITIVE := 5);
	port 
	(
		clk	    : in std_logic; --Clock signal
		en			 : in std_logic; --Synch. enable
		rst       : in std_logic; --Asynch. reset
		load	    : in std_logic; --Synch. load
		op			 : in std_logic_vector(2 downto 0); --Synch.operation control
		D			 : in std_logic_vector(N-1 downto 0); --N-bit load data
		Q			: out std_logic_vector(N-1 downto 0); --Present register state
		SLout		: out std_logic; --Shift left out when shifting left
		SRout    : out std_logic; --Shift right out when shifting right
		TC       : out std_logic --Terminal count when counting
	);

end entity;

architecture behavior of super_reg_nbit is
	signal Qtemp: unsigned (N-1 downto 0); -- present state of the N-bit super register
	constant max : unsigned (N-1 downto 0):= (others=>'1');
	constant min : unsigned (N-1 downto 0):= (others=>'0');	

begin
	registers:process (clk, rst)
	begin
		--if (rising_edge(clk)) then
			if(rst = '1') then Qtemp <=(others=> '0');
				elsif(rising_edge(clk)) then		
			if (en = '0') then Qtemp<=Qtemp;  
				elsif (load = '1') then Qtemp <= unsigned(D);
			else 
				case op is 
					when "000" => Qtemp <= (Qtemp(N-2 downto 0) & '0');
					when "001" => Qtemp <= (Qtemp(N-2 downto 0) & '1');
					when "010" => Qtemp <= ('0' & Qtemp(N-2 downto 0));
					when "011" => Qtemp <= ('1' & Qtemp(N-2 downto 0));
					when "100" => Qtemp <= (Qtemp(N-2 downto 0) & Qtemp(N-1));
					when "101" => Qtemp <= (Qtemp(0) & Qtemp(N-1 downto 1));
					when "110" => Qtemp <= (Qtemp+1);
					when "111" => Qtemp <= (Qtemp-1);
					when others => Qtemp <=Qtemp;
				end case;
			
			end if; 
		end if;		
	end process registers;
		
TC<= '1' WHEN op ="110" and Qtemp = max else
	  '1' WHEN op ="111" and Qtemp = min else
	  '0';
	
	SLout <= Qtemp(N-1);
	SRout <= Qtemp(0);	
	Q<=std_logic_vector(Qtemp);

end architecture behavior;
