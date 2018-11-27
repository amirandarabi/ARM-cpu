module ALU(A, B, Op, Z, F);
 input [63:0] A, B;
 input [3:0] Op;
 output reg [63:0]F;
 output reg Z;

always @(A,B,Op)
begin
case(Op)
4'b0000:F = A+B;
endcase
if(F==0)begin
Z = 1;
end
else begin
Z <= 0;
end
end


endmodule