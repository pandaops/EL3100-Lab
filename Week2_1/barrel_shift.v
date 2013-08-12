`timescale 1ns / 1ps

module mux_4x1(in1,in2,in3,in4,s1,s2,mux_out);
    input in1,in2,in3,in4; //Inputs to the Multiplexer
    input s1,s2; //Control Lines
    output mux_out;
    assign mux_out = (s2 ? ( s1 ? in4:in3 ) : (s1 ? in2 : in1 ));
endmodule

module barrel_shift(SW,k,S);

wire [3:0]D;
input [1:0]SW;
input [1:0]k;

output [3:0] S;

assign D=SW[1]?(SW[0]?4'd8:4'd13):(SW[0]?4'd7:4'd9);

mux_4x1 m1(D[3],D[0],D[1],D[2],k[0],k[1],S[3]);
mux_4x1 m2(D[2],D[3],D[0],D[1],k[0],k[1],S[2]);
mux_4x1 m3(D[1],D[2],D[3],D[0],k[0],k[1],S[1]);
mux_4x1 m4(D[0],D[1],D[2],D[3],k[0],k[1],S[0]);

endmodule
