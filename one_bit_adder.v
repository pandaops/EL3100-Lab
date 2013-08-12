module fulladd(s, cout, a, b, cin);
	
	input a;
	input b;
	input cin;
	output s;
	output cout;

	wire s1, c1, c2;

	xor(s1,a,b);
	and(c1,a,b);

	xor(s,s1,cin);
	and(c2,s1,cin);

	xor(cout,c2,c1);

endmodule
