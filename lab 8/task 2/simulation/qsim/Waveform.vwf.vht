-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2017 17:12:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ring_count_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ring_count_nbit_vhd_vec_tst IS
END ring_count_nbit_vhd_vec_tst;
ARCHITECTURE ring_count_nbit_arch OF ring_count_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT ring_count_nbit
	PORT (
	clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ring_count_nbit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en => en,
	Q => Q,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 62500 ps;
	clk <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 187500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 312500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 187500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 250000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 250000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 312500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 312500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
	WAIT FOR 7000000 ps;
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END ring_count_nbit_arch;
