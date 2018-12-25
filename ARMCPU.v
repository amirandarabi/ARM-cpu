module CPU();
wire rstPC,wPC,regMux_selector,wRegbank,aluMUX_selector,opAlu,jumpMUX_selector,readMem,writeMem,Mem_selector;
clock c(clk);
pc PC(clk,newpc,rstpc,wpc,oldpc);
adder pcadder( 0 , oldpc, 4 , pcadder_Out, cout);
instructionmemory imemory(clk, oldpc ,instruction);
Mux regMUX( regMux_selector, instruction[20:16], instruction[4:0], regMUX_Out); 
regbank register(clk, instruction[9:5], regMUX_Out, instruction[4:0], wRegbank, memMUX_Out, dataRead1, dataRead2);
signextend signex(instruction, signexOut);
Mux aluMUX( aluMUX_selector, dataRead2, signex_Out, aluMUX_Out);
ALU alu(dataRead1, aluMUX_Out, opAlu, Z, alu_Out);
adder jumpadder( 0 ,signex_Out, oldpc , jumpadder_Out, cout);
Mux jumpMUX( jumpMUX_selector, jumpadder_Out, pcadder_Out, newpc);
datamemory dmemory(clk, alu_Out, dataRead2, read, write, dataMem_out);
Mux memMUX(Mem_selector , dataMem_out, alu_Out, memMUX_Out);







endmodule 