module testbench;
    reg signed [31:0] A;
    reg signed [31:0] B;
    wire signed [31:0] RESULT;

    mult MULT(.a(A), .b(B), .result(RESULT));

    initial begin
        $monitor("A=%d B=%d RESULT=%d", A, B, RESULT);
		// 1 * 2 = 2
    		#0 A = 1; B = 2;
		// 1 * 0 = 0
		#1 A = 1; B = 0;
		// 25 * 520843 = 13021075
		#1 A = 25; B = 520843;
		//39474 * 40392 = 1594433808
		#1 A = 39474; B = 40392;
		// -3348 * 3294 = -11028312
		#1 A = -3348; B = 3294;
		// 3294 * -3348 = -11028312
		#1 A = 3294; B = -3348;
		// -45598 * -342 = 15594516
		#1 A = -45598; B = -342;
    end
endmodule // testbench
