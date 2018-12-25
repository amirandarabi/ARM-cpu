module SignExtend
  (input [31 : 0] instruction,
  output reg [63 : 0] out
  );
  
  wire opcodeID = instruction[30];
  reg sigN;
  
  always @(instruction) begin 
    out = 64'bz;
    case (opcodeID)      
      1'b0: begin    //Conditional Branch
        sigN = instruction[23];
        out = {{45{sigN}}, instruction[23:5]};
      end
      
      1'b1: begin   // LDUR, STUR
        sigN = instruction[20];
        out = {{55{sigN}}, instruction[20:12]};
      end 
    endcase
  end
  
endmodule
//checked