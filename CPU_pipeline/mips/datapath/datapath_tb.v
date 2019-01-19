`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:16 12/04/2018
// Design Name:   datapath
// Module Name:   C:/Users/ThinkPad/Documents/ISE/CPU_pipeline/CPU_pipeline/mips/datapath/datapath_tb.v
// Project Name:  CPU_pipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datapath_tb;

	// Inputs
	reg StallF;
	reg StallD;
	reg FlushE;
	reg [2:0] Forward_RS_F_Sel;
	reg [2:0] Forward_RS_D_Sel;
	reg [2:0] Forward_RT_D_Sel;
	reg [2:0] Forward_RS_E_Sel;
	reg [2:0] Forward_RT_E_Sel;
	reg [2:0] Forward_RT_M_Sel;
	reg Clk;
	reg Reset;

	// Outputs
	wire [31:0] IRD;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.StallF(StallF), 
		.StallD(StallD), 
		.FlushE(FlushE), 
		.Forward_RS_F_Sel(Forward_RS_F_Sel), 
		.Forward_RS_D_Sel(Forward_RS_D_Sel), 
		.Forward_RT_D_Sel(Forward_RT_D_Sel), 
		.Forward_RS_E_Sel(Forward_RS_E_Sel), 
		.Forward_RT_E_Sel(Forward_RT_E_Sel), 
		.Forward_RT_M_Sel(Forward_RT_M_Sel), 
		.Clk(Clk), 
		.Reset(Reset), 
		.IRD(IRD)
	);

	initial begin
		// Initialize Inputs
		StallF = 0;
		StallD = 0;
		FlushE = 0;
		Forward_RS_F_Sel = 0;
		Forward_RS_D_Sel = 0;
		Forward_RT_D_Sel = 0;
		Forward_RS_E_Sel = 0;
		Forward_RT_E_Sel = 0;
		Forward_RT_M_Sel = 0;
		Clk = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 Clk = ~Clk;
      
endmodule

