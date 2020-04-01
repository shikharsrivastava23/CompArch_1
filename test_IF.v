`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:42 03/30/2020
// Design Name:   Instruction_Fetch
// Module Name:   D:/CompArch/Assignment1/test_IF.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Fetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_IF;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] Instruction_Code;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Fetch uut (
		.clk(clk), 
		.reset(reset), 
		.Instruction_Code(Instruction_Code)
	);

	initial begin
		reset = 1;
		#10
		reset = 0;
		#10
		reset = 1;
		#100;
	end
	
	initial begin
		clk = 0;
	end
	
	always
		#10 clk = ~clk;
		
endmodule

