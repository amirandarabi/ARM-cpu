module adder ( cin , a, b , s, cout);
<<<<<<< HEAD
input [31:0] cin, b, a ;
output [31:0] cout,s;
=======
parameter n = 31;
input [n:0] cin, b, a ;
output [n:0] cout,s;
>>>>>>> amir

assign s = a ^ b ^cin ;
assign cout =(a & b)|(a & cin)|(b &cin);
endmodule
