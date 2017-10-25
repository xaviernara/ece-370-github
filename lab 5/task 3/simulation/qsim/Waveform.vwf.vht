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
-- Generated on "10/25/2017 18:14:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decoder_3to7seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decoder_3to7seg_vhd_vec_tst IS
END decoder_3to7seg_vhd_vec_tst;
ARCHITECTURE decoder_3to7seg_arch OF decoder_3to7seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL En : STD_LOGIC;
SIGNAL mag_leds : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL R : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sign_leds : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT decoder_3to7seg
	PORT (
	En : IN STD_LOGIC;
	mag_leds : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	R : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sign_leds : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decoder_3to7seg
	PORT MAP (
-- list connections between master ports and signals
	En => En,
	mag_leds => mag_leds,
	R => R,
	sign_leds => sign_leds
	);

-- En
t_prcs_En: PROCESS
BEGIN
LOOP
	En <= '0';
	WAIT FOR 2000000 ps;
	En <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_En;
-- R[2]
t_prcs_R_2: PROCESS
BEGIN
LOOP
	R(2) <= '0';
	WAIT FOR 1000000 ps;
	R(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R_2;
-- R[1]
t_prcs_R_1: PROCESS
BEGIN
LOOP
	R(1) <= '0';
	WAIT FOR 500000 ps;
	R(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R_1;
-- R[0]
t_prcs_R_0: PROCESS
BEGIN
LOOP
	R(0) <= '0';
	WAIT FOR 250000 ps;
	R(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R_0;
END decoder_3to7seg_arch;
