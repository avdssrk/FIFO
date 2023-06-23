`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:03 06/23/2023 
// Design Name: 
// Module Name:    read_counter 
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
module read_counter #(parameter ADDRSIZE=4)(
			input rst,
			input rclk,
			input ren,
			input empty,
			output [ADDRSIZE:0] rcnt
				);
	
	assign rcnt = rcount;
	reg [ADDRSIZE:0] rcount;
	
	always @(posedge rclk) begin
		if(rst)
			rcount<=0;
		else if(ren && !empty) begin
			rcount<=rcount+1;
		end
	end



endmodule
