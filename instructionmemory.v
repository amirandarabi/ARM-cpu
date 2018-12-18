module instructionmemory(clk, address ,data_out);
	input clk;
	input [31:0] address;
	output reg[31:0] data_out;

	reg [31:0] memory [0:127];
	initial
	begin
	memory[0] = 32'h8B1F03E5;
	memory[1] = 32'hF84000A4;
	memory[2] = 32'h8B040086;
	memory[3] = 32'hF80010A6;
	end
	
	always @(posedge clk) begin
		 data_out = memory[address];
	end 
endmodule