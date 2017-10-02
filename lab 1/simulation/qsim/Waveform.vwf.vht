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
-- Generated on "09/20/2017 10:37:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compare_2bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compare_2bit_vhd_vec_tst IS
END compare_2bit_vhd_vec_tst;
ARCHITECTURE compare_2bit_arch OF compare_2bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a0 : STD_LOGIC;
SIGNAL a1 : STD_LOGIC;
SIGNAL b0 : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL L : STD_LOGIC;
COMPONENT compare_2bit
	PORT (
	a0 : IN STD_LOGIC;
	a1 : IN STD_LOGIC;
	b0 : IN STD_LOGIC;
	b1 : IN STD_LOGIC;
	G : OUT STD_LOGIC;
	L : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : compare_2bit
	PORT MAP (
-- list connections between master ports and signals
	a0 => a0,
	a1 => a1,
	b0 => b0,
	b1 => b1,
	G => G,
	L => L
	);

-- b1
t_prcs_b1: PROCESS
BEGIN
LOOP
	b1 <= '0';
	WAIT FOR 125000 ps;
	b1 <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b1;

-- b0
t_prcs_b0: PROCESS
BEGIN
LOOP
	b0 <= '0';
	WAIT FOR 62500 ps;
	b0 <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b0;

-- a1
t_prcs_a1: PROCESS
BEGIN
LOOP
	a1 <= '0';
	WAIT FOR 500000 ps;
	a1 <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a1;

-- a0
t_prcs_a0: PROCESS
BEGIN
LOOP
	a0 <= '0';
	WAIT FOR 250000 ps;
	a0 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a0;
END compare_2bit_arch;
