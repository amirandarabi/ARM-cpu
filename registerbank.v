module regbank(a,b,c,w,dataC,clk,dataA,dataB);
	parameter delay =100;
	// a and b are the address of read register . c is the address of write regiter 
	input [63:0] a,b,c;
	input w,clk;
	//datec is the  value of write by register
	input [63:0]dataC;
	// dataA and dataB which values the register read 
	output reg[63:0]dataA,dataB;
	reg [63:0]registerbank [0:99];
	initial 
		begin
		#delay;
		//registerbank[0] =12;
		//fetch data from registerbank  and assign to dataA
		dataA=registerbank[a];
		//fetch data from registerbank  and assign to dataB
		dataB=registerbank[b];
		//write dataC in registerbank
		if (w==1)
			registerbank[c]=dataC;
		end


//assign dataA=registerbank[a];


endmodule