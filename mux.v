`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:26 03/31/2020 
// Design Name: 
// Module Name:    mux 
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
module mux(
	input select,
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] out
    );
	 
	 always @(*) begin
		if(select == 0) 
			out = A;
		else 	
			out = B;
	 end

endmodule
