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

-- DATE "11/08/2017 16:08:32"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	data_reg_nbit IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	EN : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END data_reg_nbit;

ARCHITECTURE structure OF data_reg_nbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \JKFF_stages:0:JKFF|Qtemp~0_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \JKFF_stages:0:JKFF|Qtemp~1_combout\ : std_logic;
SIGNAL \JKFF_stages:0:JKFF|Qtemp~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \JKFF_stages:1:JKFF|Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF_stages:1:JKFF|Qtemp~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \JKFF_stages:2:JKFF|Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF_stages:2:JKFF|Qtemp~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \JKFF_stages:3:JKFF|Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF_stages:3:JKFF|Qtemp~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_EN <= EN;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF_stages:0:JKFF|Qtemp~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF_stages:1:JKFF|Qtemp~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF_stages:2:JKFF|Qtemp~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF_stages:3:JKFF|Qtemp~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\JKFF_stages:0:JKFF|Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JKFF_stages:0:JKFF|Qtemp~0_combout\ = (\D[0]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datad => \rst~input_o\,
	combout => \JKFF_stages:0:JKFF|Qtemp~0_combout\);

\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

\JKFF_stages:0:JKFF|Qtemp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JKFF_stages:0:JKFF|Qtemp~1_combout\ = (\rst~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \EN~input_o\,
	combout => \JKFF_stages:0:JKFF|Qtemp~1_combout\);

\JKFF_stages:0:JKFF|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \JKFF_stages:0:JKFF|Qtemp~0_combout\,
	ena => \JKFF_stages:0:JKFF|Qtemp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF_stages:0:JKFF|Qtemp~q\);

\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

\JKFF_stages:1:JKFF|Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JKFF_stages:1:JKFF|Qtemp~0_combout\ = (\D[1]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datad => \rst~input_o\,
	combout => \JKFF_stages:1:JKFF|Qtemp~0_combout\);

\JKFF_stages:1:JKFF|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \JKFF_stages:1:JKFF|Qtemp~0_combout\,
	ena => \JKFF_stages:0:JKFF|Qtemp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF_stages:1:JKFF|Qtemp~q\);

\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

\JKFF_stages:2:JKFF|Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JKFF_stages:2:JKFF|Qtemp~0_combout\ = (\D[2]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datad => \rst~input_o\,
	combout => \JKFF_stages:2:JKFF|Qtemp~0_combout\);

\JKFF_stages:2:JKFF|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \JKFF_stages:2:JKFF|Qtemp~0_combout\,
	ena => \JKFF_stages:0:JKFF|Qtemp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF_stages:2:JKFF|Qtemp~q\);

\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

\JKFF_stages:3:JKFF|Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JKFF_stages:3:JKFF|Qtemp~0_combout\ = (\D[3]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datad => \rst~input_o\,
	combout => \JKFF_stages:3:JKFF|Qtemp~0_combout\);

\JKFF_stages:3:JKFF|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \JKFF_stages:3:JKFF|Qtemp~0_combout\,
	ena => \JKFF_stages:0:JKFF|Qtemp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF_stages:3:JKFF|Qtemp~q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


