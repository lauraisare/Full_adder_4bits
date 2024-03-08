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

-- DATE "03/01/2024 15:06:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_completo IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Uni_Display : BUFFER std_logic_vector(6 DOWNTO 0);
	Dec_Display : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END full_adder_completo;

-- Design Ports Information
-- Uni_Display[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uni_Display[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec_Display[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Uni_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dec_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL \Uni_Display[0]~output_o\ : std_logic;
SIGNAL \Uni_Display[1]~output_o\ : std_logic;
SIGNAL \Uni_Display[2]~output_o\ : std_logic;
SIGNAL \Uni_Display[3]~output_o\ : std_logic;
SIGNAL \Uni_Display[4]~output_o\ : std_logic;
SIGNAL \Uni_Display[5]~output_o\ : std_logic;
SIGNAL \Uni_Display[6]~output_o\ : std_logic;
SIGNAL \Dec_Display[0]~output_o\ : std_logic;
SIGNAL \Dec_Display[1]~output_o\ : std_logic;
SIGNAL \Dec_Display[2]~output_o\ : std_logic;
SIGNAL \Dec_Display[3]~output_o\ : std_logic;
SIGNAL \Dec_Display[4]~output_o\ : std_logic;
SIGNAL \Dec_Display[5]~output_o\ : std_logic;
SIGNAL \Dec_Display[6]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A0|A1|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A0|A2|Cout~0_combout\ : std_logic;
SIGNAL \A0|A3|Cout~0_combout\ : std_logic;
SIGNAL \A0|A3|Cout~1_combout\ : std_logic;
SIGNAL \A0|A3|HA2|Sum~combout\ : std_logic;
SIGNAL \A0|A2|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \A0|A1|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\ : std_logic;
SIGNAL \A2|F[0]~0_combout\ : std_logic;
SIGNAL \A2|F[1]~1_combout\ : std_logic;
SIGNAL \A2|F[2]~2_combout\ : std_logic;
SIGNAL \A2|F[3]~3_combout\ : std_logic;
SIGNAL \A2|F[4]~4_combout\ : std_logic;
SIGNAL \A2|F[5]~5_combout\ : std_logic;
SIGNAL \A2|F[6]~6_combout\ : std_logic;
SIGNAL \A0|A3|Cout~2_combout\ : std_logic;
SIGNAL \A3|Equal8~0_combout\ : std_logic;
SIGNAL \A3|Equal7~0_combout\ : std_logic;
SIGNAL \A3|Equal7~1_combout\ : std_logic;
SIGNAL \A3|F[4]~0_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \A3|Equal9~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Uni_Display <= ww_Uni_Display;
Dec_Display <= ww_Dec_Display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X21_Y29_N23
\Uni_Display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[0]~0_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Uni_Display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[1]~1_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Uni_Display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Uni_Display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[3]~3_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Uni_Display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[4]~4_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Uni_Display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[5]~5_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Uni_Display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[6]~6_combout\,
	devoe => ww_devoe,
	o => \Uni_Display[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Dec_Display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|Equal8~0_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Dec_Display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dec_Display[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Dec_Display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|Equal7~1_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Dec_Display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|Equal8~0_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Dec_Display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[4]~0_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Dec_Display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|Equal9~0_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Dec_Display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \Dec_Display[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X10_Y22_N26
\A0|A1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A0|A1|Cout~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X17_Y23_N0
\A0|A2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A2|Cout~0_combout\ = (\B[2]~input_o\ & ((\A0|A1|Cout~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\A0|A1|Cout~0_combout\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A0|A1|Cout~0_combout\,
	datac => \A[2]~input_o\,
	combout => \A0|A2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y28_N18
\A0|A3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A3|Cout~0_combout\ = (\A0|A2|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A0|A3|Cout~0_combout\);

-- Location: LCCOMB_X12_Y28_N20
\A0|A3|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A3|Cout~1_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \A0|A3|Cout~1_combout\);

-- Location: LCCOMB_X12_Y28_N16
\A0|A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A3|HA2|Sum~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\A0|A2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A0|A3|HA2|Sum~combout\);

-- Location: LCCOMB_X17_Y23_N26
\A0|A2|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A2|HA2|Sum~0_combout\ = \B[2]~input_o\ $ (\A0|A1|Cout~0_combout\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A0|A1|Cout~0_combout\,
	datac => \A[2]~input_o\,
	combout => \A0|A2|HA2|Sum~0_combout\);

-- Location: LCCOMB_X12_Y28_N0
\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A0|A2|HA2|Sum~0_combout\ $ (VCC)
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A0|A2|HA2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A2|HA2|Sum~0_combout\,
	datad => VCC,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X12_Y28_N2
\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A0|A3|HA2|Sum~combout\ & (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A0|A3|HA2|Sum~combout\ & 
-- (!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A0|A3|HA2|Sum~combout\ & !\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A0|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X12_Y28_N4
\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\)))) # 
-- (!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\)))))
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A3|Cout~0_combout\,
	datab => \A0|A3|Cout~1_combout\,
	datad => VCC,
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X12_Y28_N6
\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X10_Y22_N16
\A0|A1|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A1|HA2|Sum~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A0|A1|HA2|Sum~0_combout\);

