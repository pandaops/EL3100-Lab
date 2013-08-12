`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:02 08/12/2013
// Design Name:   mux_4x1
// Module Name:   /home/pclab1/EL3100_Lab_75_122/Week2/mux_test.v
// Project Name:  Week2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_4x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_test;

	// Inputs
	reg in1;
	reg in2;
	reg in3;
	reg in4;
	reg s1;
	reg s2;

	// Outputs
	wire mux_out;

	// Instantiate the Unit Under Test (UUT)
	mux_4x1 uut (
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.s1(s1), 
		.s2(s2), 
		.mux_out(mux_out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 1;
		in3 = 1;
		in4 = 0;
		s1 = 0;
		s2 = 0;

		// Wait 100 ns for global reset to finish
		
        #100
        s1=1;s2=0;
        #100
        s1=0;s2=1;
        #100
        s1=1;s2=1;
        
		// Add stimulus here

	end

     
endmodule

