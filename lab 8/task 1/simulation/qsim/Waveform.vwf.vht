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
-- Generated on "11/21/2017 17:19:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          super_reg_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY super_reg_nbit_vhd_vec_tst IS
END super_reg_nbit_vhd_vec_tst;
ARCHITECTURE super_reg_nbit_arch OF super_reg_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL SLout : STD_LOGIC;
SIGNAL SRout : STD_LOGIC;
SIGNAL TC : STD_LOGIC;
COMPONENT super_reg_nbit
	PORT (
	clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	en : IN STD_LOGIC;
	load : IN STD_LOGIC;
	op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rst : IN STD_LOGIC;
	SLout : OUT STD_LOGIC;
	SRout : OUT STD_LOGIC;
	TC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : super_reg_nbit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D => D,
	en => en,
	load => load,
	op => op,
	Q => Q,
	rst => rst,
	SLout => SLout,
	SRout => SRout,
	TC => TC
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

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 187500 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 250000 ps;
	load <= '1';
	WAIT FOR 187500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 187500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 312500 ps;
	load <= '0';
	WAIT FOR 187500 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 187500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 312500 ps;
	load <= '1';
	WAIT FOR 250000 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 437500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 187500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 187500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 125000 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 500000 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 312500 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 187500 ps;
	load <= '1';
	WAIT FOR 62500 ps;
	load <= '0';
	WAIT FOR 62500 ps;
	load <= '1';
	WAIT FOR 125000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 250000 ps;
	D(2) <= '1';
	WAIT FOR 312500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 250000 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 250000 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 250000 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 312500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 312500 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 187500 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 250000 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 187500 ps;
	D(2) <= '1';
	WAIT FOR 125000 ps;
	D(2) <= '0';
	WAIT FOR 62500 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
	WAIT FOR 125000 ps;
	D(2) <= '1';
	WAIT FOR 62500 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 187500 ps;
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
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 312500 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
	D(1) <= '0';
	WAIT FOR 250000 ps;
	D(1) <= '1';
	WAIT FOR 62500 ps;
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
	WAIT FOR 250000 ps;
	D(1) <= '0';
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 250000 ps;
	D(1) <= '0';
	WAIT FOR 187500 ps;
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
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 125000 ps;
	D(1) <= '1';
	WAIT FOR 125000 ps;
	D(1) <= '0';
	WAIT FOR 187500 ps;
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
	WAIT FOR 125000 ps;
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
	WAIT FOR 62500 ps;
	D(1) <= '1';
	WAIT FOR 187500 ps;
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
	WAIT FOR 187500 ps;
	D(1) <= '1';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 187500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
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
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 750000 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 187500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 312500 ps;
	D(0) <= '0';
	WAIT FOR 312500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
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
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 125000 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 187500 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 62500 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	D(0) <= '0';
	WAIT FOR 312500 ps;
	D(0) <= '1';
	WAIT FOR 125000 ps;
	D(0) <= '0';
	WAIT FOR 187500 ps;
	D(0) <= '1';
	WAIT FOR 62500 ps;
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '1';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	op(1) <= '1';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
	op(0) <= '0';
WAIT;
END PROCESS t_prcs_op_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
	WAIT FOR 6875000 ps;
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 375000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 437500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 312500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 250000 ps;
	en <= '1';
	WAIT FOR 187500 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 187500 ps;
	en <= '1';
	WAIT FOR 187500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
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
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 125000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 125000 ps;
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
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 250000 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 125000 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 62500 ps;
	en <= '0';
	WAIT FOR 62500 ps;
	en <= '1';
	WAIT FOR 124000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;
END super_reg_nbit_arch;
