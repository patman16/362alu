module testbench;
    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] RESULT;

    sll SLL(.a(A), .b(B), .result(RESULT));

    initial begin
        $monitor("A=%x B=%x RESULT=%x", A, B, RESULT);
		// 00000001h << 1 = 00000002h
    	        #0 A = 32'h00000001; B = 32'h00000001;
		// 00000002h << 2 = 00000008h
		#1 A = 32'h00000002; B = 32'h00000002;
		// 000008DFh << 5 = 00011BE0h
		#1 A = 32'h000008DF; B = 32'h00000005;
		// 00000001h << 31 = 80000000h
		#1 A = 32'h00000001; B = 32'h0000001F;
    end
endmodule // testbench
