`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:20 12/04/2018 
// Design Name: 
// Module Name:    ATDecoder 
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
module ATDecoder(
    input [31:0] Instr,
    output [4:0] A1,
    output [4:0] A2,
    output [4:0] A3,
    output [3:0] ic
    );
	 
	`include "header.v"
	
	wire [5:0] OpCode, Funct;
	assign OpCode = Instr[`OpCode];
	assign Funct = Instr[`Funct];
	
	assign nop = (OpCode == `R && Funct == `nop) ? 1 : 0;
	assign jr = (OpCode == `R && Funct == `jr) ? 1 : 0;
	assign jalr = (OpCode == `R && Funct == `jalr) ? 1 : 0;
	assign addu = (OpCode == `R && Funct == `addu) ? 1 : 0;
	assign subu = (OpCode == `R && Funct == `subu) ? 1 : 0;
	assign slt = (OpCode == `R && Funct == `slt) ? 1 : 0;
	
	assign beq = (OpCode == `beq) ? 1 : 0;
	assign addiu = (OpCode == `addiu) ? 1 : 0;
	assign ori = (OpCode == `ori) ? 1 : 0;
	assign lui = (OpCode == `lui) ? 1 : 0;
	assign lw = (OpCode == `lw) ? 1 : 0;
	assign sw = (OpCode == `sw) ? 1 : 0;
	assign j = (OpCode == `j) ? 1 : 0;
	assign jal = (OpCode == `jal) ? 1 : 0;
	
	assign ic = (addu + subu + slt) ? `hzd_cal_r : 
	            (addiu + ori + lui) ? `hzd_cal_i :
					(lw) ? `hzd_load :
					(sw) ? `hzd_store :
					(beq) ? `hzd_b :
					(j) ? `hzd_j :
					(jr) ? `hzd_jr :
					(jal) ? `hzd_jal :
					(jalr) ? `hzd_jalr :
					`hzd_nop;
	
	assign A1 = (ic == `hzd_cal_r || ic == `hzd_cal_i || ic == `hzd_load || 
						ic == `hzd_store || ic == `hzd_b || ic ==`hzd_jr || ic == `hzd_jalr) ? Instr[`rs] :
					5'b0;
	assign A2 = (ic == `hzd_cal_r || ic == `hzd_b || ic == `hzd_store) ? Instr[`rt] :
					5'b0;
	assign A3 = (ic == `hzd_cal_r || ic == `hzd_jalr) ? 
						((Instr[`rd] == 5'b0) ? 5'b0 : Instr[`rd]) :
					(ic == `hzd_cal_i || ic == `hzd_load) ? 
						((Instr[`rt] == 5'b0) ? 5'b0 : Instr[`rt]) :
					(ic == `hzd_jal) ? 5'b11111 :
					5'b0;


endmodule
