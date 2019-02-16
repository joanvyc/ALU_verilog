module nbit_subst #(parameter bits = 8) (
	input bin,
	input [bits-1:0] A,
	input [bits-1:0] B,
	
	output bout,
	output [bits-1:0] X
	);
	
	logic [bits-1:0] in_bout;
	fullsubstractor fs(
		.in_0(A[0]),
		.in_1(B[0]),
		.bin,
		.bout(in_bout[0]),
		.out(X[0]));
	
	genvar i;
	generate
		for (i = 1; i < bits; i++) begin : generate_adder
			fullsubstractor fs(
				.in_0(A[i]),
				.in_1(B[i]),
				.bin(in_bout[i-1]),
				.bout(in_bout[i]),
				.out(X[i]));
		end
	endgenerate
	assign bout = in_bout[bits-1];
endmodule
