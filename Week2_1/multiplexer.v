`timescale 1ns / 1ps

module mux_4x1(in1,in2,in3,in4,s1,s2,mux_out);

    input in1,in2,in3,in4; //Inputs to the Multiplexer
    input s1,s2; //Control Lines
    output mux_out;
    assign mux_out = (s2 ? ( s1 ? in4:in3 ) : (s1 ? in2 : in1 ));
endmodule
