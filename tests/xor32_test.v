module testbench;
   reg[31:0] A;
   reg[31:0] B;
   wire[31:0] OUT;

   xor32 TESTER (.a(A), .b(B), .f(OUT));

  initial begin
    $monitor("A = %b B = %b OUT=%b", A, B, OUT);
    #0 A = 32'b10000000000000000000000000000001; B = 32'b10000000000000000000000000000001; 
    #1 A = 4'b0000; B = 4'b0000; 
    #1 A = 4'b1000; B = 4'b1010; 
    #1 A = 32'b000011111111110101; B = 32'b0000000011110100000011; 
  end
endmodule
