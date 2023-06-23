`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:36 06/23/2023 
// Design Name: 
// Module Name:    fifo_mem 
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
module fifo_mem #(parameter DSIZE=8,
						parameter ADDRSIZE = 4)
					(input wclk,
					 input wen,
					 input [DSIZE-1:0] wdata,
					 input [ADDRSIZE-1:0] waddr,
					 input [ADDRSIZE-1:0] raddr,
					 output [DSIZE-1:0] rdata
    );
	
	localparam DEPTH=1<<ADDRSIZE;
	reg [DSIZE-1:0] mem [0:DEPTH-1];
	
	assign rdata = mem[raddr];
	
	always @ (posedge wclk) begin
		if(wen) mem[waddr]<=wdata;
		
	end
	

endmodule
