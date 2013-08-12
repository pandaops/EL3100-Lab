`timescale 1ns / 1ps

module dff(q,qb,d,rst,clk);

output reg q,qb;
input d,rst,clk;
always @(posedge clk)
begin
    if (~rst)
        begin
            q<=1'b0;
            qb<=1'b1;
        end
    else
        begin
            q<=d;
            qb<=~d;
        end
end

endmodule


module divider(clk,clk_out);

input clk;
output reg clk_out;
reg [26:0] counter;
initial begin
    counter=27'd0;
    clk_out=0;
end
always @(posedge clk)
    begin
        if (counter==27'd25000000)
            begin
                counter=27'd0;
                clk_out=~clk_out;
            end
        else
        begin
            counter=counter+1;
        end
    end
    
endmodule



module johnson(q3,q2,q1,q0,clk,rst);

input clk,rst;
wire clk_out;
output q0,q1,q2,q3;
wire q3b,q2b,q1b,q0b;
divider dl1(clk,clk_out);
dff D3(q3,q3b,q0b,rst,clk_out);
dff D2(q2,q2b,q3,rst,clk_out);
dff D1(q1,q1b,q2,rst,clk_out);
dff D0(q0,q0b,q1,rst,clk_out);

endmodule
