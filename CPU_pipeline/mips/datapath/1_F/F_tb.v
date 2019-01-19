`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:26:06 12/03/2018
// Design Name:   F
// Module Name:   C:/Users/ThinkPad/Documents/ISE/CPU_pipeline/CPU_pipeline/mips/datapath/1_F/F_tb.v
// Project Name:  CPU_pipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: F
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module F_tb;

	// Inputs
	reg [31:0] NPC;
	reg [1:0] NPC_Sel;
	reg Branch;
	reg Clk;
	reg Reset;
	reg StallF;
	reg StallD;
	reg [2:0] Forward_RS_F_Sel;
	reg [31:0] PC8fromE;
	reg [31:0] AO;
	reg [31:0] PC8fromM;
	reg [31:0] MUX_RF_WD_OUT;
	reg [31:0] RF_RD1;

	// Outputs
	wire [31:0] IRD;
	wire [31:0] PC8D;

	// Instantiate the Unit Under Test (UUT)
	F uut (
		.NPC(NPC), 
		.NPC_Sel(NPC_Sel), 
		.Branch(Branch),
		.Clk(Clk), 
		.Reset(Reset), 
		.StallF(StallF), 
		.StallD(StallD), 
		.IRD(IRD), 
		.PC8D(PC8D), 
		.Forward_RS_F_Sel(Forward_RS_F_Sel), 
		.PC8fromE(PC8fromE), 
		.AO(AO), 
		.PC8fromM(PC8fromM), 
		.MUX_RF_WD_OUT(MUX_RF_WD_OUT), 
		.RF_RD1(RF_RD1)
	);

	initial begin
		// Initialize Inputs
		NPC = 32'h0000_3010;
		NPC_Sel = 0;
		Branch = 0;
		Clk = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3008;
		AO = 32'h0000_300c;
		PC8fromM = 32'h0000_3010;
		MUX_RF_WD_OUT = 32'h0000_30014;
		RF_RD1 = 32'h0000_30018;

		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 1;
		Branch = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 2;
		Branch = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 2;
		Branch = 1;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 3;
		Branch = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 3;
		Branch = 1;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 1;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 3;
		Branch = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 3;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 3;
		Branch = 1;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 4;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20;
		NPC = 32'h0000_3010;
		NPC_Sel = 3;
		Branch = 0;
		Reset = 0;
		StallF = 1;
		StallD = 1;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;
		
		#20; Reset = 1; #20; 
		NPC = 32'h0000_3010;
		NPC_Sel = 0;
		Branch = 0;
		Reset = 0;
		StallF = 0;
		StallD = 0;
		Forward_RS_F_Sel = 0;
		PC8fromE = 32'h0000_3020;
		AO = 32'h0000_3030;
		PC8fromM = 32'h0000_3040;
		MUX_RF_WD_OUT = 32'h0000_30050;
		RF_RD1 = 32'h0000_3060;

	end
	
	always #10 Clk = ~Clk;
      
endmodule

