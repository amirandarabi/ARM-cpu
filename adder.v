module adder #(parameter n = 31)( cin , a, b , s, cout);
input [n:0] cin, b, a ;
output [n:0] cout,s;

assign s = a ^ b ^cin ;
assign cout =(a & b)|(a & cin)|(b &cin);
endmodule
