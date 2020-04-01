`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:21 03/30/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [31:0] A,
	input [31:0] B,
	input [3:0] Ctrl,
	input [4:0] shift,
	output reg [31:0] Rslt,
	output reg Zero
    );
	 
	 always @(*)
	 begin
		case(Ctrl)
			4'b0000: Rslt = A+B;
			4'b0001: Rslt = A-B;
			4'b0010: Rslt = A&B;
			4'b0100: Rslt = A|B;
			4'b1001: Rslt = A << shift;
			4'b1010: Rslt = A >> shift;
			4'b1111: Rslt = 0;
			default: Rslt = Rslt;
		endcase
		
		if(Rslt == 0)
			Zero = 1;
		else
			Zero = 0;
	 end

endmodule
