`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:04 12/03/2018 
// Design Name: 
// Module Name:    M 
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
module M(
    input [31:0] IRM,
    input [31:0] PC4M,
    input [31:0] AOM,
    input [31:0] RTM,
    input Clk,
    input Reset,
    output reg [31:0] IRW,
    output reg [31:0] PC4W,
    output reg [31:0] AOW,
    output reg [31:0] DRW,
    input [2:0] Forward_RT_M_Sel,
    input [31:0] MUX_RF_WD_OUT
    );
	 
	`include "header.v"
	
	wire [31:0] MF_RT_M_OUT, Dout;
	wire MemWrite;
	
	always @(posedge Clk) begin
		if (~Reset && MemWrite) begin
			$display("%d@%h: *%h <= %h", $time, PC4M-4, AOM, MF_RT_M_OUT); 
		end
	end
	
	integer i;
	initial begin
		IRW = 32'b0;
		PC4W = 32'b0;
		AOW = 32'b0;
		DRW = 32'b0;
	end
	always @(posedge Clk) begin
		if (Reset) begin
			IRW = 32'b0;
			PC4W = 32'b0;
			AOW = 32'b0;
			DRW = 32'b0;
		end else begin
			IRW = IRM;
			PC4W = PC4M;
			AOW = AOM;
			DRW = Dout;
		end
	end

	ctrl controllerM (
    .OpCode(IRM[`OpCode]), 
    .Funct(IRM[`Funct]), 
    .MemWrite(MemWrite)
    );
	
	dm DMM (
    .Addr(AOM[11:2]), 
    .Din(MF_RT_M_OUT), 
    .We(MemWrite), 
    .Clk(Clk), 
    .Reset(Reset), 
    .Dout(Dout)
    );
	 
	mf MF_RT_M (
    .Wd(MUX_RF_WD_OUT), 
    .Rd(RTM), 
    .Forward_Sel(Forward_RT_M_Sel), 
    .MF_OUT(MF_RT_M_OUT)
    );

endmodule
