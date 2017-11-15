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

-- DATE "11/07/2017 19:07:42"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	arbiter_lsb_3bit IS
    PORT (
	req : IN std_logic_vector(2 DOWNTO 0);
	grant : BUFFER std_logic_vector(2 DOWNTO 0);
	Z : BUFFER std_logic
	);
END arbiter_lsb_3bit;

-- Design Ports Information
-- grant[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grant[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grant[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- req[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- req[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- req[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arbiter_lsb_3bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_req : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_grant : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \grant[0]~output_o\ : std_logic;
SIGNAL \grant[1]~output_o\ : std_logic;
SIGNAL \grant[2]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \req[0]~input_o\ : std_logic;
SIGNAL \req[1]~input_o\ : std_logic;
SIGNAL \req[2]~input_o\ : std_logic;
SIGNAL \combo_arb_lsb_3bit|grant[2]~0_combout\ : std_logic;
SIGNAL \combo_arb_lsb_3bit|Z~combout\ : std_logic;
SIGNAL \combo_arb_lsb_3bit|grant\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \combo_arb_lsb_3bit|ALT_INV_Z~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_req <= req;
grant <= ww_grant;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\combo_arb_lsb_3bit|ALT_INV_Z~combout\ <= NOT \combo_arb_lsb_3bit|Z~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y73_N16
\grant[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \req[0]~input_o\,
	devoe => ww_devoe,
	o => \grant[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\grant[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \combo_arb_lsb_3bit|grant\(1),
	devoe => ww_devoe,
	o => \grant[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\grant[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \combo_arb_lsb_3bit|grant[2]~0_combout\,
	devoe => ww_devoe,
	o => \grant[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \combo_arb_lsb_3bit|ALT_INV_Z~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\req[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(0),
	o => \req[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\req[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(1),
	o => \req[1]~input_o\);

-- Location: LCCOMB_X24_Y72_N0
\combo_arb_lsb_3bit|grant[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \combo_arb_lsb_3bit|grant\(1) = (\req[1]~input_o\ & !\req[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \req[1]~input_o\,
	datac => \req[0]~input_o\,
	combout => \combo_arb_lsb_3bit|grant\(1));

-- Location: IOIBUF_X23_Y73_N15
\req[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(2),
	o => \req[2]~input_o\);

-- Location: LCCOMB_X24_Y72_N2
\combo_arb_lsb_3bit|grant[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \combo_arb_lsb_3bit|grant[2]~0_combout\ = (!\req[0]~input_o\ & (!\req[1]~input_o\ & \req[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[0]~input_o\,
	datab => \req[1]~input_o\,
	datac => \req[2]~input_o\,
	combout => \combo_arb_lsb_3bit|grant[2]~0_combout\);

-- Location: LCCOMB_X24_Y72_N28
\combo_arb_lsb_3bit|Z\ : cycloneive_lcell_comb
-- Equation(s):
-- \combo_arb_lsb_3bit|Z~combout\ = (\req[0]~input_o\) # ((\req[1]~input_o\) # (\req[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[0]~input_o\,
	datab => \req[1]~input_o\,
	datac => \req[2]~input_o\,
	combout => \combo_arb_lsb_3bit|Z~combout\);

ww_grant(0) <= \grant[0]~output_o\;

ww_grant(1) <= \grant[1]~output_o\;

ww_grant(2) <= \grant[2]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


