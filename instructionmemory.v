module instructionmemory(clk, address ,data_out);
	input clk;
	input [31:0] address;
	output reg[31:0] data_out;

	reg [31:0] memory [0:127];
	initial
	memory[0] =32'd23 ;
	
	always @(posedge clk) begin
		 data_out = memory[address];
	end 
endmodule