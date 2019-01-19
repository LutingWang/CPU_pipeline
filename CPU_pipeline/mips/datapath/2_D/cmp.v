`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:54 12/03/2018 
// Design Name: 
// Module Name:    cmp 
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
module cmp(
    input [31:0] Rd1,
    input [31:0] Rd2,
    input [5:0] OpCode,
    output Branch
    );
	 
	`include "header.v"

	assign Branch = ((OpCode == `beq && Rd1 == Rd2) 
	                ) ? 1 : 0;

endmodule
