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
-- Generated on "11/08/2017 16:26:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          data_reg_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY data_reg_nbit_vhd_vec_tst IS
END data_reg_nbit_vhd_vec_tst;
ARCHITECTURE data_reg_nbit_arch OF data_reg_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT data_reg_nbit
	PORT (
	clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	EN : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : data_reg_nbit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D => D,
	EN => EN,
	Q => Q,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 63
	LOOP
		clk <= '0';
		WAIT FOR 62500 ps;
		clk <= '1';
		WAIT FOR 62500 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 62500 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 187500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 250000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 312500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 250000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
	D(1) <= '0';
	WAIT FOR 187500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 312500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
WAIT;
END PROCESS t_prcs_D_1;

-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 312500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 187500 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 375000 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 375000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 437500 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 187500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 437500 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 187500 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 375000 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 187500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 187500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 187500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 187500 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 125000 ps;
	EN <= '0';
	WAIT FOR 312500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 62500 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 125000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
	WAIT FOR 250000 ps;
	EN <= '1';
	WAIT FOR 62500 ps;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 125000 ps;
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
	WAIT FOR 6750000 ps;
	rst <= '1';
	WAIT FOR 62500 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END data_reg_nbit_arch;
