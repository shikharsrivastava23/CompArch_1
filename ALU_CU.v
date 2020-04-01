`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:37 03/30/2020 
// Design Name: 
// Module Name:    ALU_CU 
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
module ALU_CU(
		
		input ALUop,
		input [5:0] fn,
		output reg [2:0] alu_control
    
	 );
	 
	always @(*) begin
		if(ALUop == 1) begin //R type instruction
			if (fn == 6'b100000) //ADD
				alu_control = 3'b000;
			if (fn == 6'b100010) //SUB
				alu_control = 3'b001;
			if (fn == 6'b100100) // AND
				alu_control = 3'b010;
			if (fn == 6'b100101) //OR
				alu_control = 3'b011;
			if (fn == 6'b000000) //SLL
				alu_control = 3'b100;
			if (fn == 6'b000010) //SRL
				alu_control = 3'b101;
		end
		else // I type
			alu_control = 3'b111;
	end
	
endmodule

