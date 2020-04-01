`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:00 03/30/2020 
// Design Name: 
// Module Name:    register_file 
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
module register_file(
	input [4:0] Read_Reg_Num_1,
	input [4:0] Read_Reg_Num_2,
	input [4:0] Write_Reg_Num_1,
	input [31:0] Write_Data,
	output [31:0] Read_Data_1,
	output [31:0] Read_Data_2,
	input RegWrite,
	input clk,
	input Reset
    );
	 
	reg [31:0] reg_mem [31:0];
	 
	always @(Reset)
		if(Reset == 0)
			$readmemh("register_val.mem",reg_mem);
			
	assign Read_Data_1 = reg_mem[Read_Reg_Num_1];
	assign Read_Data_2 = reg_mem[Read_Reg_Num_2];
	
	always @(posedge clk)
	begin
		if(RegWrite == 1)
			reg_mem[Write_Reg_Num_1] = Write_Data;
	end			

endmodule
