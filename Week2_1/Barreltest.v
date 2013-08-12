`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:23 08/12/2013
// Design Name:   barrel_shift
// Module Name:   /home/pclab1/EL3100_Lab_75_122/Week2/Barreltest.v
// Project Name:  Week2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Barreltest;

	// Inputs
	reg [1:0] SW;
	reg [1:0] k;

	// Outputs
	wire [3:0] S;

	// Instantiate the Unit Under Test (UUT)
	barrel_shift uut (
		.SW(SW), 
		.k(k), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		SW = 2'b00;
		k = 2'b00;
		// Wait 100 ns for global reset to finish
		#100
        k=2'b01;
        #100
        k=2'b10;
        #100
        k=2'b11;
        #100
        SW=2'b01;k=2'b00;
        #100
        k=2'b01;
        #100
        k=2'b10;
        #100
        k=2'b11;
        
		// Add stimulus here

	end
      
endmodule

