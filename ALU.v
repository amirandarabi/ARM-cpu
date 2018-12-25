module ALU
	#(
		parameter n = 64,
		parameter delay = 100)
	(A, B, Op, Z, F);
 input [n-1:0] A;
 input [n-1:0] B;
 input [3:0] Op;
 output reg [63:0]F;
 output Z;

assign Z =F ? 0 : 1 ;
always @(*)begin
	F = 64'hz;
	case(Op)
		4'b0000: F = A & B;
		4'b0001: F = A | B;
		4'b0010: F = A + B;
		4'b0110: F = A - B;
		4'b0111: F = B;
		4'b1100: F = ~(A|B);
	endcase
end


endmodule

//checked