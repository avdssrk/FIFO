`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:08 06/23/2023 
// Design Name: 
// Module Name:    flag_gen 
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
module flag_gen #(parameter ADDRSIZE=4)
	(input [ADDRSIZE:0] wcount,
	 input [ADDRSIZE:0] rcount,
	 output empty,
	 output full
    );

	assign empty=(wcount==rcount);
	assign full = (rcount=={~wcount[ADDRSIZE],wcount[ADDRSIZE-1:0]});

endmodule
