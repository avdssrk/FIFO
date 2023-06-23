`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:43 06/23/2023 
// Design Name: 
// Module Name:    fifo_v1 
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
module fifo_v1 #(parameter DSIZE=4, parameter ADDRSIZE=4)( input wclk,
					input wen,
					input [DSIZE-1:0] wdata,
					input rclk,
					input ren,
					input rst,
					output [DSIZE-1:0] rdata,
					output empty,
					output full
    );
	
	wire [ADDRSIZE:0] wcount, rcount;
	wire [ADDRSIZE-1:0] waddr,raddr;
	wire WRITE_EN, READ_EN;
	
	assign waddr = wcount[ADDRSIZE-1:0];
	assign raddr = rcount[ADDRSIZE-1:0];
	
	fifo_mem #(DSIZE,ADDRSIZE) fifo_m
					(wclk,
					 WRITE_EN,
					 wdata,
					 waddr,
					 raddr,
					 rdata);
	flag_gen #(ADDRSIZE) flags(wcount,rcount,empty,full);
	
	write_counter #(ADDRSIZE) wrcounter(
			rst,
			wclk,
			wen,
			full,
			WRITE_EN,
			wcount);
	read_counter #(ADDRSIZE) rcounter(
			rst,
			rclk,
			ren,
			empty,
			rcount);
	
	
	
	
	
	
	

endmodule
