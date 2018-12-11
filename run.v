module RUN(); changing to arm
wire oldpc , newpc, dataA;

clock c(clk);
//input of adder is output of pc 
//output of adder is new input of pc
adder Adder(0, oldpc , newpc);
//reset = 0 and pc is in the writing mode
pc PC(clk,newpc,0,1,oldpc);
//regbank register(a,b,c,w,dataC,clk,dataA,dataB);
//ALU alu(dataA, B, Op, Z, F);
endmodule 