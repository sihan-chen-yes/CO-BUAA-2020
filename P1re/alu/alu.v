`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:27 11/05/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output[31:0] C
    );

	assign C = (ALUOp == 3'b0)? A + B:
				  (ALUOp == 1)? A - B:
				  (ALUOp == 2)? A & B:
				  (ALUOp == 3)? A | B:
				  (ALUOp == 4)? A >> B:
				  (ALUOp == 5)? $signed($signed(A)>>>B):
																	0;
	
										
	

endmodule
