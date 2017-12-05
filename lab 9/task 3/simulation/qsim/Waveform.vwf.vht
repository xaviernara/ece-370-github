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
-- Generated on "12/05/2017 16:15:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          arbite
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY arbite_vhd_vec_tst IS
END arbite_vhd_vec_tst;
ARCHITECTURE arbite_arch OF arbite_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL G : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL R : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL rst : STD_LOGIC;
COMPONENT arbite
	PORT (
	clk : IN STD_LOGIC;
	G : OUT STD_LOGIC_VECTOR(0 TO 2);
	R : IN STD_LOGIC_VECTOR(0 TO 2);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : arbite
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	G => G,
	R => R,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- R[2]
t_prcs_R_2: PROCESS
BEGIN
	R(2) <= '0';
	WAIT FOR 150000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 200000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 150000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 250000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 250000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 150000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 100000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 100000 ps;
	R(2) <= '0';
	WAIT FOR 150000 ps;
	R(2) <= '1';
	WAIT FOR 150000 ps;
	R(2) <= '0';
	WAIT FOR 350000 ps;
	R(2) <= '1';
	WAIT FOR 150000 ps;
	R(2) <= '0';
	WAIT FOR 100000 ps;
	R(2) <= '1';
	WAIT FOR 100000 ps;
	R(2) <= '0';
	WAIT FOR 150000 ps;
	R(2) <= '1';
	WAIT FOR 50000 ps;
	R(2) <= '0';
	WAIT FOR 50000 ps;
	R(2) <= '1';
WAIT;
END PROCESS t_prcs_R_2;
-- R[1]
t_prcs_R_1: PROCESS
BEGIN
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 100000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 200000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 150000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 100000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 150000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 150000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 400000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 100000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 300000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 200000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 100000 ps;
	R(1) <= '1';
	WAIT FOR 50000 ps;
	R(1) <= '0';
	WAIT FOR 50000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 100000 ps;
	R(1) <= '1';
	WAIT FOR 100000 ps;
	R(1) <= '0';
	WAIT FOR 150000 ps;
	R(1) <= '1';
WAIT;
END PROCESS t_prcs_R_1;
-- R[0]
t_prcs_R_0: PROCESS
BEGIN
	R(0) <= '0';
	WAIT FOR 150000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 200000 ps;
	R(0) <= '1';
	WAIT FOR 150000 ps;
	R(0) <= '0';
	WAIT FOR 100000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 150000 ps;
	R(0) <= '0';
	WAIT FOR 150000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 150000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 100000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 150000 ps;
	R(0) <= '0';
	WAIT FOR 200000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 100000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 500000 ps;
	R(0) <= '1';
	WAIT FOR 50000 ps;
	R(0) <= '0';
	WAIT FOR 100000 ps;
	R(0) <= '1';
	WAIT FOR 100000 ps;
	R(0) <= '0';
	WAIT FOR 50000 ps;
	R(0) <= '1';
WAIT;
END PROCESS t_prcs_R_0;
END arbite_arch;
