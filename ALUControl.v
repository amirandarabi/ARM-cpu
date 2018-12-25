module ALUcontrol
  #(
     parameter delay = 100
    )
    (
      input [1:0] ALUop,
      input [31:0] instruction,
      output reg[3:0] opt
    );
    
    wire [5:0]opID;
    assign opID = {ALUop, instruction[30], instruction[29], instruction[24]};
    
    always @(opID) begin
      opt = 4'bz;
 
      casex(opID)
        5'b00xxx: opt = 4'b0010;
        5'bx1xxx: opt = 4'b0111;
        5'b1x001: opt = 4'b0010;
        5'b1x101: opt = 4'b0110;
        5'b10000: opt = 4'b0000;
        5'b1x010: opt = 4'b0001;
      endcase
    end
  
endmodule
//checked