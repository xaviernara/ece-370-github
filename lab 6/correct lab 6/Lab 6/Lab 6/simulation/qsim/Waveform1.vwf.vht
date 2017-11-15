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
-- Generated on "11/14/2017 17:25:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          arbiter_lsb_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY arbiter_lsb_nbit_vhd_vec_tst IS
END arbiter_lsb_nbit_vhd_vec_tst;
ARCHITECTURE arbiter_lsb_nbit_arch OF arbiter_lsb_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL grant : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL req : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT arbiter_lsb_nbit
	PORT (
	grant : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	req : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : arbiter_lsb_nbit
	PORT MAP (
-- list connections between master ports and signals
	grant => grant,
	req => req,
	Z => Z
	);

-- req
t_prcs_req: PROCESS
BEGIN
	req <= '0';
WAIT;
END PROCESS t_prcs_req;

-- req[0]
t_prcs_req_0: PROCESS
BEGIN
	req(0) <= '0';
WAIT;
END PROCESS t_prcs_req_0;
END arbiter_lsb_nbit_arch;
