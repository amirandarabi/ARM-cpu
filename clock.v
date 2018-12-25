module clock
	#(parameter delay = 100)
	(clk);
	output reg clk = 1;

	always #delay clk = ~clk;
endmodule
//checked