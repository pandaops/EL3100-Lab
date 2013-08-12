`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:13 08/12/2013
// Design Name:   johnson
// Module Name:   /home/pclab1/EL3100_Lab_75_122/Week2_2/johnsontest.v
// Project Name:  Week2_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: johnson
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module johnsontest;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire q3;
	wire q2;
	wire q1;
	wire q0;

	// Instantiate the Unit Under Test (UUT)
	johnson uut (
		.q3(q3), 
		.q2(q2), 
		.q1(q1), 
		.q0(q0), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		rst = 1'b1;

		// Wait 100 ns for global reset to finish
		#100
        rst=1'b0;
        #500
        rst=1'b1;
        
		// Add stimulus here

	end
    always #20 clk=~clk;
      
endmodule

