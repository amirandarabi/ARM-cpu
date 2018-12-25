module pc#(parameter n = 64)(clk, newpc, rst, w, oldpc);
parameter delay = 100;
input [n-1:0] newpc;
input clk, w, rst;
output reg[n-1:0] oldpc;
always@(posedge clk )

	begin 
		//#delay;
		if (w==1&& rst==0)
			oldpc=newpc;
		if (rst==1)
			oldpc={n{1'd0}};
	end
//$time(delay);
endmodule