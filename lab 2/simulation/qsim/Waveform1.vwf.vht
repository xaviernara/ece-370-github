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
-- Generated on "10/04/2017 09:55:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          asupkg_3bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY asupkg_3bit_vhd_vec_tst IS
END asupkg_3bit_vhd_vec_tst;
ARCHITECTURE asupkg_3bit_arch OF asupkg_3bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL arith : STD_LOGIC;
SIGNAL r : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sub : STD_LOGIC;
SIGNAL v : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT asupkg_3bit
	PORT (
	arith : IN STD_LOGIC;
	r : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	sub : IN STD_LOGIC;
	v : OUT STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : asupkg_3bit
	PORT MAP (
-- list connections between master ports and signals
	arith => arith,
	r => r,
	sub => sub,
	v => v,
	x => x,
	y => y
	);

-- arith
t_prcs_arith: PROCESS
BEGIN
	arith <= '0';
WAIT;
END PROCESS t_prcs_arith;

-- sub
t_prcs_sub: PROCESS
BEGIN
LOOP
	sub <= '0';
	WAIT FOR 4000000 ps;
	sub <= '1';
	WAIT FOR 4000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sub;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
LOOP
	x(2) <= '0';
	WAIT FOR 2000000 ps;
	x(2) <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
LOOP
	x(1) <= '0';
	WAIT FOR 1000000 ps;
	x(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
LOOP
	x(0) <= '0';
	WAIT FOR 500000 ps;
	x(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_0;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
LOOP
	y(2) <= '0';
	WAIT FOR 250000 ps;
	y(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
LOOP
	y(1) <= '0';
	WAIT FOR 125000 ps;
	y(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
LOOP
	y(0) <= '0';
	WAIT FOR 62500 ps;
	y(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_0;
END asupkg_3bit_arch;
