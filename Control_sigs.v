`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:57 03/31/2020 
// Design Name: 
// Module Name:    Control_sigs 
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
module Control_sigs(
	input [5:0] opcode,
	input [5:0] fn_code,
	output RegWrite,
	output ALUtoReg,
	output ALUop,
	output [2:0] ALU_cntrl
    );
	 
	 Main_CU mcu (opcode, RegWrite, ALUtoReg, ALUop);
	 ALU_CU alucu(ALUop,fn_code,ALU_cntrl);
	
endmodule
