module regbank
  #(
    parameter delay = 100
  )
(clk, a, b, c, w, dataC, dataA, dataB);

	// a and b are the address of read register . c is the address of write regiter 
	input [4:0] a,b,c;
	input w,clk;
	//datec is the  value of write by register
	input [63:0]dataC;
	// dataA and dataB which values the register read 
	output [63:0]dataA;
	output [63:0]dataB;
	reg [63:0]registerbank [0:31];

		//fetch data from registerbank  and assign to dataA
	assign dataA=registerbank[a];
	//fetch data from registerbank  and assign to dataB
	assign dataB=registerbank[b];
			integer i;

	initial begin
		for(i=0;i<32;i=i+1)
			registerbank[i] = i;
		$monitor("4: %h  6: %h", registerbank[4], registerbank[6]);
	end
	always @(posedge clk) 
		begin
		//#delay;
		//write dataC in registerbank
		if (w==1)
			registerbank[c]=dataC;
		end
endmodule 