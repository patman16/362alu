module testbench;
    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] RESULT;

    srl SRL(.a(A), .b(B), .result(RESULT));

    initial begin
        $monitor("A=%x B=%x RESULT=%x", A, B, RESULT);
		// 80000000h << 1 = 40000000h
    	        #0 A = 32'h80000000; B = 32'h00000001;
		// 40000000h << 2 = 10000000h
		#1 A = 32'h40000000; B = 32'h00000002;
		// 08DF0000h << 5 = 0046F800h
		#1 A = 32'h08DF0000; B = 32'h00000005;
		// 80000000h << 31 = 00000001h
		#1 A = 32'h80000000; B = 32'h0000001F;
    end
endmodule // testbench
