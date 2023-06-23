`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:32 06/23/2023 
// Design Name: 
// Module Name:    write_counter 
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
module write_counter #(parameter ADDRSIZE=4)(
			input rst,
			input wclk,
			input wen,
			input full,
			output WRITE_EN,
			output [ADDRSIZE:0] wcnt
				);
	assign WRITE_EN = wen && (!full);
	assign wcnt = wcount;
	reg [ADDRSIZE:0] wcount;
	
	always @(posedge wclk) begin
		if(rst)
			wcount<=0;
		else if(wen && !full) begin
			wcount<=wcount+1;
		end
	end

endmodule
