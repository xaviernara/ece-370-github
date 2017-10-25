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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "10/25/2017 10:54:57"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	combo_arbiter_msb_8bit IS
    PORT (
	req : IN std_logic_vector(7 DOWNTO 0);
	grant : OUT std_logic_vector(7 DOWNTO 0);
	zero : OUT std_logic
	);
END combo_arbiter_msb_8bit;

ARCHITECTURE structure OF combo_arbiter_msb_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_req : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_grant : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \grant[0]~output_o\ : std_logic;
SIGNAL \grant[1]~output_o\ : std_logic;
SIGNAL \grant[2]~output_o\ : std_logic;
SIGNAL \grant[3]~output_o\ : std_logic;
SIGNAL \grant[4]~output_o\ : std_logic;
SIGNAL \grant[5]~output_o\ : std_logic;
SIGNAL \grant[6]~output_o\ : std_logic;
SIGNAL \grant[7]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \req[0]~input_o\ : std_logic;
SIGNAL \req[4]~input_o\ : std_logic;
SIGNAL \req[5]~input_o\ : std_logic;
SIGNAL \req[6]~input_o\ : std_logic;
SIGNAL \req[7]~input_o\ : std_logic;
SIGNAL \grant~0_combout\ : std_logic;
SIGNAL \req[1]~input_o\ : std_logic;
SIGNAL \req[2]~input_o\ : std_logic;
SIGNAL \req[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \grant~1_combout\ : std_logic;
SIGNAL \grant~2_combout\ : std_logic;
SIGNAL \grant~3_combout\ : std_logic;
SIGNAL \grant~4_combout\ : std_logic;
SIGNAL \grant~5_combout\ : std_logic;
SIGNAL \grant~6_combout\ : std_logic;
SIGNAL \grant~7_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_req <= req;
grant <= ww_grant;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\grant[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~1_combout\,
	devoe => ww_devoe,
	o => \grant[0]~output_o\);

\grant[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~2_combout\,
	devoe => ww_devoe,
	o => \grant[1]~output_o\);

\grant[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~3_combout\,
	devoe => ww_devoe,
	o => \grant[2]~output_o\);

\grant[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~4_combout\,
	devoe => ww_devoe,
	o => \grant[3]~output_o\);

\grant[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~5_combout\,
	devoe => ww_devoe,
	o => \grant[4]~output_o\);

\grant[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~6_combout\,
	devoe => ww_devoe,
	o => \grant[5]~output_o\);

\grant[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grant~7_combout\,
	devoe => ww_devoe,
	o => \grant[6]~output_o\);

\grant[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \req[7]~input_o\,
	devoe => ww_devoe,
	o => \grant[7]~output_o\);

\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\req[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(0),
	o => \req[0]~input_o\);

\req[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(4),
	o => \req[4]~input_o\);

\req[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(5),
	o => \req[5]~input_o\);

\req[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(6),
	o => \req[6]~input_o\);

\req[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(7),
	o => \req[7]~input_o\);

\grant~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~0_combout\ = (!\req[4]~input_o\ & (!\req[5]~input_o\ & (!\req[6]~input_o\ & !\req[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[4]~input_o\,
	datab => \req[5]~input_o\,
	datac => \req[6]~input_o\,
	datad => \req[7]~input_o\,
	combout => \grant~0_combout\);

\req[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(1),
	o => \req[1]~input_o\);

\req[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(2),
	o => \req[2]~input_o\);

\req[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(3),
	o => \req[3]~input_o\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\grant~0_combout\ & (!\req[1]~input_o\ & (!\req[2]~input_o\ & !\req[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grant~0_combout\,
	datab => \req[1]~input_o\,
	datac => \req[2]~input_o\,
	datad => \req[3]~input_o\,
	combout => \Mux0~0_combout\);

\grant~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~1_combout\ = (\req[0]~input_o\ & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[0]~input_o\,
	datab => \Mux0~0_combout\,
	combout => \grant~1_combout\);

\grant~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~2_combout\ = (\req[1]~input_o\ & (\grant~0_combout\ & (!\req[2]~input_o\ & !\req[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[1]~input_o\,
	datab => \grant~0_combout\,
	datac => \req[2]~input_o\,
	datad => \req[3]~input_o\,
	combout => \grant~2_combout\);

\grant~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~3_combout\ = (\req[2]~input_o\ & (\grant~0_combout\ & !\req[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[2]~input_o\,
	datab => \grant~0_combout\,
	datad => \req[3]~input_o\,
	combout => \grant~3_combout\);

\grant~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~4_combout\ = (\req[3]~input_o\ & \grant~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[3]~input_o\,
	datab => \grant~0_combout\,
	combout => \grant~4_combout\);

\grant~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~5_combout\ = (\req[4]~input_o\ & (!\req[5]~input_o\ & (!\req[6]~input_o\ & !\req[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[4]~input_o\,
	datab => \req[5]~input_o\,
	datac => \req[6]~input_o\,
	datad => \req[7]~input_o\,
	combout => \grant~5_combout\);

\grant~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~6_combout\ = (\req[5]~input_o\ & (!\req[6]~input_o\ & !\req[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[5]~input_o\,
	datac => \req[6]~input_o\,
	datad => \req[7]~input_o\,
	combout => \grant~6_combout\);

\grant~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \grant~7_combout\ = (\req[6]~input_o\ & !\req[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[6]~input_o\,
	datad => \req[7]~input_o\,
	combout => \grant~7_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & !\req[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datad => \req[0]~input_o\,
	combout => \Mux0~1_combout\);

ww_grant(0) <= \grant[0]~output_o\;

ww_grant(1) <= \grant[1]~output_o\;

ww_grant(2) <= \grant[2]~output_o\;

ww_grant(3) <= \grant[3]~output_o\;

ww_grant(4) <= \grant[4]~output_o\;

ww_grant(5) <= \grant[5]~output_o\;

ww_grant(6) <= \grant[6]~output_o\;

ww_grant(7) <= \grant[7]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


