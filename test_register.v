`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:50 03/30/2020
// Design Name:   register_file
// Module Name:   D:/CompArch/Assignment1/test_register.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_register;

	// Inputs
	reg [4:0] Read_Reg_Num_1;
	reg [4:0] Read_Reg_Num_2;
	reg [4:0] Write_Reg_Num_1;
	reg [31:0] Write_Data;
	reg RegWrite;
	reg clk;
	reg Reset;

	// Outputs
	wire [31:0] Read_Data_1;
	wire [31:0] Read_Data_2;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.Read_Reg_Num_1(Read_Reg_Num_1), 
		.Read_Reg_Num_2(Read_Reg_Num_2), 
		.Write_Reg_Num_1(Write_Reg_Num_1), 
		.Write_Data(Write_Data), 
		.Read_Data_1(Read_Data_1), 
		.Read_Data_2(Read_Data_2), 
		.RegWrite(RegWrite), 
		.clk(clk), 
		.Reset(Reset)
	);

	initial begin
		Reset = 0;
		#10 
		Reset = 1;
	end
	initial begin
		RegWrite = 0;
		#15;
		RegWrite = 1; Write_Data = 20; Write_Reg_Num_1 = 0;
		#10;
		RegWrite = 1; Write_Data = 30; Write_Reg_Num_1 = 1;
		#10;
		RegWrite = 1; Write_Data = 40; Write_Reg_Num_1 = 2;
		#10;
	end
	
	initial begin
		clk=0;
		repeat(10) 
		#10 clk = ~clk; 
		#10 $finish;
	end
	
	initial begin
		#10 Read_Reg_Num_1 = 0; Read_Reg_Num_2 = 0;
		#10 Read_Reg_Num_1 = 2; Read_Reg_Num_2 = 3;
		#10 Read_Reg_Num_1 = 24; Read_Reg_Num_2 = 1;
		#10 Read_Reg_Num_1 = 20; Read_Reg_Num_2 = 4;
	end
      
endmodule

