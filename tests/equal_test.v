module testbench;
	reg signed [31:0] A;
	reg signed [31:0] B;
	wire  EQUIVALENT;

	equal EQ(.a(A), .b(B), .eq(EQUIVALENT));
	
	initial begin
		$monitor("A = %d B = %d EQUIVALENT=%d", A, B, EQUIVALENT);
		#0 A = 31'd3 ; B = 31'd1;
		#1 A = 31'd6 ; B = 31'd8;
		#1 A = 31'd19 ; B = 31'd17;
		#1 A = 31'd9 ; B = 31'd9;
		#1 A = 31'd15; B = 31'd15;
		#1 A = 31'd2130690048 ; B = 31'd232; 
	end
endmodule
