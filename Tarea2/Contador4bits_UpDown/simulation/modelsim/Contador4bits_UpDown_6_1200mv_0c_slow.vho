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

-- DATE "09/14/2023 16:44:27"

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

ENTITY 	Contador4bits_UpDown IS
    PORT (
	Clk : IN std_logic;
	Up : IN std_logic;
	Q : OUT std_logic_vector(5 DOWNTO 0)
	);
END Contador4bits_UpDown;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Up	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador4bits_UpDown IS
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
SIGNAL ww_Q : std_logic_vector(5 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Up~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Cont~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Cont~9_combout\ : std_logic;
SIGNAL \Cont~4_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Cont~5_combout\ : std_logic;
SIGNAL \Cont~6_combout\ : std_logic;
SIGNAL \Cont[0]~0_combout\ : std_logic;
SIGNAL \Cont~3_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Cont~7_combout\ : std_logic;
SIGNAL \Cont[0]~1_combout\ : std_logic;
SIGNAL \Cont~2_combout\ : std_logic;
SIGNAL Cont : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_Up <= Up;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: IOOBUF_X14_Y0_N9
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cont(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X16_Y0_N15
\Up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Up,
	o => \Up~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Cont(0) $ (VCC)
-- \Add0~1\ = CARRY(Cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Cont(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X15_Y1_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = Cont(0) $ (VCC)
-- \Add1~1\ = CARRY(Cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Cont(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y1_N16
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (Cont(1) & (!\Add0~1\)) # (!Cont(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!Cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X15_Y1_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (Cont(1) & (\Add1~1\ & VCC)) # (!Cont(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!Cont(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X16_Y1_N30
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Up~input_o\ & ((\Add1~2_combout\))) # (!\Up~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \Up~input_o\,
	datad => \Add1~2_combout\,
	combout => \Add0~4_combout\);

-- Location: FF_X16_Y1_N31
\Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(1));

-- Location: LCCOMB_X16_Y1_N18
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (Cont(2) & (\Add0~3\ $ (GND))) # (!Cont(2) & (!\Add0~3\ & VCC))
-- \Add0~6\ = CARRY((Cont(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X16_Y1_N20
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (Cont(3) & (!\Add0~6\)) # (!Cont(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!Cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X16_Y1_N22
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (Cont(4) & (\Add0~8\ $ (GND))) # (!Cont(4) & (!\Add0~8\ & VCC))
-- \Add0~10\ = CARRY((Cont(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X15_Y1_N10
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (Cont(2) & ((GND) # (!\Add1~3\))) # (!Cont(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((Cont(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X15_Y1_N12
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (Cont(3) & (\Add1~5\ & VCC)) # (!Cont(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!Cont(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X15_Y1_N14
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (Cont(4) & ((GND) # (!\Add1~7\))) # (!Cont(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((Cont(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X16_Y1_N12
\Cont~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~8_combout\ = (\Up~input_o\ & ((\Add1~8_combout\) # ((\Cont~3_combout\ & \Add0~9_combout\)))) # (!\Up~input_o\ & (\Cont~3_combout\ & (\Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \Cont~3_combout\,
	datac => \Add0~9_combout\,
	datad => \Add1~8_combout\,
	combout => \Cont~8_combout\);

-- Location: FF_X16_Y1_N13
\Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(4));

-- Location: LCCOMB_X15_Y1_N16
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (!Cont(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Cont(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X16_Y1_N24
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \Add0~10\ $ (Cont(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Cont(5),
	cin => \Add0~10\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X16_Y1_N2
\Cont~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~9_combout\ = (\Up~input_o\ & ((\Add1~10_combout\) # ((\Cont~3_combout\ & \Add0~11_combout\)))) # (!\Up~input_o\ & (\Cont~3_combout\ & ((\Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \Cont~3_combout\,
	datac => \Add1~10_combout\,
	datad => \Add0~11_combout\,
	combout => \Cont~9_combout\);

-- Location: FF_X16_Y1_N3
\Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(5));

-- Location: LCCOMB_X16_Y1_N26
\Cont~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~4_combout\ = (Cont(1)) # ((Cont(5)) # ((Cont(0)) # (Cont(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(1),
	datab => Cont(5),
	datac => Cont(0),
	datad => Cont(4),
	combout => \Cont~4_combout\);

-- Location: LCCOMB_X15_Y1_N24
\Cont~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~5_combout\ = (\Add1~4_combout\ & ((Cont(2)) # ((\Cont~4_combout\) # (Cont(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(2),
	datab => \Cont~4_combout\,
	datac => Cont(3),
	datad => \Add1~4_combout\,
	combout => \Cont~5_combout\);

-- Location: LCCOMB_X16_Y1_N4
\Cont~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~6_combout\ = (\Up~input_o\ & ((\Cont~5_combout\) # ((\Cont~3_combout\ & \Add0~5_combout\)))) # (!\Up~input_o\ & (\Cont~3_combout\ & (\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \Cont~3_combout\,
	datac => \Add0~5_combout\,
	datad => \Cont~5_combout\,
	combout => \Cont~6_combout\);

-- Location: FF_X16_Y1_N5
\Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(2));

-- Location: LCCOMB_X16_Y1_N28
\Cont[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont[0]~0_combout\ = (!Cont(1) & (Cont(5) & (!Cont(0) & Cont(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(1),
	datab => Cont(5),
	datac => Cont(0),
	datad => Cont(4),
	combout => \Cont[0]~0_combout\);

-- Location: LCCOMB_X16_Y1_N0
\Cont~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~3_combout\ = (!\Up~input_o\ & (((!\Cont[0]~0_combout\) # (!Cont(2))) # (!Cont(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(3),
	datab => \Up~input_o\,
	datac => Cont(2),
	datad => \Cont[0]~0_combout\,
	combout => \Cont~3_combout\);

-- Location: LCCOMB_X16_Y1_N10
\Cont~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~7_combout\ = (\Up~input_o\ & ((\Add1~6_combout\) # ((\Cont~3_combout\ & \Add0~7_combout\)))) # (!\Up~input_o\ & (\Cont~3_combout\ & (\Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \Cont~3_combout\,
	datac => \Add0~7_combout\,
	datad => \Add1~6_combout\,
	combout => \Cont~7_combout\);

-- Location: FF_X16_Y1_N11
\Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(3));

-- Location: LCCOMB_X16_Y1_N6
\Cont[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont[0]~1_combout\ = (Cont(3) & (!\Up~input_o\ & (Cont(2) & \Cont[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(3),
	datab => \Up~input_o\,
	datac => Cont(2),
	datad => \Cont[0]~0_combout\,
	combout => \Cont[0]~1_combout\);

-- Location: LCCOMB_X16_Y1_N8
\Cont~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont~2_combout\ = (!\Cont[0]~1_combout\ & ((\Up~input_o\ & ((\Add1~0_combout\))) # (!\Up~input_o\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Up~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \Cont[0]~1_combout\,
	combout => \Cont~2_combout\);

-- Location: FF_X16_Y1_N9
\Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(0));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;
END structure;


