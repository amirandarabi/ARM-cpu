module adder ( b , s);
	input [63:0]b;
	output [63:0] s;

	assign s = 64'd4 + b ;
	//assign cout =(64'd4 & b)|(64'd4 & cin)|(b &cin);
endmodule