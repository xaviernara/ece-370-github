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

-- DATE "11/15/2017 16:48:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	super_reg_nbit IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rst : IN std_logic;
	load : IN std_logic;
	op : IN std_logic_vector(2 DOWNTO 0);
	D : IN std_logic_vector(2 DOWNTO 0);
	Q : OUT std_logic_vector(2 DOWNTO 0);
	SLout : OUT std_logic;
	SRout : OUT std_logic;
	TC : OUT std_logic
	);
END super_reg_nbit;

ARCHITECTURE structure OF super_reg_nbit IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SLout : std_logic;
SIGNAL ww_SRout : std_logic;
SIGNAL ww_TC : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \SLout~output_o\ : std_logic;
SIGNAL \SRout~output_o\ : std_logic;
SIGNAL \TC~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Qtemp~3_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Qtemp~7_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \Qtemp~4_combout\ : std_logic;
SIGNAL \Qtemp~5_combout\ : std_logic;
SIGNAL \Qtemp~6_combout\ : std_logic;
SIGNAL \Qtemp~0_combout\ : std_logic;
SIGNAL \Qtemp~1_combout\ : std_logic;
SIGNAL \Qtemp~2_combout\ : std_logic;
SIGNAL \TC~0_combout\ : std_logic;
SIGNAL \TC~1_combout\ : std_logic;
SIGNAL Qtemp : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rst <= rst;
ww_load <= load;
ww_op <= op;
ww_D <= D;
Q <= ww_Q;
SLout <= ww_SLout;
SRout <= ww_SRout;
TC <= ww_TC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Qtemp(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Qtemp(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Qtemp(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\SLout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Qtemp(2),
	devoe => ww_devoe,
	o => \SLout~output_o\);

\SRout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Qtemp(0),
	devoe => ww_devoe,
	o => \SRout~output_o\);

\TC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TC~1_combout\,
	devoe => ww_devoe,
	o => \TC~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

\Qtemp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~3_combout\ = (\op[2]~input_o\ & (Qtemp(0) $ (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Qtemp(0),
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Qtemp~3_combout\);

\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op[0]~input_o\ & (Qtemp(0))) # (!\op[0]~input_o\ & ((Qtemp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(0),
	datab => Qtemp(1),
	datad => \op[0]~input_o\,
	combout => \Mux2~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op[1]~input_o\ & (((\op[2]~input_o\)))) # (!\op[1]~input_o\ & ((\op[2]~input_o\ & (\Mux2~0_combout\)) # (!\op[2]~input_o\ & ((Qtemp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \op[2]~input_o\,
	datad => Qtemp(1),
	combout => \Mux0~0_combout\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Qtemp(2) $ (((\op[0]~input_o\ & (!Qtemp(0) & !Qtemp(1))) # (!\op[0]~input_o\ & (Qtemp(0) & Qtemp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(2),
	datab => \op[0]~input_o\,
	datac => Qtemp(0),
	datad => Qtemp(1),
	combout => \Add0~0_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op[1]~input_o\ & ((\Mux0~0_combout\ & ((\Add0~0_combout\))) # (!\Mux0~0_combout\ & (\op[0]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux0~1_combout\);

\Qtemp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~7_combout\ = (\load~input_o\ & (\D[2]~input_o\)) # (!\load~input_o\ & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \Mux0~1_combout\,
	datad => \load~input_o\,
	combout => \Qtemp~7_combout\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\Qtemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Qtemp~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Qtemp(2));

\Qtemp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~4_combout\ = (\op[2]~input_o\ & (\op[0]~input_o\ & (Qtemp(2) $ (!Qtemp(0))))) # (!\op[2]~input_o\ & (((Qtemp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(2),
	datab => Qtemp(0),
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Qtemp~4_combout\);

\Qtemp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~5_combout\ = (\op[1]~input_o\ & (Qtemp(1))) # (!\op[1]~input_o\ & ((\Qtemp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(1),
	datab => \op[1]~input_o\,
	datac => \Qtemp~4_combout\,
	combout => \Qtemp~5_combout\);

\Qtemp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~6_combout\ = (\load~input_o\ & (\D[1]~input_o\)) # (!\load~input_o\ & ((\Qtemp~3_combout\ $ (\Qtemp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \load~input_o\,
	datac => \Qtemp~3_combout\,
	datad => \Qtemp~5_combout\,
	combout => \Qtemp~6_combout\);

\Qtemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Qtemp~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Qtemp(1));

\Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~0_combout\ = (\op[0]~input_o\ & ((Qtemp(1)) # ((!\op[2]~input_o\)))) # (!\op[0]~input_o\ & (((Qtemp(2) & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(1),
	datab => Qtemp(2),
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Qtemp~0_combout\);

\Qtemp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~1_combout\ = (\op[1]~input_o\ & (Qtemp(0) $ ((\op[2]~input_o\)))) # (!\op[1]~input_o\ & (((\Qtemp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => Qtemp(0),
	datac => \op[2]~input_o\,
	datad => \Qtemp~0_combout\,
	combout => \Qtemp~1_combout\);

\Qtemp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~2_combout\ = (\load~input_o\ & (\D[0]~input_o\)) # (!\load~input_o\ & ((\Qtemp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \D[0]~input_o\,
	datac => \Qtemp~1_combout\,
	combout => \Qtemp~2_combout\);

\Qtemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Qtemp~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Qtemp(0));

\TC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TC~0_combout\ = (Qtemp(0) & (Qtemp(1) & (Qtemp(2) & !\op[0]~input_o\))) # (!Qtemp(0) & (!Qtemp(1) & (!Qtemp(2) & \op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Qtemp(0),
	datab => Qtemp(1),
	datac => Qtemp(2),
	datad => \op[0]~input_o\,
	combout => \TC~0_combout\);

\TC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TC~1_combout\ = (\TC~0_combout\ & (\op[1]~input_o\ & \op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC~0_combout\,
	datab => \op[1]~input_o\,
	datac => \op[2]~input_o\,
	combout => \TC~1_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_SLout <= \SLout~output_o\;

ww_SRout <= \SRout~output_o\;

ww_TC <= \TC~output_o\;
END structure;


