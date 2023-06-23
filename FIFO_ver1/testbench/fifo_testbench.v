`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:12:57 06/23/2023
// Design Name:   fifo_v1
// Module Name:   C:/Users/Pulak Mondal/Desktop/Shiva/FIFO_1/fifo_testbench.v
// Project Name:  FIFO_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo_v1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifo_testbench;

	// Inputs
	reg wclk=0;
	reg wen=0;
	reg [3:0] wdata;
	reg rclk=0;
	reg ren=0;
	reg rst;

	// Outputs
	wire [3:0] rdata;
	wire empty;
	wire full;

	// Instantiate the Unit Under Test (UUT)
	fifo_v1 uut (
		.wclk(wclk), 
		.wen(wen), 
		.wdata(wdata), 
		.rclk(rclk), 
		.ren(ren), 
		.rst(rst), 
		.rdata(rdata), 
		.empty(empty), 
		.full(full)
	);
	
	always #10 wclk=~wclk;
	always #15 rclk=~rclk;

	initial begin
		// Initialize Inputs
		
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst=0;
		// Add stimulus here
		
		wen=1; 
		
		wdata = 4'b1111;
		#20 wdata = 4'b1010;
		#20 wdata = 4'b0101;
		#20 wdata = 4'b1100;
		#20 wdata = 4'b1111;
		#20 wdata = 4'b1010;
		#20 wdata = 4'b0101;
		#20 wdata = 4'b1100;
		#20 wdata = 4'b1111;
		#20 wdata = 4'b1010;
		#20 wdata = 4'b0101;
		#20 wdata = 4'b1100;
		#20 wdata = 4'b1111;
		#20 wdata = 4'b1010;
		#20 wdata = 4'b0101;
		#20 wdata = 4'b1100;
		#20 wdata = 4'b1001;
		#20;
		wen =0;
		ren = 1;

	end
      
endmodule

