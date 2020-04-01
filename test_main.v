`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:03:29 03/31/2020
// Design Name:   main
// Module Name:   D:/CompArch/Assignment1/test_main.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_main;

	// Inputs
	reg Clk;
	reg Reset;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.Clk(Clk), 
		.Reset(Reset)
	);

	initial begin
		Clk = 0;
		Reset = 1;
		#1
		Reset = 0;
		#1
		Reset = 1;
		repeat(10)
		#1 Clk=~Clk;
		$finish;
	end
      
endmodule

