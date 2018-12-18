module signExtend(i,j);
	input [31:0]i;
	output[63:0]j;
	always 
	begin
	j={{32{0}},i};
	end
endmodule