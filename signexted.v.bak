module signextend(in, out);
	input [31:0] in;
	output [63:0] out;
	wire sign;
	assign sign =in[31] ;
	assign out ={{32{sign}},in} ;

endmodule