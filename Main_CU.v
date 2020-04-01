`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:27 03/30/2020 
// Design Name: 
// Module Name:    Main_CU 
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
module Main_CU(
		
		input [5:0] opcode,
		input [5:0] fn_code,
		output reg RegWrite,
		output reg ALUtoReg,
		output reg [3:0] alu_control
	 );
	 
	
	always @(*) begin
		
		RegWrite = 1'b1;
		ALUtoReg = ~opcode;
	
		if(opcode == 0) begin //R type
			if (fn_code == 6'b100000) //ADD
				alu_control = 4'b0000;
			if (fn_code == 6'b100010) //SUB
				alu_control = 4'b0001;
			if (fn_code == 6'b100100) // AND
				alu_control = 4'b0010;
			if (fn_code == 6'b100101) //OR
				alu_control = 4'b0100;
			if (fn_code == 6'b000000) //SLL
				alu_control = 4'b1001;
			if (fn_code == 6'b000010) //SRL
				alu_control = 4'b1010;
		end
		else //I Type
			alu_control = 4'b1111;
	end
		
endmodule
