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
-- Generated on "10/25/2017 10:55:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binary_encoder_8to3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binary_encoder_8to3_vhd_vec_tst IS
END binary_encoder_8to3_vhd_vec_tst;
ARCHITECTURE binary_encoder_8to3_arch OF binary_encoder_8to3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL any : STD_LOGIC;
SIGNAL W : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT binary_encoder_8to3
	PORT (
	any : OUT STD_LOGIC;
	W : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : binary_encoder_8to3
	PORT MAP (
-- list connections between master ports and signals
	any => any,
	W => W,
	Y => Y
	);
-- W[7]
t_prcs_W_7: PROCESS
BEGIN
LOOP
	W(7) <= '0';
	WAIT FOR 32000000 ps;
	W(7) <= '1';
	WAIT FOR 32000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_7;
-- W[6]
t_prcs_W_6: PROCESS
BEGIN
LOOP
	W(6) <= '0';
	WAIT FOR 16000000 ps;
	W(6) <= '1';
	WAIT FOR 16000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_6;
-- W[5]
t_prcs_W_5: PROCESS
BEGIN
LOOP
	W(5) <= '0';
	WAIT FOR 8000000 ps;
	W(5) <= '1';
	WAIT FOR 8000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_5;
-- W[4]
t_prcs_W_4: PROCESS
BEGIN
LOOP
	W(4) <= '0';
	WAIT FOR 4000000 ps;
	W(4) <= '1';
	WAIT FOR 4000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_4;
-- W[3]
t_prcs_W_3: PROCESS
BEGIN
LOOP
	W(3) <= '0';
	WAIT FOR 2000000 ps;
	W(3) <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_3;
-- W[2]
t_prcs_W_2: PROCESS
BEGIN
LOOP
	W(2) <= '0';
	WAIT FOR 1000000 ps;
	W(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_2;
-- W[1]
t_prcs_W_1: PROCESS
BEGIN
LOOP
	W(1) <= '0';
	WAIT FOR 500000 ps;
	W(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_1;
-- W[0]
t_prcs_W_0: PROCESS
BEGIN
LOOP
	W(0) <= '0';
	WAIT FOR 250000 ps;
	W(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 64000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W_0;
END binary_encoder_8to3_arch;
