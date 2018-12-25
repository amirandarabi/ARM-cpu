module adder 
#(parameter n = 64,
parameter delay = 0)
( cin , a, b , s, cout);

	input cin;
	input [n-1:0] b;
	input [n-1:0] a ;
	output cout;
	output [n-1:0] s;

	assign {cout, s} = a + b + cin;
endmodule

//checked