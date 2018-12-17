module adder ( cin , a, b , s, cout);
input [31:0] cin, b, a ;
output [31:0] cout,s;

assign s = a ^ b ^cin ;
assign cout =(a & b)|(a & cin)|(b &cin);
endmodule