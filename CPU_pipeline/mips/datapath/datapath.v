`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:10 12/04/2018 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
    input StallF,
    input StallD,
    input FlushE,
    input [2:0] Forward_RS_D_Sel,
    input [2:0] Forward_RT_D_Sel,
    input [2:0] Forward_RS_E_Sel,
    input [2:0] Forward_RT_E_Sel,
    input [2:0] Forward_RT_M_Sel,
    input Clk,
    input Reset,
    output [31:0] IRD
    );

	`include "header.v"
	
	wire [31:0] PC4D;
	wire [31:0] IRE, PC4E, RSE, RTE, EXTE;
	wire [31:0] IRM, PC4M, AOM, RTM;
	wire [31:0] IRW, PC4W, AOW, DRW;
	
	wire [31:0] NPC, MF_RS_D_OUT, MUX_RF_WD_OUT;
	wire [4:0] MUX_RF_A3_OUT;
	wire [1:0] NPC_Sel;
	wire Branch, RegWrite;
	
	always @(posedge Clk) begin
		if (~Reset && RegWrite && MUX_RF_A3_OUT != 5'b0) begin
			$display("%d@%h: $%d <= %h", $time, PC4W-4, MUX_RF_A3_OUT, MUX_RF_WD_OUT);
		end
	end
	
	F f (
    .NPC(NPC), 
    .NPC_Sel(NPC_Sel), 
    .Branch(Branch), 
	 .MF_RS_D_OUT(MF_RS_D_OUT),
    .Clk(Clk), 
    .Reset(Reset), 
    .StallF(StallF), 
    .StallD(StallD), 
    .IRD(IRD), 
    .PC4D(PC4D)
    );
	 
	D d (
    .IRD(IRD), 
    .PC4D(PC4D), 
    .Clk(Clk), 
    .Reset(Reset), 
    .FlushE(FlushE), 
    .Forward_RS_D_Sel(Forward_RS_D_Sel), 
    .Forward_RT_D_Sel(Forward_RT_D_Sel), 
    .PC4fromE(PC4E), 
    .AO(AOM), 
    .PC4fromM(PC4M), 
    .MUX_RF_WD_OUT(MUX_RF_WD_OUT), 
    .Branch(Branch), 
    .NPC_Sel(NPC_Sel), 
    .NPC(NPC), 
	 .MF_RS_D_OUT(MF_RS_D_OUT),
    .IRE(IRE), 
    .PC4E(PC4E), 
    .RSE(RSE), 
    .RTE(RTE), 
    .EXTE(EXTE), 
    .MUX_RF_A3_OUT(MUX_RF_A3_OUT), 
    .We(RegWrite)
    );
	 
	E e (
    .IRE(IRE), 
    .PC4E(PC4E), 
    .RSE(RSE), 
    .RTE(RTE), 
    .EXTE(EXTE), 
    .Clk(Clk), 
    .Reset(Reset), 
    .IRM(IRM), 
    .PC4M(PC4M), 
    .AOM(AOM), 
    .RTM(RTM), 
    .Forward_RS_E_Sel(Forward_RS_E_Sel), 
    .Forward_RT_E_Sel(Forward_RT_E_Sel), 
    .AO(AOM), 
    .PC4fromM(PC4M), 
    .MUX_RF_WD_OUT(MUX_RF_WD_OUT)
    );
	 
	M m (
    .IRM(IRM), 
    .PC4M(PC4M), 
    .AOM(AOM), 
    .RTM(RTM), 
    .Clk(Clk), 
    .Reset(Reset), 
    .IRW(IRW), 
    .PC4W(PC4W), 
    .AOW(AOW), 
    .DRW(DRW), 
    .Forward_RT_M_Sel(Forward_RT_M_Sel), 
    .MUX_RF_WD_OUT(MUX_RF_WD_OUT)
    );
	 
	W w (
    .IRW(IRW), 
    .PC4W(PC4W), 
    .AOW(AOW), 
    .DRW(DRW), 
    .MUX_RF_A3_OUT(MUX_RF_A3_OUT), 
    .MUX_RF_WD_OUT(MUX_RF_WD_OUT), 
    .RegWrite(RegWrite)
    );

endmodule
