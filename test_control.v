`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:24 03/31/2020
// Design Name:   Control_sigs
// Module Name:   D:/CompArch/Assignment1/test_control.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_sigs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_control;

	// Inputs
	reg [5:0] opcode;
	reg [5:0] fn_code;

	// Outputs
	wire RegWrite;
	wire ALUtoReg;
	wire ALUop;
	wire [2:0] ALU_cntrl;

	// Instantiate the Unit Under Test (UUT)
	Control_sigs uut (
		.opcode(opcode), 
		.fn_code(fn_code), 
		.RegWrite(RegWrite), 
		.ALUtoReg(ALUtoReg), 
		.ALUop(ALUop), 
		.ALU_cntrl(ALU_cntrl)
	);

	initial begin 
			
		opcode = 6'b000000; fn_code = 6'b000000;
		#10
		opcode = 6'b111111; fn_code = 6'b100000;
		#10
		opcode = 6'b111111; fn_code = 6'b100010;
		#10
		opcode = 6'b111111; fn_code = 6'b100100;
		#10
		opcode = 6'b111111; fn_code = 6'b100101;
		#10
		opcode = 6'b111111; fn_code = 6'b000000;
		#10
		opcode = 6'b111111; fn_code = 6'b000001;
		#10
		$finish;
		
	end
      
endmodule

