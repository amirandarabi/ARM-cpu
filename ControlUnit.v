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
  output [1 : 0] ALUOp
  ); 
  
  reg [8:0] ControlOut;
  
  assign 
  {Reg2Loc, ALUSrc, MemtoReg,
   RegWrite, MemRead, MemWrite,
   Branch, ALUOp}
   = ControlOut;
   
   always @( opCode )
    casex(opCode)
      11'b00000000000: ControlOut = 9'b000000000;

      11'b1xx0101x000: ControlOut = 9'b000100010;

      11'b11111000010: ControlOut = 9'b011110000;

      11'b11111000000: ControlOut = 9'b110001000;

      11'b10110100xxx: ControlOut = 9'b100000101;

      default: ControlOut = 9'bz;
    endcase
    
  endmodule
  //checked