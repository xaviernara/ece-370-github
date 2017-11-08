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
-- Generated on "11/07/2017 16:20:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          jk_flop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY jk_flop_vhd_vec_tst IS
END jk_flop_vhd_vec_tst;
ARCHITECTURE jk_flop_arch OF jk_flop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Qbar : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT jk_flop
	PORT (
	clk : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Qbar : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jk_flop
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	EN => EN,
	J => J,
	K => K,
	Q => Q,
	Qbar => Qbar,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 62500 ps;
	FOR i IN 1 TO 63
	LOOP
		clk <= '0';
		WAIT FOR 62500 ps;
		clk <= '1';
		WAIT FOR 62500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 875000 ps;
	EN <= '1';
	WAIT FOR 375000 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 750000 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 750000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 375000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 500000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 500000 ps;
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 375000 ps;
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 375000 ps;
	J <= '1';
	WAIT FOR 375000 ps;
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 375000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 375000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 250000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 250000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 375000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 250000 ps;
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 250000 ps;
	J <= '0';
	WAIT FOR 250000 ps;
	J <= '1';
	WAIT FOR 875000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
	WAIT FOR 125000 ps;
	J <= '0';
	WAIT FOR 125000 ps;
	J <= '1';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 250000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 250000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 250000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 250000 ps;
	K <= '1';
	WAIT FOR 375000 ps;
	K <= '0';
	WAIT FOR 375000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 375000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 500000 ps;
	K <= '0';
	WAIT FOR 250000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 500000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 250000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
	WAIT FOR 125000 ps;
	K <= '0';
	WAIT FOR 125000 ps;
	K <= '1';
WAIT;
END PROCESS t_prcs_K;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 187500 ps;
	rst <= '0';
	WAIT FOR 6812500 ps;
	rst <= '1';
	WAIT FOR 62500 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END jk_flop_arch;
