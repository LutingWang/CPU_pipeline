`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:41:45 12/03/2018 
// Design Name: 
// Module Name:    im 
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
module im(
    input [11:2] Addr,
    output [31:0] Instr
    );

	reg [31:0] im[1023:0];
	
	integer i;
	initial begin
		for(i=0; i<1024; i=i+1) begin
			im[i] = 32'b0;
		end
		$readmemh("code.txt", im);
	end
	
	assign Instr = im[Addr];

endmodule
