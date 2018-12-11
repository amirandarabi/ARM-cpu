module pc(clk,newpc,rst,w,oldpc);
	// Define delay parameter of module
	parameter delay = 100;
	input [63:0]newpc;
	input clk,w,rst;
	output reg[63:0] oldpc;
	always@(posedge clk )
	begin 
		;
		//write oldpc
		// if reset is zero and write is 1 write newpc in oldpc
		if (rst==1)
			#delay oldpc=64'd0;
		else if (w==1)
			#delay oldpc=newpc;
		//reset oldpc

	end
//$time(delay);
endmodule