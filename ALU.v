module ALU(A, B, Op, Z, F);
	input [63:0] A, B;
	// operator function
 	input [3:0] Op;
 	output reg [63:0]F;
	//if output (F) is zero asign Z=1  
	output reg Z;

	always @(A,B,Op)
	begin
		// Decoding operators
		case(Op)
		4'b0000:F = A&B;
		4'b0001:F = A|B;
		4'b0010:F = A+B;
		4'b0110:F = A-B;
		4'b0111:F = B;
		4'b1100:F = ~(A|B);
		endcase
		// initial z 
		if(F==0)
		begin
			Z = 1;
		end
		else
		begin
			Z <= 0;
		end
	end


endmodule