`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:49 03/31/2020
// Design Name:   Main_CU
// Module Name:   D:/CompArch/Assignment1/test_CU.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_CU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CU;

	// Inputs
	reg [5:0] opcode;
	reg [5:0] fn_code;

	// Outputs
	wire RegWrite;
	wire ALUtoReg;
	wire [3:0] alu_control;

	// Instantiate the Unit Under Test (UUT)
	Main_CU uut (
		.opcode(opcode), 
		.fn_code(fn_code), 
		.RegWrite(RegWrite), 
		.ALUtoReg(ALUtoReg), 
		.alu_control(alu_control)
	);

	initial begin 
			
		opcode = 6'b111111; fn_code = 6'b000000;
		#10
		opcode = 6'b000000; fn_code = 6'b100000;
		#10
		opcode = 6'b000000; fn_code = 6'b100010;
		#10
		opcode = 6'b000000; fn_code = 6'b100100;
		#10
		opcode = 6'b000000; fn_code = 6'b100101;
		#10
		opcode = 6'b000000; fn_code = 6'b000000;
		#10
		opcode = 6'b000000; fn_code = 6'b000010;
		#10
		$finish;
		
	end
      
endmodule

