module datamemory(clk, address, data_in, read, write, data_out);
	input clk;
	input [63:0] address;
	input [63:0] data_in;
	input read;
	input write;
	output [63:0] data_out;

	reg [63:0] memory [0:127];
	initial 
	begin
	memory[0] = 5;
	memory[1] = 5;
	memory[2] = 5;
	memory[3] = 5;
	memory[4] = 5;

	end
	
	assign data_out = read ? memory[address] : 64'bz;
	
	always @(posedge clk) begin
		if(write == 1'b1) begin
			memory[address] <= data_in;
		end
	end 
endmodule