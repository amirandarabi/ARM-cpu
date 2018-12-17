module adder ( cin , a, b , s, cout);
parameter n = 31;
input [n:0] cin, b, a ;
output [n:0] cout,s;

assign s = a ^ b ^cin ;
assign cout =(a & b)|(a & cin)|(b &cin);
endmodule