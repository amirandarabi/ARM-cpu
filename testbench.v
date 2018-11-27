module testbench(clk);
 reg [63:0] A[0:7], B[0:7];
 reg [3:0] Op[0:7];
 input clk;

 wire [63:0]F;
 wire Z;
 wire [63:0] a,b;
 wire [3:0]op;
 integer i=0;
//inital test data
initial 
begin
A[0]=64'd0;B[0]=64'd265;Op[0]=4'b0000;
A[1]=64'd1;B[1]=64'd654;Op[1]=4'b1100;
A[2]=64'd6;B[2]=64'd549;Op[2]=4'b0110;
A[3]=64'd9;B[3]=64'd564;Op[3]=4'b0001;
A[4]=64'd4;B[4]=64'd788;Op[4]=4'b0010;
A[5]=64'd2;B[5]=64'd567;Op[5]=4'b0111;
A[6]=64'd4;B[6]=64'd894;Op[6]=4'b1100;
A[7]=64'd7;B[7]=64'd844;Op[7]=4'b0000;
end
//fetch test data
always @(posedge clk)
if(i<8)
begin
	a= A[i];
	b= B[i];
	op=Op[i];
	A[i]=F[i];
	i = i+1;
end
end

ALU run(.A(a), .B(b), .Op(op), .Z(Z), .F(F));
endmodule 