-- Location: LCCOMB_X10_Y22_N18
\A1|Mod0|auto_generated|divider|divider|StageOut[15]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A0|A1|HA2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A0|A1|HA2|Sum~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\);

-- Location: LCCOMB_X10_Y22_N20
\A1|Mod0|auto_generated|divider|divider|StageOut[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\ = (!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A0|A1|HA2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A0|A1|HA2|Sum~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\);

-- Location: LCCOMB_X10_Y22_N6
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\) # (\A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\)))
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\) # (\A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\,
	datad => VCC,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X12_Y28_N8
\A1|Mod0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ = (!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X12_Y28_N22
\A1|Mod0|auto_generated|divider|divider|StageOut[18]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A0|A2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\);

-- Location: LCCOMB_X10_Y22_N28
\A1|Mod0|auto_generated|divider|divider|StageOut[17]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ = (!\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\);

-- Location: LCCOMB_X12_Y28_N28
\A1|Mod0|auto_generated|divider|divider|StageOut[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\);

-- Location: LCCOMB_X10_Y22_N30
\A1|Mod0|auto_generated|divider|divider|StageOut[16]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\ $ (\A0|A1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A0|A1|Cout~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\);

-- Location: LCCOMB_X12_Y28_N14
\A1|Mod0|auto_generated|divider|divider|StageOut[16]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\);

-- Location: LCCOMB_X10_Y22_N8
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & 
-- (!\A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\)))
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & (!\A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & 
-- !\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datad => VCC,
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X10_Y22_N10
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\) # 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\) # 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))))
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\) # 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	datad => VCC,
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X10_Y22_N12
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\A1|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ & (!\A1|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ & 
-- !\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\,
	datad => VCC,
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y22_N14
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y22_N2
\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\A0|A1|HA2|Sum~0_combout\))) # (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ 
-- & (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \A0|A1|HA2|Sum~0_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\);

-- Location: LCCOMB_X10_Y22_N0
\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- ((\A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\);

-- Location: LCCOMB_X10_Y22_N22
\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\) # 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\);

-- Location: LCCOMB_X10_Y22_N24
\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X10_Y22_N4
\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\ = (\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\B[0]~input_o\ $ ((\A[0]~input_o\)))) # 
-- (!\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\);

