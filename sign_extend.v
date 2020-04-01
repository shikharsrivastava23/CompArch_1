`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:55 03/31/2020 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(
	input [20:0] A,
	output reg [31:0] out
    );
	 
	always @(*) begin
		if(A[19] == 0) 
			out = {11'b00000000000,A};
		else
			out = {11'b11111111111,A};
	end


endmodule
