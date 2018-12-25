<<<<<<< HEAD
module Mux
  #( 
  parameter n = 64
  )
  
  (
  input selector,
  input [n-1 : 0] in1,
  input [n-1 : 0] in2,
  output [n-1 : 0] muxOut
  );
  
  assign muxOut = selector ? in2 : in1; 
  
=======
module Mux( s, a, b, f);
	parameter n = 5;
	input s;
	input [4:0]a,b;
	output reg[4:0]f;
	
	always
	begin
		case(s)
       		0:f=a;
		1:f=b;
		endcase
	end
>>>>>>> 580371176b7c4d2e5050d4df0445b3a909052ac6
endmodule
