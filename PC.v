module pc(clk,newpc,rst,w,oldpc);
	// Define delay parameter of module
	parameter delay = 100;
	input [63:0]newpc;
	input clk,w,rst;
	output reg[63:0] oldpc;
	always@(posedge clk )
	begin 
		#delay;
		//write oldpc
		// if reset is zero and write is 1 write newpc in oldpc
		if (w==1&& rst==0)
			oldpc=newpc;
		//reset oldpc
		if (rst==1)
			oldpc=64'd0;
	end
//$time(delay);
endmodule