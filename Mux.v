module Mux(s,a,b,f);
	parameter n = 5;
	input s;
	input [4:0]a,b;
	output reg[4:0]f;
	
	always
	begin
		case (s)
       			0:f=a;
			1:f=b;
		endcase
	end
endmodule