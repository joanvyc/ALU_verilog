module nbit_shift #(parameter bits=8) (
	input [bits-1:0] A,
	input [$clog2(bits)-1:0] B,
	output [bits-1:0] X);
	
	genvar i;
	generate
		for (i = 0; i < bits; i++) begin : generate_and
			assign X[i] = A[i] & B[i];
		end
	endgenerate
	
endmodule
			