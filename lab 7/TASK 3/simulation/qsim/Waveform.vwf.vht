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
-- Generated on "11/08/2017 18:01:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toggle_reg_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toggle_reg_nbit_vhd_vec_tst IS
END toggle_reg_nbit_vhd_vec_tst;
ARCHITECTURE toggle_reg_nbit_arch OF toggle_reg_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LD : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SET : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT toggle_reg_nbit
	PORT (
	clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LD : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SET : IN STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : toggle_reg_nbit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D => D,
	LD => LD,
	Q => Q,
	SET => SET,
	T => T
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 31250 ps;
	clk <= '1';
	WAIT FOR 31250 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- LD
t_prcs_LD: PROCESS
BEGIN
	LD <= '1';
	WAIT FOR 250000 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 187500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 187500 ps;
	LD <= '0';
	WAIT FOR 187500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 187500 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 125000 ps;
	LD <= '0';
	WAIT FOR 250000 ps;
	LD <= '1';
	WAIT FOR 250000 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 125000 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 250000 ps;
	LD <= '0';
	WAIT FOR 187500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 187500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 375000 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 312500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 250000 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 187500 ps;
	LD <= '1';
	WAIT FOR 125000 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 250000 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 312500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 62500 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 125000 ps;
	LD <= '1';
	WAIT FOR 62500 ps;
	LD <= '0';
	WAIT FOR 250000 ps;
	LD <= '1';
	WAIT FOR 187500 ps;
	LD <= '0';
	WAIT FOR 250000 ps;
	LD <= '1';
WAIT;
END PROCESS t_prcs_LD;

-- SET
t_prcs_SET: PROCESS
BEGIN
	SET <= '1';
	WAIT FOR 125000 ps;
	SET <= '0';
	WAIT FOR 6875000 ps;
	SET <= '1';
	WAIT FOR 125000 ps;
	SET <= '0';
WAIT;
END PROCESS t_prcs_SET;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 312500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 187500 ps;
	T <= '0';
	WAIT FOR 312500 ps;
	T <= '1';
	WAIT FOR 250000 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 250000 ps;
	T <= '0';
	WAIT FOR 500000 ps;
	T <= '1';
	WAIT FOR 187500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 125000 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 312500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 187500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 62500 ps;
	T <= '1';
	WAIT FOR 125000 ps;
	T <= '0';
	WAIT FOR 125000 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 312500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 62500 ps;
	T <= '0';
	WAIT FOR 187500 ps;
	T <= '1';
	WAIT FOR 125000 ps;
	T <= '0';
WAIT;
END PROCESS t_prcs_T;
END toggle_reg_nbit_arch;
