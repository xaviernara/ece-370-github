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
-- Generated on "11/02/2017 13:31:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_4to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_4to1_vhd_vec_tst IS
END mux_4to1_vhd_vec_tst;
ARCHITECTURE mux_4to1_arch OF mux_4to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w0 : STD_LOGIC;
SIGNAL w1 : STD_LOGIC;
SIGNAL w2 : STD_LOGIC;
SIGNAL w3 : STD_LOGIC;
COMPONENT mux_4to1
	PORT (
	f : OUT STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w0 : IN STD_LOGIC;
	w1 : IN STD_LOGIC;
	w2 : IN STD_LOGIC;
	w3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_4to1
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	s => s,
	w0 => w0,
	w1 => w1,
	w2 => w2,
	w3 => w3
	);

-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 1000000 ps;
	s(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;

-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 500000 ps;
	s(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;

-- w0
t_prcs_w0: PROCESS
BEGIN
LOOP
	w0 <= '0';
	WAIT FOR 250000 ps;
	w0 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w0;

-- w1
t_prcs_w1: PROCESS
BEGIN
LOOP
	w1 <= '0';
	WAIT FOR 125000 ps;
	w1 <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w1;

-- w2
t_prcs_w2: PROCESS
BEGIN
LOOP
	w2 <= '0';
	WAIT FOR 62500 ps;
	w2 <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w2;

-- w3
t_prcs_w3: PROCESS
BEGIN
LOOP
	w3 <= '0';
	WAIT FOR 31250 ps;
	w3 <= '1';
	WAIT FOR 31250 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w3;
END mux_4to1_arch;
