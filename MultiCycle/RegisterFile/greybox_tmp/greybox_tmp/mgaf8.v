//lpm_decode CBX_SINGLE_OUTPUT_FILE="ON" LPM_DECODES=1 LPM_TYPE="LPM_DECODE" LPM_WIDTH=0 data
//VERSION_BEGIN 13.1 cbx_mgl 2013:10:17:04:34:36:SJ cbx_stratixii 2013:10:17:04:07:49:SJ cbx_util_mgl 2013:10:17:04:07:49:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2013 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = lpm_decode 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgaf8
	( 
	data) /* synthesis synthesis_clearbox=1 */;
	input   data;


	lpm_decode   mgl_prim1
	( 
	.data(data));
	defparam
		mgl_prim1.lpm_decodes = 1,
		mgl_prim1.lpm_type = "LPM_DECODE",
		mgl_prim1.lpm_width = 0;
endmodule //mgaf8
//VALID FILE
