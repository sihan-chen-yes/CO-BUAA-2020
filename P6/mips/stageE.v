`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:13 12/15/2020 
// Design Name: 
// Module Name:    stageE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module stageE(
    input [31:0] RD1_E,
    input [31:0] RD2_E,
    input [31:0] imm32_E,
	 input [31:0] RFWD_M,
	 input [31:0] RFWD_W,
	 input [1:0] MF_ALUA_Sel,
	 input [1:0] MF_ALUB_Sel,
    input [3:0] ALUOp,
	 input BSel,
	 input VSel,
	 input [3:0] MDOp,
	 input [4:0] shamt,
	 input clk,
	 input reset,
	 input start,
	 input CSel,
	 output busy,
    output [31:0] C_E,
	 output [31:0] RD2_new
    );
	 //------------------ALU---------------
	 //ת���� RD1 RD2 			
	 
	 wire	[31:0] RD1_new,ALUB;								
	 assign RD1_new = (MF_ALUA_Sel == 2'b10)? RFWD_M:
						(MF_ALUA_Sel == 2'b01)? RFWD_W:
														RD1_E;
														
	 assign RD2_new = (MF_ALUB_Sel == 2'b10)? RFWD_M:
							(MF_ALUB_Sel == 2'b01)? RFWD_W:
															RD2_E;

	
	 assign ALUB = (BSel == 0)? RD2_new:
										 imm32_E;	
										 
	 wire [4:0] s;
	 
	 assign s = (VSel)? RD1_new[4:0]:shamt;		
	 wire [31:0] C_E_tmp,result;
	 ALU ALU(
		.A(RD1_new),
		.B(ALUB),
		.ALUOp(ALUOp),
		.shamt(s),
		.C(C_E_tmp)
	 );
	 
	 MDU MDU(
		.D1(RD1_new),
		.D2(RD2_new),
		.clk(clk),
		.reset(reset),
		.start(start),
		.MDOp(MDOp),
		.busy(busy),
		.result(result)
	 );
	 
	 assign C_E = (CSel)? result:C_E_tmp;
endmodule
