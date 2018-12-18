module ControlUnit
  #(parameter delay = 100)
  (
  input [10 : 0] opCode,
  output Reg2Loc,
  output ALUSrc,
  output MemtoReg,
  output RegWrite,
  output MemRead,
  output MemWrite,
  output Branch,
  output [1 : 0] ALUOp,
  output UncondBranch
  ); 
  
  reg [9:0] ControlOut;
  
  wire [3:0] opcodeID = 
  {opCode[10], opCode[6], opCode[4], opCode[1]};

  assign 
  {Reg2Loc, ALUSrc, MemtoReg,
   RegWrite, MemRead, MemWrite,
   Branch, Branch, ALUOp, UncondBranch}
   = ControlOut;
   
   always @( opCode )
    casex(opcodeID)
      // B
      4'b00xx: ControlOut = 10'bx0x000xxx1;
      // CBZ
      4'b10xx: ControlOut = 10'b10x0001010;
      // LDUR
      4'b1101: ControlOut = 10'bx111100000;
      // STUR
      4'b1100: ControlOut = 10'b11x0010000;
      // R-Type
      4'b1110: ControlOut = 10'b0001000100;
      default: ControlOut = 10'bz;
    endcase
    
  endmodule