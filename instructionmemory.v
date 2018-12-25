module InstructionMemory
  #( parameter size = 1024, 
     parameter delay = 50
     )
     
  ( 
  input [63 : 0] ReadAddress,
  output [31 : 0] Instruction
  );
  reg [7 : 0] memory [0 : size-1];
    integer i;
	initial 
	begin
	  	for(i=0;i<size;i=i+1)
  			memory[i]=0;

		memory[0] <= 8'hE5;
		memory[1] <= 8'h03;
		memory[2] <= 8'h1F;
		memory[3] <= 8'h8B;
		
	/*	memory[4] <= 8'b0;
		memory[5] <= 8'b0;
		memory[6] <= 8'b0;
		memory[7] <= 8'b0;

		memory[8] <= 8'b0;
		memory[9] <= 8'b0;
		memory[10] <= 8'b0;
		memory[11] <= 8'b0;

		memory[12] <= 8'b0;
		memory[13] <= 8'b0;
		memory[14] <= 8'b0;
		memory[15] <= 8'b0;*/

		memory[16] <= 8'hA4;
		memory[17] <= 8'h00;
		memory[18] <= 8'h40;
		memory[19] <= 8'hF8;
		
	/*	memory[20] <= 8'b0;
		memory[21] <= 8'b0;
		memory[22] <= 8'b0;
		memory[23] <= 8'b0;


		memory[24] <= 8'h86;
		memory[25] <= 8'h00;
		memory[26] <= 8'h04;
		memory[27] <= 8'h8B;
	
		memory[28] <= 8'h86;
		memory[29] <= 8'h00;
		memory[30] <= 8'h04;
		memory[31] <= 8'h8B;
	*/
		memory[32] <= 8'h86;
		memory[33] <= 8'h00;
		memory[34] <= 8'h04;
		memory[35] <= 8'h8B;
	
		/*memory[36] <= 8'b0;
		memory[37] <= 8'b0;
		memory[38] <= 8'b0;
		memory[39] <= 8'b0;

		memory[40] <= 8'b0;
		memory[41] <= 8'b0;
		memory[42] <= 8'b0;
		memory[43] <= 8'b0;

		memory[44] <= 8'b0;
		memory[45] <= 8'b0;
		memory[46] <= 8'b0;
		memory[47] <= 8'b0;*/

		memory[48] <= 8'hA6;
		memory[49] <= 8'h10;
		memory[50] <= 8'h00;
		memory[51] <= 8'hF8;
	end
  
  assign Instruction[7 : 0] = memory[ReadAddress]; 
  assign Instruction[15 : 8] = memory[ReadAddress + 1];
  assign Instruction[23 : 16] = memory[ReadAddress + 2];
  assign Instruction[31 : 24] = memory[ReadAddress + 3];

endmodule    
//checked
