`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
module Instruction_Mem(
	input [31:0] PC,
	input reset,
	output [31:0] Inst_code
    );
	 
	reg [7:0] Mem [32:0];
	
	assign Inst_code = {Mem[PC],Mem[PC+1],Mem[PC+2],Mem[PC+3]};
	
	
	always @(reset)
	 if(reset == 0)
	 begin
		$readmemh("Instruction.mem",Mem);
	 end
	 
	 

endmodule
