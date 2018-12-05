module regbank(a,b,c,w,dataC,clk,dataA,dataB);
parameter delay =100;
input [63:0] a,b,c;
input w,clk;
input [63:0]dataC;
output reg[63:0]dataA,dataB;
reg [63:0]registerbank [0:99];
initial 
	begin
	#delay;
	//registerbank[0] =12;
	dataA=registerbank[a];

	end


//assign dataA=registerbank[a];


endmodule