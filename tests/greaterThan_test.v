module testbench;
	reg signed [31:0] A;
	reg signed [31:0] B;
	wire EQUIVALENT;

	greaterThan GREATER(.a(A), .b(B), .eq(EQUIVALENT));

	initial begin
	$monitor("A = %d B = %d GREATER = %b", A, B, EQUIVALENT);
	#0 A = 1; B = 2;
	#1 A = 2; B = 1;
	#1 A = -2; B = -1;
	#1 A = -1; B = -2;
	#1 A = 0; B = 0;
	#1 A = -2; B = 1;
	#1 A = 2; B = -1;
	#1 A = 1; B = -2;
	#1 A = -1; B = 2;
	end
endmodule
