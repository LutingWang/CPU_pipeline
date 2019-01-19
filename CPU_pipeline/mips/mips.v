`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:40 12/04/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );

	wire StallF, StallD, FlushE;
	wire [2:0] Forward_RS_D_Sel, Forward_RT_D_Sel, Forward_RS_E_Sel, Forward_RT_E_Sel, Forward_RT_M_Sel;
	wire [31:0] Instr;
	
	datapath pipeline_dp (
    .StallF(StallF), 
    .StallD(StallD), 
    .FlushE(FlushE), 
    .Forward_RS_D_Sel(Forward_RS_D_Sel), 
    .Forward_RT_D_Sel(Forward_RT_D_Sel), 
    .Forward_RS_E_Sel(Forward_RS_E_Sel), 
    .Forward_RT_E_Sel(Forward_RT_E_Sel), 
    .Forward_RT_M_Sel(Forward_RT_M_Sel), 
    .Clk(clk), 
    .Reset(reset), 
    .IRD(Instr)
    );
	 
	hazard pipeline_hzd (
    .Instr(Instr), 
    .Clk(clk), 
    .Reset(reset), 
    .StallF(StallF), 
    .StallD(StallD), 
    .FlushE(FlushE), 
    .Forward_RS_D_Sel(Forward_RS_D_Sel), 
    .Forward_RT_D_Sel(Forward_RT_D_Sel), 
    .Forward_RS_E_Sel(Forward_RS_E_Sel), 
    .Forward_RT_E_Sel(Forward_RT_E_Sel), 
    .Forward_RT_M_Sel(Forward_RT_M_Sel)
    );


endmodule
