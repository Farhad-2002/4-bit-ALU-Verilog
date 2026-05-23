module ALU_4_bit_tb;
  
  reg [3:0] A;
  reg [3:0] B;
  reg [2:0] Opcode;
  
  wire [3:0] Output;
  wire Carry_out;
  wire zero;
  
  
  ALU_4_bit dut (
    .A(A),
    .B(B),
    .Opcode(Opcode),
    
    .Output(Output),
    .Carry_out(Carry_out),
    .zero(zero)
  );
  
  
  initial
    begin
      
    $dumpfile("dump.vcd"); 
    $dumpvars(0, ALU_4_bit_tb);
      
    end
  
  
  initial
    begin
      
      $display ("------------------------------------------------------");
      $display (" A     B    Opcode   Output    Carry_out   zero");
      $display ("------------------------------------------------------");
      $monitor (" %b   %b   %b   %b   %b   %b", 
                A, B, Opcode, Output, Carry_out, zero);
                          
      
      A = 4'b0001; B = 4'b1111; Opcode = 3'b000;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b000;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b001;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b010;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b011;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b100;
      #10;
                
      A = 4'b0001; B = 4'b1110; Opcode = 3'b101;
      #10;
                
      A = 4'b1010; B = 4'b1010; Opcode = 3'b001;
      #10;
                
      $finish;
                
    end
                
endmodule