module nbit_not #(parameter bits=8) (
	input [bits-1:0] A,
	output [bits-1:0] X);
	
	genvar i;
	generate
		for (i = 0; i < bits; i++) begin : generate_not
			assign X[i] = ~A[i];
		end
	endgenerate
	
endmodule