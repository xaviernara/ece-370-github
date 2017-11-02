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
-- Generated on "11/02/2017 16:16:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          combo_network
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY combo_network_vhd_vec_tst IS
END combo_network_vhd_vec_tst;
ARCHITECTURE combo_network_arch OF combo_network_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL G : STD_LOGIC;
SIGNAL H : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT combo_network
	PORT (
	G : BUFFER STD_LOGIC;
	H : BUFFER STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : combo_network
	PORT MAP (
-- list connections between master ports and signals
	G => G,
	H => H,
	X => X,
	Y => Y
	);

-- X[1]
t_prcs_X_1: PROCESS
BEGIN
LOOP
	X(1) <= '0';
	WAIT FOR 31250 ps;
	X(1) <= '1';
	WAIT FOR 31250 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_1;

-- X[0]
t_prcs_X_0: PROCESS
BEGIN
LOOP
	X(0) <= '0';
	WAIT FOR 62500 ps;
	X(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_0;

-- Y[1]
t_prcs_Y_1: PROCESS
BEGIN
LOOP
	Y(1) <= '0';
	WAIT FOR 500000 ps;
	Y(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y_1;

-- Y[0]
t_prcs_Y_0: PROCESS
BEGIN
LOOP
	Y(0) <= '0';
	WAIT FOR 250000 ps;
	Y(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y_0;
END combo_network_arch;