-- Location: LCCOMB_X21_Y27_N0
\A2|F[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[0]~0_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # ((\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & 
-- !\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ $ 
-- (((!\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\ & \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[0]~0_combout\);

-- Location: LCCOMB_X21_Y27_N2
\A2|F[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[1]~1_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ $ 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[1]~1_combout\);

-- Location: LCCOMB_X21_Y27_N12
\A2|F[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[2]~2_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & (((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[2]~2_combout\);

-- Location: LCCOMB_X21_Y27_N14
\A2|F[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[3]~3_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ $ 
-- (!\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- (\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\)) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[3]~3_combout\);

-- Location: LCCOMB_X21_Y27_N24
\A2|F[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[4]~4_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\) # ((\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\))) # 
-- (!\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[4]~4_combout\);

-- Location: LCCOMB_X21_Y27_N26
\A2|F[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[5]~5_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # ((\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\) # 
-- ((!\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\ & \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[5]~5_combout\);

-- Location: LCCOMB_X21_Y27_N28
\A2|F[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[6]~6_combout\ = (\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\) # ((\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ & 
-- \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\)))) # (!\A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ $ 
-- ((!\A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datab => \A1|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\,
	datac => \A1|Mod0|auto_generated|divider|divider|StageOut[23]~13_combout\,
	datad => \A1|Mod0|auto_generated|divider|divider|StageOut[20]~16_combout\,
	combout => \A2|F[6]~6_combout\);

-- Location: LCCOMB_X12_Y28_N26
\A0|A3|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|A3|Cout~2_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\A0|A2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \A0|A2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A0|A3|Cout~2_combout\);

-- Location: LCCOMB_X12_Y28_N12
\A3|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal8~0_combout\ = (\A0|A3|Cout~2_combout\ & (!\A0|A2|HA2|Sum~0_combout\ & ((!\A0|A3|HA2|Sum~combout\)))) # (!\A0|A3|Cout~2_combout\ & (\A0|A3|HA2|Sum~combout\ & ((\A0|A2|HA2|Sum~0_combout\) # (\A0|A1|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A2|HA2|Sum~0_combout\,
	datab => \A0|A1|HA2|Sum~0_combout\,
	datac => \A0|A3|Cout~2_combout\,
	datad => \A0|A3|HA2|Sum~combout\,
	combout => \A3|Equal8~0_combout\);

-- Location: LCCOMB_X12_Y28_N30
\A3|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal7~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & ((!\A0|A2|Cout~0_combout\) # (!\A0|A1|HA2|Sum~0_combout\))) # (!\B[3]~input_o\ & ((\A0|A2|Cout~0_combout\))))) # (!\A[3]~input_o\ & (((\B[3]~input_o\ & \A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A0|A1|HA2|Sum~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A3|Equal7~0_combout\);

-- Location: LCCOMB_X12_Y28_N24
\A3|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal7~1_combout\ = (\A0|A2|HA2|Sum~0_combout\ & (((\A3|Equal7~0_combout\)))) # (!\A0|A2|HA2|Sum~0_combout\ & (\A0|A3|Cout~1_combout\ & ((\A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A2|HA2|Sum~0_combout\,
	datab => \A0|A3|Cout~1_combout\,
	datac => \A3|Equal7~0_combout\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A3|Equal7~1_combout\);

-- Location: LCCOMB_X12_Y28_N10
\A3|F[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[4]~0_combout\ = (\A0|A2|HA2|Sum~0_combout\ & (\A0|A3|HA2|Sum~combout\ & ((\A0|A1|HA2|Sum~0_combout\) # (!\A0|A3|Cout~2_combout\)))) # (!\A0|A2|HA2|Sum~0_combout\ & ((\A0|A3|Cout~2_combout\ & ((!\A0|A3|HA2|Sum~combout\))) # (!\A0|A3|Cout~2_combout\ & 
-- (\A0|A1|HA2|Sum~0_combout\ & \A0|A3|HA2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A2|HA2|Sum~0_combout\,
	datab => \A0|A1|HA2|Sum~0_combout\,
	datac => \A0|A3|Cout~2_combout\,
	datad => \A0|A3|HA2|Sum~combout\,
	combout => \A3|F[4]~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A0|A2|HA2|Sum~0_combout\ $ (VCC)
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A0|A2|HA2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|A2|HA2|Sum~0_combout\,
	datad => VCC,
	combout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X12_Y15_N18
\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A0|A3|HA2|Sum~combout\ & (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A0|A3|HA2|Sum~combout\ & 
-- (!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A0|A3|HA2|Sum~combout\ & !\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A0|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X12_Y15_N20
\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\)))) # 
-- (!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\)))))
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A0|A3|Cout~0_combout\) # (\A0|A3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A3|Cout~0_combout\,
	datab => \A0|A3|Cout~1_combout\,
	datad => VCC,
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X12_Y15_N22
\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X17_Y23_N6
\A1|Div0|auto_generated|divider|divider|StageOut[18]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ = (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A0|A2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\);

-- Location: LCCOMB_X17_Y23_N28
\A1|Div0|auto_generated|divider|divider|StageOut[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ = (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\);

-- Location: LCCOMB_X17_Y23_N30
\A1|Div0|auto_generated|divider|divider|StageOut[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\ = (!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\);

-- Location: LCCOMB_X17_Y23_N2
\A1|Div0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A0|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A0|A2|Cout~0_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X17_Y23_N12
\A1|Div0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\ $ (\A0|A1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A0|A1|Cout~0_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X17_Y23_N8
\A1|Div0|auto_generated|divider|divider|StageOut[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ = (!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\);

-- Location: LCCOMB_X17_Y23_N10
\A1|Div0|auto_generated|divider|divider|StageOut[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\ = (\A0|A1|HA2|Sum~0_combout\ & \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A1|HA2|Sum~0_combout\,
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\);

-- Location: LCCOMB_X17_Y23_N4
\A1|Div0|auto_generated|divider|divider|StageOut[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\ = (\A0|A1|HA2|Sum~0_combout\ & !\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|A1|HA2|Sum~0_combout\,
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A1|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\);

-- Location: LCCOMB_X17_Y23_N14
\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\A1|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\) # (\A1|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\,
	datab => \A1|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\,
	datad => VCC,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X17_Y23_N16
\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\A1|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & (!\A1|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ & 
-- !\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datab => \A1|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\,
	datad => VCC,
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X17_Y23_N18
\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\A1|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- (\A1|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \A1|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => VCC,
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X17_Y23_N20
\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\A1|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ & (!\A1|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ & 
-- !\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\,
	datab => \A1|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\,
	datad => VCC,
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y23_N22
\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y23_N24
\A3|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal9~0_combout\ = (!\A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \A1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \A3|Equal9~0_combout\);

ww_Uni_Display(0) <= \Uni_Display[0]~output_o\;

ww_Uni_Display(1) <= \Uni_Display[1]~output_o\;

ww_Uni_Display(2) <= \Uni_Display[2]~output_o\;

ww_Uni_Display(3) <= \Uni_Display[3]~output_o\;

ww_Uni_Display(4) <= \Uni_Display[4]~output_o\;

ww_Uni_Display(5) <= \Uni_Display[5]~output_o\;

ww_Uni_Display(6) <= \Uni_Display[6]~output_o\;

ww_Dec_Display(0) <= \Dec_Display[0]~output_o\;

ww_Dec_Display(1) <= \Dec_Display[1]~output_o\;

ww_Dec_Display(2) <= \Dec_Display[2]~output_o\;

ww_Dec_Display(3) <= \Dec_Display[3]~output_o\;

ww_Dec_Display(4) <= \Dec_Display[4]~output_o\;

ww_Dec_Display(5) <= \Dec_Display[5]~output_o\;

ww_Dec_Display(6) <= \Dec_Display[6]~output_o\;
END structure;


