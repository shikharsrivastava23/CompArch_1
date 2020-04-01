`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:17 03/31/2020
// Design Name:   sign_extend
// Module Name:   D:/CompArch/Assignment1/test_SE.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SE;

	// Inputs
	reg [20:0] A;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	sign_extend uut (
		.A(A), 
		.out(out)
	);

	initial begin
		A = 20'b001101010001100000000;
		#50
		A = 20'b111101010001100000000;
		#50
		$finish;
	end
      
endmodule

