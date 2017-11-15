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
-- Generated on "11/07/2017 18:39:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          signed_compare_2nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY signed_compare_2nbit_vhd_vec_tst IS
END signed_compare_2nbit_vhd_vec_tst;
ARCHITECTURE signed_compare_2nbit_arch OF signed_compare_2nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL G : STD_LOGIC;
SIGNAL L : STD_LOGIC;
COMPONENT signed_compare_2nbit
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	G : OUT STD_LOGIC;
	L : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : signed_compare_2nbit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	G => G,
	L => L
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 200000 ps;
	A(1) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 100000 ps;
	A(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
LOOP
	B(1) <= '0';
	WAIT FOR 500000 ps;
	B(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 250000 ps;
	B(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;
END signed_compare_2nbit_arch;
