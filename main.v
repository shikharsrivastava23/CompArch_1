`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:57 03/31/2020 
// Design Name: 
// Module Name:    main 
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
module main(
	input Clk,
	input Reset
    );

	wire [31:0] instruction,read_reg_data_1,read_reg_data_2,alu_result,sign_extended_immediate,Write_data;
	
	wire [5:0] opcode = instruction[31:26];
	wire [4:0] read_reg_1 = instruction[20:16];
	wire [4:0] read_reg_2 = instruction[15:11];
	wire [4:0] write_reg = instruction[25:21];
	wire [4:0] shift = instruction[10:6];
	wire [5:0] fn_code = instruction[5:0];
	wire [20:0] immediate_data = instruction[20:0];
	
	wire [3:0] ALU_Control;
	wire RegWrite,ALUtoReg,Zero;
	
	Instruction_Fetch IF(Clk,Reset,instruction);
	Main_CU mcu(opcode,fn_code,RegWrite,ALUtoReg,ALU_Control);
	
	register_file regfile(read_reg_1,read_reg_2,write_reg,Write_data,read_reg_data_1,read_reg_data_2,RegWrite,Clk,Reset);
	ALU alu(read_reg_data_1,read_reg_data_2,ALU_Control,shift,alu_result,Zero);
	sign_extend se(immediate_data,sign_extended_immediate);
	mux m(ALUtoReg,sign_extended_immediate,alu_result,Write_data);

endmodule
