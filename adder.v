module adder (a, b , s);
	input [63:0] a,b;
	output [63:0] s;

	assign s = a + b ;
	//assign cout =(64'd4 & b)|(64'd4 & cin)|(b &cin);
endmodule