-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/19/2023 20:31:24"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	coso IS
    PORT (
	Clk : IN std_logic;
	Up : IN std_logic;
	Uni : BUFFER std_logic_vector(6 DOWNTO 0);
	Dec : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END coso;

-- Design Ports Information
-- Uni[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Up	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF coso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Up : std_logic;
SIGNAL ww_Uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(6 DOWNTO 0);
SIGNAL \L0|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Uni[0]~output_o\ : std_logic;
SIGNAL \Uni[1]~output_o\ : std_logic;
SIGNAL \Uni[2]~output_o\ : std_logic;
SIGNAL \Uni[3]~output_o\ : std_logic;
SIGNAL \Uni[4]~output_o\ : std_logic;
SIGNAL \Uni[5]~output_o\ : std_logic;
SIGNAL \Uni[6]~output_o\ : std_logic;
SIGNAL \Dec[0]~output_o\ : std_logic;
SIGNAL \Dec[1]~output_o\ : std_logic;
SIGNAL \Dec[2]~output_o\ : std_logic;
SIGNAL \Dec[3]~output_o\ : std_logic;
SIGNAL \Dec[4]~output_o\ : std_logic;
SIGNAL \Dec[5]~output_o\ : std_logic;
SIGNAL \Dec[6]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \L0|Add0~0_combout\ : std_logic;
SIGNAL \L0|Add0~1\ : std_logic;
SIGNAL \L0|Add0~2_combout\ : std_logic;
SIGNAL \L0|Add0~3\ : std_logic;
SIGNAL \L0|Add0~4_combout\ : std_logic;
SIGNAL \L0|Add0~5\ : std_logic;
SIGNAL \L0|Add0~6_combout\ : std_logic;
SIGNAL \L0|Add0~7\ : std_logic;
SIGNAL \L0|Add0~8_combout\ : std_logic;
SIGNAL \L0|Add0~9\ : std_logic;
SIGNAL \L0|Add0~10_combout\ : std_logic;
SIGNAL \L0|Add0~11\ : std_logic;
SIGNAL \L0|Add0~12_combout\ : std_logic;
SIGNAL \L0|count2~12_combout\ : std_logic;
SIGNAL \L0|Add0~13\ : std_logic;
SIGNAL \L0|Add0~14_combout\ : std_logic;
SIGNAL \L0|Add0~15\ : std_logic;
SIGNAL \L0|Add0~16_combout\ : std_logic;
SIGNAL \L0|Add0~17\ : std_logic;
SIGNAL \L0|Add0~18_combout\ : std_logic;
SIGNAL \L0|Add0~19\ : std_logic;
SIGNAL \L0|Add0~20_combout\ : std_logic;
SIGNAL \L0|Add0~21\ : std_logic;
SIGNAL \L0|Add0~22_combout\ : std_logic;
SIGNAL \L0|count2~11_combout\ : std_logic;
SIGNAL \L0|Add0~23\ : std_logic;
SIGNAL \L0|Add0~24_combout\ : std_logic;
SIGNAL \L0|count2~10_combout\ : std_logic;
SIGNAL \L0|Add0~25\ : std_logic;
SIGNAL \L0|Add0~26_combout\ : std_logic;
SIGNAL \L0|count2~9_combout\ : std_logic;
SIGNAL \L0|Add0~27\ : std_logic;
SIGNAL \L0|Add0~28_combout\ : std_logic;
SIGNAL \L0|count2~8_combout\ : std_logic;
SIGNAL \L0|Add0~29\ : std_logic;
SIGNAL \L0|Add0~30_combout\ : std_logic;
SIGNAL \L0|Add0~31\ : std_logic;
SIGNAL \L0|Add0~32_combout\ : std_logic;
SIGNAL \L0|count2~7_combout\ : std_logic;
SIGNAL \L0|Add0~33\ : std_logic;
SIGNAL \L0|Add0~34_combout\ : std_logic;
SIGNAL \L0|Add0~35\ : std_logic;
SIGNAL \L0|Add0~36_combout\ : std_logic;
SIGNAL \L0|count2~6_combout\ : std_logic;
SIGNAL \L0|Add0~37\ : std_logic;
SIGNAL \L0|Add0~38_combout\ : std_logic;
SIGNAL \L0|count2~5_combout\ : std_logic;
SIGNAL \L0|Add0~39\ : std_logic;
SIGNAL \L0|Add0~40_combout\ : std_logic;
SIGNAL \L0|count2~4_combout\ : std_logic;
SIGNAL \L0|Add0~41\ : std_logic;
SIGNAL \L0|Add0~42_combout\ : std_logic;
SIGNAL \L0|count2~3_combout\ : std_logic;
SIGNAL \L0|Add0~43\ : std_logic;
SIGNAL \L0|Add0~44_combout\ : std_logic;
SIGNAL \L0|count2~2_combout\ : std_logic;
SIGNAL \L0|Add0~45\ : std_logic;
SIGNAL \L0|Add0~46_combout\ : std_logic;
SIGNAL \L0|Add0~47\ : std_logic;
SIGNAL \L0|Add0~48_combout\ : std_logic;
SIGNAL \L0|Equal0~0_combout\ : std_logic;
SIGNAL \L0|Equal0~1_combout\ : std_logic;
SIGNAL \L0|Equal0~3_combout\ : std_logic;
SIGNAL \L0|Equal0~2_combout\ : std_logic;
SIGNAL \L0|Equal0~4_combout\ : std_logic;
SIGNAL \L0|Equal0~5_combout\ : std_logic;
SIGNAL \L0|Equal0~6_combout\ : std_logic;
SIGNAL \L0|Equal0~7_combout\ : std_logic;
SIGNAL \L0|count2~13_combout\ : std_logic;
SIGNAL \L0|Add0~49\ : std_logic;
SIGNAL \L0|Add0~50_combout\ : std_logic;
SIGNAL \L0|Equal0~8_combout\ : std_logic;
SIGNAL \L0|out2~0_combout\ : std_logic;
SIGNAL \L0|out2~feeder_combout\ : std_logic;
SIGNAL \L0|out2~q\ : std_logic;
SIGNAL \L0|out2~clkctrl_outclk\ : std_logic;
SIGNAL \L1|Cont[0]~6_combout\ : std_logic;
SIGNAL \L1|Cont[3]~15\ : std_logic;
SIGNAL \L1|Cont[4]~16_combout\ : std_logic;
SIGNAL \Up~input_o\ : std_logic;
SIGNAL \L1|Cont[4]~17\ : std_logic;
SIGNAL \L1|Cont[5]~18_combout\ : std_logic;
SIGNAL \L1|Cont[5]~10_combout\ : std_logic;
SIGNAL \L1|Cont[5]~11_combout\ : std_logic;
SIGNAL \L1|Cont[0]~7\ : std_logic;
SIGNAL \L1|Cont[1]~8_combout\ : std_logic;
SIGNAL \L1|Cont[1]~9\ : std_logic;
SIGNAL \L1|Cont[2]~12_combout\ : std_logic;
SIGNAL \L1|Cont[2]~13\ : std_logic;
SIGNAL \L1|Cont[3]~14_combout\ : std_logic;
SIGNAL \L1|Add1~0_combout\ : std_logic;
SIGNAL \L1|Conta~5_combout\ : std_logic;
SIGNAL \L1|Add1~1\ : std_logic;
SIGNAL \L1|Add1~2_combout\ : std_logic;
SIGNAL \L1|Conta~0_combout\ : std_logic;
SIGNAL \L1|Equal1~1_combout\ : std_logic;
SIGNAL \L1|Add1~3\ : std_logic;
SIGNAL \L1|Add1~4_combout\ : std_logic;
SIGNAL \L1|Conta~1_combout\ : std_logic;
SIGNAL \L1|Add1~5\ : std_logic;
SIGNAL \L1|Add1~7\ : std_logic;
SIGNAL \L1|Add1~8_combout\ : std_logic;
SIGNAL \L1|Conta~4_combout\ : std_logic;
SIGNAL \L1|Add1~9\ : std_logic;
SIGNAL \L1|Add1~10_combout\ : std_logic;
SIGNAL \L1|Conta~3_combout\ : std_logic;
SIGNAL \L1|Equal1~0_combout\ : std_logic;
SIGNAL \L1|Add1~6_combout\ : std_logic;
SIGNAL \L1|Conta~2_combout\ : std_logic;
SIGNAL \L1|Q[3]~2_combout\ : std_logic;
SIGNAL \L1|Q[5]~3_combout\ : std_logic;
SIGNAL \L1|Q[1]~0_combout\ : std_logic;
SIGNAL \L1|Q[2]~1_combout\ : std_logic;
SIGNAL \L2|Mux5~1_combout\ : std_logic;
SIGNAL \L1|Q[4]~4_combout\ : std_logic;
SIGNAL \L2|Mux5~0_combout\ : std_logic;
SIGNAL \L2|Mux5~2_combout\ : std_logic;
SIGNAL \L2|Mux3~1_combout\ : std_logic;
SIGNAL \L2|Mux3~0_combout\ : std_logic;
SIGNAL \L2|Mux3~2_combout\ : std_logic;
SIGNAL \L2|Mux4~1_combout\ : std_logic;
SIGNAL \L2|Mux4~0_combout\ : std_logic;
SIGNAL \L2|Mux4~2_combout\ : std_logic;
SIGNAL \L3|Mux6~0_combout\ : std_logic;
SIGNAL \L2|Mux6~0_combout\ : std_logic;
SIGNAL \L2|Mux6~1_combout\ : std_logic;
SIGNAL \L3|Mux5~0_combout\ : std_logic;
SIGNAL \L3|Mux4~0_combout\ : std_logic;
SIGNAL \L3|Mux3~0_combout\ : std_logic;
SIGNAL \L3|Mux2~0_combout\ : std_logic;
SIGNAL \L3|Mux1~0_combout\ : std_logic;
SIGNAL \L3|Mux0~0_combout\ : std_logic;
SIGNAL \L2|Mux1~0_combout\ : std_logic;
SIGNAL \L2|Mux0~0_combout\ : std_logic;
SIGNAL \L4|Mux3~0_combout\ : std_logic;
SIGNAL \L2|Mux2~1_combout\ : std_logic;
SIGNAL \L2|Mux2~0_combout\ : std_logic;
SIGNAL \L2|Mux2~2_combout\ : std_logic;
SIGNAL \L4|Mux5~0_combout\ : std_logic;
SIGNAL \L4|Mux4~0_combout\ : std_logic;
SIGNAL \L4|Mux3~1_combout\ : std_logic;
SIGNAL \L4|Mux2~0_combout\ : std_logic;
SIGNAL \L4|Mux1~0_combout\ : std_logic;
SIGNAL \L4|Mux0~0_combout\ : std_logic;
SIGNAL \L1|Cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \L1|Conta\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \L0|count2\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \L4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \L3|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Up <= Up;
Uni <= ww_Uni;
Dec <= ww_Dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\L0|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \L0|out2~q\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\L4|ALT_INV_Mux1~0_combout\ <= NOT \L4|Mux1~0_combout\;
\L3|ALT_INV_Mux6~0_combout\ <= NOT \L3|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\Uni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Uni[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Uni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Uni[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Uni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Uni[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Uni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Uni[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Uni[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Uni[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Uni[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Uni[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Uni[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Uni[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Dec[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dec[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Dec[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dec[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Dec[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dec[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Dec[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Dec[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Dec[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dec[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Dec[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dec[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Dec[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dec[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G9
\Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: FF_X23_Y22_N21
\L0|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(23));

-- Location: LCCOMB_X23_Y23_N6
\L0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~0_combout\ = \L0|count2\(0) $ (VCC)
-- \L0|Add0~1\ = CARRY(\L0|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(0),
	datad => VCC,
	combout => \L0|Add0~0_combout\,
	cout => \L0|Add0~1\);

-- Location: FF_X23_Y23_N7
\L0|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(0));

-- Location: LCCOMB_X23_Y23_N8
\L0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~2_combout\ = (\L0|count2\(1) & (!\L0|Add0~1\)) # (!\L0|count2\(1) & ((\L0|Add0~1\) # (GND)))
-- \L0|Add0~3\ = CARRY((!\L0|Add0~1\) # (!\L0|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(1),
	datad => VCC,
	cin => \L0|Add0~1\,
	combout => \L0|Add0~2_combout\,
	cout => \L0|Add0~3\);

-- Location: FF_X23_Y23_N9
\L0|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(1));

-- Location: LCCOMB_X23_Y23_N10
\L0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~4_combout\ = (\L0|count2\(2) & (\L0|Add0~3\ $ (GND))) # (!\L0|count2\(2) & (!\L0|Add0~3\ & VCC))
-- \L0|Add0~5\ = CARRY((\L0|count2\(2) & !\L0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(2),
	datad => VCC,
	cin => \L0|Add0~3\,
	combout => \L0|Add0~4_combout\,
	cout => \L0|Add0~5\);

-- Location: FF_X23_Y23_N11
\L0|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(2));

-- Location: LCCOMB_X23_Y23_N12
\L0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~6_combout\ = (\L0|count2\(3) & (!\L0|Add0~5\)) # (!\L0|count2\(3) & ((\L0|Add0~5\) # (GND)))
-- \L0|Add0~7\ = CARRY((!\L0|Add0~5\) # (!\L0|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(3),
	datad => VCC,
	cin => \L0|Add0~5\,
	combout => \L0|Add0~6_combout\,
	cout => \L0|Add0~7\);

-- Location: FF_X23_Y23_N13
\L0|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(3));

-- Location: LCCOMB_X23_Y23_N14
\L0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~8_combout\ = (\L0|count2\(4) & (\L0|Add0~7\ $ (GND))) # (!\L0|count2\(4) & (!\L0|Add0~7\ & VCC))
-- \L0|Add0~9\ = CARRY((\L0|count2\(4) & !\L0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(4),
	datad => VCC,
	cin => \L0|Add0~7\,
	combout => \L0|Add0~8_combout\,
	cout => \L0|Add0~9\);

-- Location: FF_X23_Y23_N15
\L0|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(4));

-- Location: LCCOMB_X23_Y23_N16
\L0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~10_combout\ = (\L0|count2\(5) & (!\L0|Add0~9\)) # (!\L0|count2\(5) & ((\L0|Add0~9\) # (GND)))
-- \L0|Add0~11\ = CARRY((!\L0|Add0~9\) # (!\L0|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(5),
	datad => VCC,
	cin => \L0|Add0~9\,
	combout => \L0|Add0~10_combout\,
	cout => \L0|Add0~11\);

-- Location: FF_X23_Y23_N17
\L0|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(5));

-- Location: LCCOMB_X23_Y23_N18
\L0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~12_combout\ = (\L0|count2\(6) & (\L0|Add0~11\ $ (GND))) # (!\L0|count2\(6) & (!\L0|Add0~11\ & VCC))
-- \L0|Add0~13\ = CARRY((\L0|count2\(6) & !\L0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(6),
	datad => VCC,
	cin => \L0|Add0~11\,
	combout => \L0|Add0~12_combout\,
	cout => \L0|Add0~13\);

-- Location: LCCOMB_X23_Y23_N0
\L0|count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~12_combout\ = (\L0|Add0~12_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~12_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~12_combout\);

-- Location: FF_X23_Y23_N1
\L0|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(6));

-- Location: LCCOMB_X23_Y23_N20
\L0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~14_combout\ = (\L0|count2\(7) & (!\L0|Add0~13\)) # (!\L0|count2\(7) & ((\L0|Add0~13\) # (GND)))
-- \L0|Add0~15\ = CARRY((!\L0|Add0~13\) # (!\L0|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(7),
	datad => VCC,
	cin => \L0|Add0~13\,
	combout => \L0|Add0~14_combout\,
	cout => \L0|Add0~15\);

-- Location: FF_X23_Y23_N21
\L0|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(7));

-- Location: LCCOMB_X23_Y23_N22
\L0|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~16_combout\ = (\L0|count2\(8) & (\L0|Add0~15\ $ (GND))) # (!\L0|count2\(8) & (!\L0|Add0~15\ & VCC))
-- \L0|Add0~17\ = CARRY((\L0|count2\(8) & !\L0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(8),
	datad => VCC,
	cin => \L0|Add0~15\,
	combout => \L0|Add0~16_combout\,
	cout => \L0|Add0~17\);

-- Location: FF_X23_Y23_N23
\L0|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(8));

-- Location: LCCOMB_X23_Y23_N24
\L0|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~18_combout\ = (\L0|count2\(9) & (!\L0|Add0~17\)) # (!\L0|count2\(9) & ((\L0|Add0~17\) # (GND)))
-- \L0|Add0~19\ = CARRY((!\L0|Add0~17\) # (!\L0|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(9),
	datad => VCC,
	cin => \L0|Add0~17\,
	combout => \L0|Add0~18_combout\,
	cout => \L0|Add0~19\);

-- Location: FF_X23_Y23_N25
\L0|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(9));

-- Location: LCCOMB_X23_Y23_N26
\L0|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~20_combout\ = (\L0|count2\(10) & (\L0|Add0~19\ $ (GND))) # (!\L0|count2\(10) & (!\L0|Add0~19\ & VCC))
-- \L0|Add0~21\ = CARRY((\L0|count2\(10) & !\L0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(10),
	datad => VCC,
	cin => \L0|Add0~19\,
	combout => \L0|Add0~20_combout\,
	cout => \L0|Add0~21\);

-- Location: FF_X23_Y23_N27
\L0|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(10));

-- Location: LCCOMB_X23_Y23_N28
\L0|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~22_combout\ = (\L0|count2\(11) & (!\L0|Add0~21\)) # (!\L0|count2\(11) & ((\L0|Add0~21\) # (GND)))
-- \L0|Add0~23\ = CARRY((!\L0|Add0~21\) # (!\L0|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(11),
	datad => VCC,
	cin => \L0|Add0~21\,
	combout => \L0|Add0~22_combout\,
	cout => \L0|Add0~23\);

-- Location: LCCOMB_X22_Y22_N22
\L0|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~11_combout\ = (\L0|Add0~22_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~22_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~11_combout\);

-- Location: FF_X22_Y22_N23
\L0|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(11));

-- Location: LCCOMB_X23_Y23_N30
\L0|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~24_combout\ = (\L0|count2\(12) & (\L0|Add0~23\ $ (GND))) # (!\L0|count2\(12) & (!\L0|Add0~23\ & VCC))
-- \L0|Add0~25\ = CARRY((\L0|count2\(12) & !\L0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(12),
	datad => VCC,
	cin => \L0|Add0~23\,
	combout => \L0|Add0~24_combout\,
	cout => \L0|Add0~25\);

-- Location: LCCOMB_X24_Y22_N0
\L0|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~10_combout\ = (\L0|Add0~24_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~24_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~10_combout\);

-- Location: FF_X24_Y22_N1
\L0|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(12));

-- Location: LCCOMB_X23_Y22_N0
\L0|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~26_combout\ = (\L0|count2\(13) & (!\L0|Add0~25\)) # (!\L0|count2\(13) & ((\L0|Add0~25\) # (GND)))
-- \L0|Add0~27\ = CARRY((!\L0|Add0~25\) # (!\L0|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(13),
	datad => VCC,
	cin => \L0|Add0~25\,
	combout => \L0|Add0~26_combout\,
	cout => \L0|Add0~27\);

-- Location: LCCOMB_X23_Y22_N28
\L0|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~9_combout\ = (\L0|Add0~26_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~26_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~9_combout\);

-- Location: FF_X23_Y22_N29
\L0|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(13));

-- Location: LCCOMB_X23_Y22_N2
\L0|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~28_combout\ = (\L0|count2\(14) & (\L0|Add0~27\ $ (GND))) # (!\L0|count2\(14) & (!\L0|Add0~27\ & VCC))
-- \L0|Add0~29\ = CARRY((\L0|count2\(14) & !\L0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(14),
	datad => VCC,
	cin => \L0|Add0~27\,
	combout => \L0|Add0~28_combout\,
	cout => \L0|Add0~29\);

-- Location: LCCOMB_X23_Y22_N26
\L0|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~8_combout\ = (\L0|Add0~28_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~28_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~8_combout\);

-- Location: FF_X23_Y22_N27
\L0|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(14));

-- Location: LCCOMB_X23_Y22_N4
\L0|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~30_combout\ = (\L0|count2\(15) & (!\L0|Add0~29\)) # (!\L0|count2\(15) & ((\L0|Add0~29\) # (GND)))
-- \L0|Add0~31\ = CARRY((!\L0|Add0~29\) # (!\L0|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(15),
	datad => VCC,
	cin => \L0|Add0~29\,
	combout => \L0|Add0~30_combout\,
	cout => \L0|Add0~31\);

-- Location: FF_X23_Y22_N5
\L0|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(15));

-- Location: LCCOMB_X23_Y22_N6
\L0|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~32_combout\ = (\L0|count2\(16) & (\L0|Add0~31\ $ (GND))) # (!\L0|count2\(16) & (!\L0|Add0~31\ & VCC))
-- \L0|Add0~33\ = CARRY((\L0|count2\(16) & !\L0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(16),
	datad => VCC,
	cin => \L0|Add0~31\,
	combout => \L0|Add0~32_combout\,
	cout => \L0|Add0~33\);

-- Location: LCCOMB_X22_Y22_N2
\L0|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~7_combout\ = (\L0|Add0~32_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~32_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~7_combout\);

-- Location: FF_X22_Y22_N3
\L0|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(16));

-- Location: LCCOMB_X23_Y22_N8
\L0|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~34_combout\ = (\L0|count2\(17) & (!\L0|Add0~33\)) # (!\L0|count2\(17) & ((\L0|Add0~33\) # (GND)))
-- \L0|Add0~35\ = CARRY((!\L0|Add0~33\) # (!\L0|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(17),
	datad => VCC,
	cin => \L0|Add0~33\,
	combout => \L0|Add0~34_combout\,
	cout => \L0|Add0~35\);

-- Location: FF_X23_Y22_N9
\L0|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(17));

-- Location: LCCOMB_X23_Y22_N10
\L0|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~36_combout\ = (\L0|count2\(18) & (\L0|Add0~35\ $ (GND))) # (!\L0|count2\(18) & (!\L0|Add0~35\ & VCC))
-- \L0|Add0~37\ = CARRY((\L0|count2\(18) & !\L0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(18),
	datad => VCC,
	cin => \L0|Add0~35\,
	combout => \L0|Add0~36_combout\,
	cout => \L0|Add0~37\);

-- Location: LCCOMB_X22_Y22_N12
\L0|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~6_combout\ = (\L0|Add0~36_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~36_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~6_combout\);

-- Location: FF_X22_Y22_N13
\L0|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(18));

-- Location: LCCOMB_X23_Y22_N12
\L0|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~38_combout\ = (\L0|count2\(19) & (!\L0|Add0~37\)) # (!\L0|count2\(19) & ((\L0|Add0~37\) # (GND)))
-- \L0|Add0~39\ = CARRY((!\L0|Add0~37\) # (!\L0|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(19),
	datad => VCC,
	cin => \L0|Add0~37\,
	combout => \L0|Add0~38_combout\,
	cout => \L0|Add0~39\);

-- Location: LCCOMB_X22_Y22_N16
\L0|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~5_combout\ = (\L0|Add0~38_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~38_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~5_combout\);

-- Location: FF_X22_Y22_N17
\L0|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(19));

-- Location: LCCOMB_X23_Y22_N14
\L0|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~40_combout\ = (\L0|count2\(20) & (\L0|Add0~39\ $ (GND))) # (!\L0|count2\(20) & (!\L0|Add0~39\ & VCC))
-- \L0|Add0~41\ = CARRY((\L0|count2\(20) & !\L0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(20),
	datad => VCC,
	cin => \L0|Add0~39\,
	combout => \L0|Add0~40_combout\,
	cout => \L0|Add0~41\);

-- Location: LCCOMB_X22_Y22_N8
\L0|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~4_combout\ = (\L0|Add0~40_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~40_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~4_combout\);

-- Location: FF_X22_Y22_N9
\L0|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(20));

-- Location: LCCOMB_X23_Y22_N16
\L0|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~42_combout\ = (\L0|count2\(21) & (!\L0|Add0~41\)) # (!\L0|count2\(21) & ((\L0|Add0~41\) # (GND)))
-- \L0|Add0~43\ = CARRY((!\L0|Add0~41\) # (!\L0|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(21),
	datad => VCC,
	cin => \L0|Add0~41\,
	combout => \L0|Add0~42_combout\,
	cout => \L0|Add0~43\);

-- Location: LCCOMB_X22_Y22_N10
\L0|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~3_combout\ = (\L0|Add0~42_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~42_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~3_combout\);

-- Location: FF_X22_Y22_N11
\L0|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(21));

-- Location: LCCOMB_X23_Y22_N18
\L0|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~44_combout\ = (\L0|count2\(22) & (\L0|Add0~43\ $ (GND))) # (!\L0|count2\(22) & (!\L0|Add0~43\ & VCC))
-- \L0|Add0~45\ = CARRY((\L0|count2\(22) & !\L0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(22),
	datad => VCC,
	cin => \L0|Add0~43\,
	combout => \L0|Add0~44_combout\,
	cout => \L0|Add0~45\);

-- Location: LCCOMB_X22_Y22_N26
\L0|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~2_combout\ = (\L0|Add0~44_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~44_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~2_combout\);

-- Location: FF_X22_Y22_N27
\L0|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(22));

-- Location: LCCOMB_X23_Y22_N20
\L0|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~46_combout\ = (\L0|count2\(23) & (!\L0|Add0~45\)) # (!\L0|count2\(23) & ((\L0|Add0~45\) # (GND)))
-- \L0|Add0~47\ = CARRY((!\L0|Add0~45\) # (!\L0|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(23),
	datad => VCC,
	cin => \L0|Add0~45\,
	combout => \L0|Add0~46_combout\,
	cout => \L0|Add0~47\);

-- Location: FF_X23_Y22_N25
\L0|count2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(25));

-- Location: LCCOMB_X23_Y22_N22
\L0|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~48_combout\ = (\L0|count2\(24) & (\L0|Add0~47\ $ (GND))) # (!\L0|count2\(24) & (!\L0|Add0~47\ & VCC))
-- \L0|Add0~49\ = CARRY((\L0|count2\(24) & !\L0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(24),
	datad => VCC,
	cin => \L0|Add0~47\,
	combout => \L0|Add0~48_combout\,
	cout => \L0|Add0~49\);

-- Location: LCCOMB_X23_Y22_N30
\L0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~0_combout\ = (\L0|Add0~24_combout\ & (\L0|Add0~26_combout\ & (!\L0|Add0~30_combout\ & \L0|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~24_combout\,
	datab => \L0|Add0~26_combout\,
	datac => \L0|Add0~30_combout\,
	datad => \L0|Add0~28_combout\,
	combout => \L0|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y23_N2
\L0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~1_combout\ = (!\L0|Add0~0_combout\ & (!\L0|Add0~4_combout\ & (!\L0|Add0~6_combout\ & !\L0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~0_combout\,
	datab => \L0|Add0~4_combout\,
	datac => \L0|Add0~6_combout\,
	datad => \L0|Add0~2_combout\,
	combout => \L0|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y23_N4
\L0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~3_combout\ = (!\L0|Add0~16_combout\ & (!\L0|Add0~18_combout\ & (!\L0|Add0~20_combout\ & \L0|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~16_combout\,
	datab => \L0|Add0~18_combout\,
	datac => \L0|Add0~20_combout\,
	datad => \L0|Add0~22_combout\,
	combout => \L0|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y22_N30
\L0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~2_combout\ = (!\L0|Add0~8_combout\ & (!\L0|Add0~14_combout\ & (!\L0|Add0~10_combout\ & \L0|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~8_combout\,
	datab => \L0|Add0~14_combout\,
	datac => \L0|Add0~10_combout\,
	datad => \L0|Add0~12_combout\,
	combout => \L0|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y22_N28
\L0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~4_combout\ = (\L0|Add0~32_combout\ & (\L0|Equal0~1_combout\ & (\L0|Equal0~3_combout\ & \L0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~32_combout\,
	datab => \L0|Equal0~1_combout\,
	datac => \L0|Equal0~3_combout\,
	datad => \L0|Equal0~2_combout\,
	combout => \L0|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y22_N18
\L0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~5_combout\ = (\L0|Add0~36_combout\ & (!\L0|Add0~34_combout\ & (\L0|Equal0~0_combout\ & \L0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~36_combout\,
	datab => \L0|Add0~34_combout\,
	datac => \L0|Equal0~0_combout\,
	datad => \L0|Equal0~4_combout\,
	combout => \L0|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y22_N20
\L0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~6_combout\ = (\L0|Add0~42_combout\ & (\L0|Add0~40_combout\ & (\L0|Add0~38_combout\ & \L0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~42_combout\,
	datab => \L0|Add0~40_combout\,
	datac => \L0|Add0~38_combout\,
	datad => \L0|Equal0~5_combout\,
	combout => \L0|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y22_N6
\L0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~7_combout\ = (\L0|Add0~44_combout\ & \L0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~44_combout\,
	datad => \L0|Equal0~6_combout\,
	combout => \L0|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y22_N0
\L0|count2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~13_combout\ = (\L0|Add0~48_combout\ & ((\L0|Add0~50_combout\) # ((\L0|Add0~46_combout\) # (!\L0|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~50_combout\,
	datab => \L0|Add0~48_combout\,
	datac => \L0|Add0~46_combout\,
	datad => \L0|Equal0~7_combout\,
	combout => \L0|count2~13_combout\);

-- Location: FF_X22_Y22_N1
\L0|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|count2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(24));

-- Location: LCCOMB_X23_Y22_N24
\L0|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~50_combout\ = \L0|Add0~49\ $ (\L0|count2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L0|count2\(25),
	cin => \L0|Add0~49\,
	combout => \L0|Add0~50_combout\);

-- Location: LCCOMB_X22_Y22_N24
\L0|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~8_combout\ = (!\L0|Add0~46_combout\ & (!\L0|Add0~50_combout\ & (\L0|Add0~48_combout\ & \L0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~46_combout\,
	datab => \L0|Add0~50_combout\,
	datac => \L0|Add0~48_combout\,
	datad => \L0|Equal0~7_combout\,
	combout => \L0|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y22_N14
\L0|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|out2~0_combout\ = \L0|out2~q\ $ (\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|out2~q\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|out2~0_combout\);

-- Location: LCCOMB_X22_Y22_N4
\L0|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|out2~feeder_combout\ = \L0|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|out2~0_combout\,
	combout => \L0|out2~feeder_combout\);

-- Location: FF_X22_Y22_N5
\L0|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \L0|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|out2~q\);

-- Location: CLKCTRL_G12
\L0|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \L0|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \L0|out2~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N14
\L1|Cont[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[0]~6_combout\ = \L1|Cont\(0) $ (VCC)
-- \L1|Cont[0]~7\ = CARRY(\L1|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(0),
	datad => VCC,
	combout => \L1|Cont[0]~6_combout\,
	cout => \L1|Cont[0]~7\);

-- Location: LCCOMB_X22_Y28_N20
\L1|Cont[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[3]~14_combout\ = (\L1|Cont\(3) & (!\L1|Cont[2]~13\)) # (!\L1|Cont\(3) & ((\L1|Cont[2]~13\) # (GND)))
-- \L1|Cont[3]~15\ = CARRY((!\L1|Cont[2]~13\) # (!\L1|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(3),
	datad => VCC,
	cin => \L1|Cont[2]~13\,
	combout => \L1|Cont[3]~14_combout\,
	cout => \L1|Cont[3]~15\);

-- Location: LCCOMB_X22_Y28_N22
\L1|Cont[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[4]~16_combout\ = (\L1|Cont\(4) & (\L1|Cont[3]~15\ $ (GND))) # (!\L1|Cont\(4) & (!\L1|Cont[3]~15\ & VCC))
-- \L1|Cont[4]~17\ = CARRY((\L1|Cont\(4) & !\L1|Cont[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(4),
	datad => VCC,
	cin => \L1|Cont[3]~15\,
	combout => \L1|Cont[4]~16_combout\,
	cout => \L1|Cont[4]~17\);

-- Location: FF_X22_Y28_N23
\L1|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[4]~16_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(4));

-- Location: IOIBUF_X0_Y24_N1
\Up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Up,
	o => \Up~input_o\);

-- Location: LCCOMB_X22_Y28_N24
\L1|Cont[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[5]~18_combout\ = \L1|Cont[4]~17\ $ (\L1|Cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L1|Cont\(5),
	cin => \L1|Cont[4]~17\,
	combout => \L1|Cont[5]~18_combout\);

-- Location: FF_X22_Y28_N25
\L1|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[5]~18_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(5));

-- Location: LCCOMB_X22_Y28_N10
\L1|Cont[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[5]~10_combout\ = (((\L1|Cont\(1)) # (!\L1|Cont\(5))) # (!\L1|Cont\(3))) # (!\L1|Cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(2),
	datab => \L1|Cont\(3),
	datac => \L1|Cont\(1),
	datad => \L1|Cont\(5),
	combout => \L1|Cont[5]~10_combout\);

-- Location: LCCOMB_X22_Y28_N0
\L1|Cont[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[5]~11_combout\ = (\Up~input_o\) # ((\L1|Cont\(4) & (!\L1|Cont\(0) & !\L1|Cont[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(4),
	datab => \Up~input_o\,
	datac => \L1|Cont\(0),
	datad => \L1|Cont[5]~10_combout\,
	combout => \L1|Cont[5]~11_combout\);

-- Location: FF_X22_Y28_N15
\L1|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[0]~6_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(0));

-- Location: LCCOMB_X22_Y28_N16
\L1|Cont[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[1]~8_combout\ = (\L1|Cont\(1) & (!\L1|Cont[0]~7\)) # (!\L1|Cont\(1) & ((\L1|Cont[0]~7\) # (GND)))
-- \L1|Cont[1]~9\ = CARRY((!\L1|Cont[0]~7\) # (!\L1|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(1),
	datad => VCC,
	cin => \L1|Cont[0]~7\,
	combout => \L1|Cont[1]~8_combout\,
	cout => \L1|Cont[1]~9\);

-- Location: FF_X22_Y28_N17
\L1|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[1]~8_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(1));

-- Location: LCCOMB_X22_Y28_N18
\L1|Cont[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[2]~12_combout\ = (\L1|Cont\(2) & (\L1|Cont[1]~9\ $ (GND))) # (!\L1|Cont\(2) & (!\L1|Cont[1]~9\ & VCC))
-- \L1|Cont[2]~13\ = CARRY((\L1|Cont\(2) & !\L1|Cont[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(2),
	datad => VCC,
	cin => \L1|Cont[1]~9\,
	combout => \L1|Cont[2]~12_combout\,
	cout => \L1|Cont[2]~13\);

-- Location: FF_X22_Y28_N19
\L1|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[2]~12_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(2));

-- Location: FF_X22_Y28_N21
\L1|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[3]~14_combout\,
	sclr => \L1|Cont[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(3));

-- Location: LCCOMB_X21_Y28_N14
\L1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~0_combout\ = \L1|Conta\(0) $ (GND)
-- \L1|Add1~1\ = CARRY(!\L1|Conta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(0),
	datad => VCC,
	combout => \L1|Add1~0_combout\,
	cout => \L1|Add1~1\);

-- Location: LCCOMB_X21_Y28_N30
\L1|Conta~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~5_combout\ = (!\L1|Add1~0_combout\ & (\Up~input_o\ & ((\L1|Equal1~1_combout\) # (\L1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal1~1_combout\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Add1~0_combout\,
	datad => \Up~input_o\,
	combout => \L1|Conta~5_combout\);

-- Location: FF_X21_Y28_N31
\L1|Conta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(0));

-- Location: LCCOMB_X21_Y28_N16
\L1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~2_combout\ = (\L1|Conta\(1) & (!\L1|Add1~1\)) # (!\L1|Conta\(1) & (\L1|Add1~1\ & VCC))
-- \L1|Add1~3\ = CARRY((\L1|Conta\(1) & !\L1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Conta\(1),
	datad => VCC,
	cin => \L1|Add1~1\,
	combout => \L1|Add1~2_combout\,
	cout => \L1|Add1~3\);

-- Location: LCCOMB_X21_Y28_N28
\L1|Conta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~0_combout\ = (\Up~input_o\ & (!\L1|Add1~2_combout\ & ((\L1|Equal1~0_combout\) # (\L1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Equal1~1_combout\,
	datad => \L1|Add1~2_combout\,
	combout => \L1|Conta~0_combout\);

-- Location: FF_X21_Y28_N29
\L1|Conta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(1));

-- Location: LCCOMB_X21_Y28_N26
\L1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal1~1_combout\ = (!\L1|Conta\(0)) # (!\L1|Conta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L1|Conta\(1),
	datad => \L1|Conta\(0),
	combout => \L1|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y28_N18
\L1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~4_combout\ = (\L1|Conta\(2) & ((GND) # (!\L1|Add1~3\))) # (!\L1|Conta\(2) & (\L1|Add1~3\ $ (GND)))
-- \L1|Add1~5\ = CARRY((\L1|Conta\(2)) # (!\L1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(2),
	datad => VCC,
	cin => \L1|Add1~3\,
	combout => \L1|Add1~4_combout\,
	cout => \L1|Add1~5\);

-- Location: LCCOMB_X21_Y28_N10
\L1|Conta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~1_combout\ = (\Up~input_o\ & (\L1|Add1~4_combout\ & ((\L1|Equal1~0_combout\) # (\L1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Equal1~1_combout\,
	datad => \L1|Add1~4_combout\,
	combout => \L1|Conta~1_combout\);

-- Location: FF_X21_Y28_N11
\L1|Conta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(2));

-- Location: LCCOMB_X21_Y28_N20
\L1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~6_combout\ = (\L1|Conta\(3) & (!\L1|Add1~5\)) # (!\L1|Conta\(3) & (\L1|Add1~5\ & VCC))
-- \L1|Add1~7\ = CARRY((\L1|Conta\(3) & !\L1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Conta\(3),
	datad => VCC,
	cin => \L1|Add1~5\,
	combout => \L1|Add1~6_combout\,
	cout => \L1|Add1~7\);

-- Location: LCCOMB_X21_Y28_N22
\L1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~8_combout\ = (\L1|Conta\(4) & (\L1|Add1~7\ $ (GND))) # (!\L1|Conta\(4) & ((GND) # (!\L1|Add1~7\)))
-- \L1|Add1~9\ = CARRY((!\L1|Add1~7\) # (!\L1|Conta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(4),
	datad => VCC,
	cin => \L1|Add1~7\,
	combout => \L1|Add1~8_combout\,
	cout => \L1|Add1~9\);

-- Location: LCCOMB_X21_Y28_N12
\L1|Conta~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~4_combout\ = (!\L1|Add1~8_combout\ & (\Up~input_o\ & ((\L1|Equal1~1_combout\) # (\L1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal1~1_combout\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Add1~8_combout\,
	datad => \Up~input_o\,
	combout => \L1|Conta~4_combout\);

-- Location: FF_X21_Y28_N13
\L1|Conta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(4));

-- Location: LCCOMB_X21_Y28_N24
\L1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add1~10_combout\ = \L1|Add1~9\ $ (\L1|Conta\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L1|Conta\(5),
	cin => \L1|Add1~9\,
	combout => \L1|Add1~10_combout\);

-- Location: LCCOMB_X21_Y28_N6
\L1|Conta~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~3_combout\ = (\Up~input_o\ & (!\L1|Add1~10_combout\ & ((\L1|Equal1~0_combout\) # (\L1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Equal1~1_combout\,
	datad => \L1|Add1~10_combout\,
	combout => \L1|Conta~3_combout\);

-- Location: FF_X21_Y28_N7
\L1|Conta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(5));

-- Location: LCCOMB_X21_Y28_N8
\L1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal1~0_combout\ = (\L1|Conta\(2)) # (((!\L1|Conta\(5)) # (!\L1|Conta\(3))) # (!\L1|Conta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(2),
	datab => \L1|Conta\(4),
	datac => \L1|Conta\(3),
	datad => \L1|Conta\(5),
	combout => \L1|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y28_N4
\L1|Conta~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Conta~2_combout\ = (\Up~input_o\ & (!\L1|Add1~6_combout\ & ((\L1|Equal1~0_combout\) # (\L1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \L1|Equal1~0_combout\,
	datac => \L1|Equal1~1_combout\,
	datad => \L1|Add1~6_combout\,
	combout => \L1|Conta~2_combout\);

-- Location: FF_X21_Y28_N5
\L1|Conta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Conta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Conta\(3));

-- Location: LCCOMB_X22_Y28_N28
\L1|Q[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Q[3]~2_combout\ = (\Up~input_o\ & ((!\L1|Conta\(3)))) # (!\Up~input_o\ & (\L1|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(3),
	datac => \L1|Conta\(3),
	datad => \Up~input_o\,
	combout => \L1|Q[3]~2_combout\);

-- Location: LCCOMB_X22_Y28_N2
\L1|Q[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Q[5]~3_combout\ = (\Up~input_o\ & ((!\L1|Conta\(5)))) # (!\Up~input_o\ & (\L1|Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(5),
	datac => \L1|Conta\(5),
	datad => \Up~input_o\,
	combout => \L1|Q[5]~3_combout\);

-- Location: LCCOMB_X22_Y28_N12
\L1|Q[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Q[1]~0_combout\ = (\Up~input_o\ & ((!\L1|Conta\(1)))) # (!\Up~input_o\ & (\L1|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(1),
	datac => \L1|Conta\(1),
	datad => \Up~input_o\,
	combout => \L1|Q[1]~0_combout\);

-- Location: LCCOMB_X22_Y28_N6
\L1|Q[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Q[2]~1_combout\ = (\Up~input_o\ & (\L1|Conta\(2))) # (!\Up~input_o\ & ((\L1|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(2),
	datac => \L1|Cont\(2),
	datad => \Up~input_o\,
	combout => \L1|Q[2]~1_combout\);

-- Location: LCCOMB_X26_Y28_N16
\L2|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux5~1_combout\ = (\L1|Q[3]~2_combout\ & ((\L1|Q[2]~1_combout\) # (\L1|Q[5]~3_combout\ $ (!\L1|Q[1]~0_combout\)))) # (!\L1|Q[3]~2_combout\ & ((\L1|Q[5]~3_combout\ & ((\L1|Q[1]~0_combout\) # (!\L1|Q[2]~1_combout\))) # (!\L1|Q[5]~3_combout\ & 
-- (\L1|Q[1]~0_combout\ $ (\L1|Q[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y28_N4
\L1|Q[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Q[4]~4_combout\ = (\Up~input_o\ & (!\L1|Conta\(4))) # (!\Up~input_o\ & ((\L1|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Conta\(4),
	datac => \L1|Cont\(4),
	datad => \Up~input_o\,
	combout => \L1|Q[4]~4_combout\);

-- Location: LCCOMB_X26_Y28_N18
\L2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux5~0_combout\ = (\L1|Q[3]~2_combout\ & ((\L1|Q[5]~3_combout\ & (\L1|Q[1]~0_combout\)) # (!\L1|Q[5]~3_combout\ & (!\L1|Q[1]~0_combout\ & \L1|Q[2]~1_combout\)))) # (!\L1|Q[3]~2_combout\ & (\L1|Q[5]~3_combout\ $ ((\L1|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y28_N6
\L2|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux5~2_combout\ = (\L1|Q[4]~4_combout\ & (!\L2|Mux5~1_combout\)) # (!\L1|Q[4]~4_combout\ & ((\L2|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L2|Mux5~1_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L2|Mux5~0_combout\,
	combout => \L2|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y28_N26
\L2|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux3~1_combout\ = (\L1|Q[3]~2_combout\ & (!\L1|Q[5]~3_combout\ & (!\L1|Q[1]~0_combout\ & !\L1|Q[2]~1_combout\))) # (!\L1|Q[3]~2_combout\ & (\L1|Q[5]~3_combout\ & (\L1|Q[1]~0_combout\ & \L1|Q[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y28_N28
\L2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux3~0_combout\ = (\L1|Q[3]~2_combout\ & ((\L1|Q[5]~3_combout\ & (\L1|Q[1]~0_combout\ & !\L1|Q[2]~1_combout\)) # (!\L1|Q[5]~3_combout\ & (!\L1|Q[1]~0_combout\ & \L1|Q[2]~1_combout\)))) # (!\L1|Q[3]~2_combout\ & (!\L1|Q[2]~1_combout\ & 
-- (\L1|Q[5]~3_combout\ $ (\L1|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\L2|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux3~2_combout\ = (\L1|Q[4]~4_combout\ & ((\L2|Mux3~0_combout\))) # (!\L1|Q[4]~4_combout\ & (\L2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L2|Mux3~0_combout\,
	combout => \L2|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y28_N10
\L2|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux4~1_combout\ = (\L1|Q[3]~2_combout\ & ((\L1|Q[2]~1_combout\) # ((\L1|Q[5]~3_combout\ & \L1|Q[1]~0_combout\)))) # (!\L1|Q[3]~2_combout\ & ((\L1|Q[5]~3_combout\ & ((!\L1|Q[2]~1_combout\) # (!\L1|Q[1]~0_combout\))) # (!\L1|Q[5]~3_combout\ & 
-- ((\L1|Q[1]~0_combout\) # (\L1|Q[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y28_N0
\L2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux4~0_combout\ = (\L1|Q[3]~2_combout\ & (\L1|Q[2]~1_combout\ & ((\L1|Q[5]~3_combout\) # (\L1|Q[1]~0_combout\)))) # (!\L1|Q[3]~2_combout\ & (\L1|Q[2]~1_combout\ $ (((\L1|Q[5]~3_combout\ & \L1|Q[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[3]~2_combout\,
	datab => \L1|Q[5]~3_combout\,
	datac => \L1|Q[1]~0_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\L2|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux4~2_combout\ = (\L1|Q[4]~4_combout\ & (!\L2|Mux4~1_combout\)) # (!\L1|Q[4]~4_combout\ & ((\L2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux4~1_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L2|Mux4~0_combout\,
	combout => \L2|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y28_N2
\L3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux6~0_combout\ = \L2|Mux3~2_combout\ $ (((\L2|Mux5~2_combout\) # (\L2|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y28_N30
\L2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux6~0_combout\ = (\L1|Q[2]~1_combout\ & (\L1|Q[4]~4_combout\ & (\L1|Q[3]~2_combout\ & \L1|Q[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[2]~1_combout\,
	datab => \L1|Q[4]~4_combout\,
	datac => \L1|Q[3]~2_combout\,
	datad => \L1|Q[5]~3_combout\,
	combout => \L2|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y28_N8
\L2|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux6~1_combout\ = (!\L2|Mux6~0_combout\ & ((\Up~input_o\ & (!\L1|Conta\(0))) # (!\Up~input_o\ & ((\L1|Cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux6~0_combout\,
	datab => \L1|Conta\(0),
	datac => \L1|Cont\(0),
	datad => \Up~input_o\,
	combout => \L2|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y28_N8
\L3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux5~0_combout\ = (\L2|Mux6~1_combout\ & ((\L2|Mux5~2_combout\) # (\L2|Mux3~2_combout\ $ (!\L2|Mux4~2_combout\)))) # (!\L2|Mux6~1_combout\ & ((\L2|Mux4~2_combout\ & ((\L2|Mux3~2_combout\))) # (!\L2|Mux4~2_combout\ & (\L2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y28_N14
\L3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux4~0_combout\ = (\L2|Mux6~1_combout\) # ((\L2|Mux5~2_combout\ & (\L2|Mux3~2_combout\)) # (!\L2|Mux5~2_combout\ & ((\L2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y28_N4
\L3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux3~0_combout\ = (\L2|Mux6~1_combout\ & ((\L2|Mux3~2_combout\) # (\L2|Mux5~2_combout\ $ (!\L2|Mux4~2_combout\)))) # (!\L2|Mux6~1_combout\ & ((\L2|Mux5~2_combout\ & (\L2|Mux3~2_combout\)) # (!\L2|Mux5~2_combout\ & ((\L2|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y28_N22
\L3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux2~0_combout\ = (\L2|Mux4~2_combout\ & (((\L2|Mux3~2_combout\)))) # (!\L2|Mux4~2_combout\ & (\L2|Mux5~2_combout\ & ((\L2|Mux3~2_combout\) # (!\L2|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\L3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux1~0_combout\ = (\L2|Mux3~2_combout\ & ((\L2|Mux5~2_combout\) # ((\L2|Mux4~2_combout\)))) # (!\L2|Mux3~2_combout\ & (\L2|Mux4~2_combout\ & (\L2|Mux5~2_combout\ $ (\L2|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y28_N30
\L3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux0~0_combout\ = (\L2|Mux5~2_combout\ & (\L2|Mux3~2_combout\)) # (!\L2|Mux5~2_combout\ & (\L2|Mux4~2_combout\ $ (((!\L2|Mux3~2_combout\ & \L2|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux5~2_combout\,
	datab => \L2|Mux3~2_combout\,
	datac => \L2|Mux6~1_combout\,
	datad => \L2|Mux4~2_combout\,
	combout => \L3|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\L2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux1~0_combout\ = (\L1|Q[5]~3_combout\ & (!\L1|Q[3]~2_combout\ & (!\L1|Q[4]~4_combout\))) # (!\L1|Q[5]~3_combout\ & (\L1|Q[4]~4_combout\ & ((\L1|Q[3]~2_combout\) # (\L1|Q[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[5]~3_combout\,
	datab => \L1|Q[3]~2_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N24
\L2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux0~0_combout\ = (\L1|Q[5]~3_combout\ & ((\L1|Q[3]~2_combout\ & ((!\L1|Q[2]~1_combout\) # (!\L1|Q[4]~4_combout\))) # (!\L1|Q[3]~2_combout\ & (\L1|Q[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[5]~3_combout\,
	datab => \L1|Q[3]~2_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\L4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux3~0_combout\ = (!\L2|Mux1~0_combout\ & !\L2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N20
\L2|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux2~1_combout\ = (\L1|Q[3]~2_combout\ & (((\L1|Q[2]~1_combout\) # (!\L1|Q[4]~4_combout\)))) # (!\L1|Q[3]~2_combout\ & (!\L1|Q[1]~0_combout\ & (\L1|Q[4]~4_combout\ & !\L1|Q[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[1]~0_combout\,
	datab => \L1|Q[3]~2_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y28_N18
\L2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux2~0_combout\ = (\L1|Q[3]~2_combout\ & ((\L1|Q[1]~0_combout\ & ((\L1|Q[2]~1_combout\) # (!\L1|Q[4]~4_combout\))) # (!\L1|Q[1]~0_combout\ & (!\L1|Q[4]~4_combout\ & \L1|Q[2]~1_combout\)))) # (!\L1|Q[3]~2_combout\ & (((\L1|Q[4]~4_combout\ & 
-- !\L1|Q[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[1]~0_combout\,
	datab => \L1|Q[3]~2_combout\,
	datac => \L1|Q[4]~4_combout\,
	datad => \L1|Q[2]~1_combout\,
	combout => \L2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N26
\L2|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux2~2_combout\ = (\L1|Q[5]~3_combout\ & (!\L2|Mux2~1_combout\)) # (!\L1|Q[5]~3_combout\ & ((\L2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Q[5]~3_combout\,
	datab => \L2|Mux2~1_combout\,
	datad => \L2|Mux2~0_combout\,
	combout => \L2|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y28_N28
\L4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux5~0_combout\ = (\L2|Mux1~0_combout\ & ((\L2|Mux2~2_combout\) # (!\L2|Mux0~0_combout\))) # (!\L2|Mux1~0_combout\ & (\L2|Mux2~2_combout\ & !\L2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\L4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux4~0_combout\ = (\L2|Mux2~2_combout\) # ((!\L2|Mux1~0_combout\ & \L2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\L4|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux3~1_combout\ = (\L2|Mux1~0_combout\ & (\L2|Mux2~2_combout\ & \L2|Mux0~0_combout\)) # (!\L2|Mux1~0_combout\ & (\L2|Mux2~2_combout\ $ (\L2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y28_N22
\L4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux2~0_combout\ = (\L2|Mux1~0_combout\ & (!\L2|Mux2~2_combout\ & !\L2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\L4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux1~0_combout\ = (\L2|Mux1~0_combout\ $ (!\L2|Mux2~2_combout\)) # (!\L2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\L4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L4|Mux0~0_combout\ = (!\L2|Mux1~0_combout\ & (\L2|Mux2~2_combout\ $ (\L2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux1~0_combout\,
	datac => \L2|Mux2~2_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L4|Mux0~0_combout\);

ww_Uni(0) <= \Uni[0]~output_o\;

ww_Uni(1) <= \Uni[1]~output_o\;

ww_Uni(2) <= \Uni[2]~output_o\;

ww_Uni(3) <= \Uni[3]~output_o\;

ww_Uni(4) <= \Uni[4]~output_o\;

ww_Uni(5) <= \Uni[5]~output_o\;

ww_Uni(6) <= \Uni[6]~output_o\;

ww_Dec(0) <= \Dec[0]~output_o\;

ww_Dec(1) <= \Dec[1]~output_o\;

ww_Dec(2) <= \Dec[2]~output_o\;

ww_Dec(3) <= \Dec[3]~output_o\;

ww_Dec(4) <= \Dec[4]~output_o\;

ww_Dec(5) <= \Dec[5]~output_o\;

ww_Dec(6) <= \Dec[6]~output_o\;
END structure;


