module ALU_4_bit( 
  input [3:0] A,
  input [3:0] B,
  input [2:0] Opcode,
  
  output reg [3:0] Output,
  output reg Carry_out,
  output reg zero
);
  
  
  always @(*)
    begin
      
      Carry_out = 0;
      
      case (Opcode)
        
        3'b000: begin
          
          {Carry_out, Output} = A + B;
          
        end
        
        
        3'b001: begin
          
          {Carry_out, Output} = A - B;
          
        end
      
        
        3'b010: begin
          
          Output = A & B;
          
        end
        
        
        3'b011: begin
          
          Output = A | B;
          
        end
        
        
        3'b100: begin
          
          Output = A ^ B;
          
        end
        
        
        3'b101: begin
          
          Output = ~A;
          
        end
        
        
        default: begin
          
          Output = 4'b0000;
          Carry_out = 0;
          
        end
        
      endcase
      
  
  
  if (Output == 4'b0000)
    zero = 1;
  else
    zero = 0;
  end
  
endmodule