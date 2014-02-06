module and32(a, b, f);
   parameter N = 32;

   input [N-1:0] a,b;
   output [N-1:0] f;

   assign f = a & b;

endmodule
