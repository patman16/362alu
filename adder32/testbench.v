module testbench;
   reg[31:0] A;
   reg[31:0] B;
   reg CIN;
   wire[31:0] SUM;
   wire COUT;

   add_sub_32 EVERYTHING (.a(A), .b(B), .sel(CIN), .sum(SUM), .cout(COUT));

  initial begin
    $monitor("A = %d B = %d CIN=%d SUM=%d COUT=%d", A, B, CIN, SUM, COUT);
    #0 A = 32'd24 ; B = 32'd10; CIN = 1'b1;
    #1 A = 4'b0000; B = 4'b0000; CIN = 1'b0;
    #1 A = 4'b1000; B = 4'b0010; CIN = 1'b0;
    #1 A = 4'b0101; B = 4'b0010; CIN = 1'b0;
  end
endmodule
