`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:48:02 12/03/2018 
// Design Name: 
// Module Name:    F 
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
module F(
    input [31:0] NPC,
    input [1:0] NPC_Sel,
	 input Branch,
	 input [31:0] MF_RS_D_OUT,
    input Clk,
    input Reset,
    input StallF,
    input StallD,
    output reg [31:0] IRD,
    output reg [31:0] PC4D
    );
	 
	`include "header.v"

	wire [31:0] PCF_OUT, Instr, PC4, MUX_PC_OUT;
	assign PC4 = PCF_OUT + 4;
	
	initial begin
		IRD = 32'b0;
		PC4D = 32'b0;
	end
	always @(posedge Clk) begin
		if (Reset) begin
			IRD = 32'b0;
			PC4D = 32'b0;
		end else if (~StallD) begin
			IRD = Instr;
			PC4D = PC4;
		end
	end
	
	pc PCF (
    .NPC(MUX_PC_OUT), 
    .Clk(Clk), 
    .Reset(Reset), 
    .En(~StallF), 
    .PC(PCF_OUT)
    );
	
	im IMF (
    .Addr(PCF_OUT[11:2]), 
    .Instr(Instr)
    );
	
	MUX_PC mux_pc_F (
    .add4(PC4), 
    .NPC(NPC), 
    .mf(MF_RS_D_OUT), 
    .NPC_Sel(NPC_Sel), 
    .Branch(Branch), 
    .MUX_PC_OUT(MUX_PC_OUT)
    );
endmodule
