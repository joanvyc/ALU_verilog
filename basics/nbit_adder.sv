module nbit_adder #(parameter bits = 8) (
   input  cin,
	input [bits-1:0] A,
	input [bits-1:0] B,
	
	output cout,
	output [bits-1:0] X
	);
	
	logic [bits-1:0] in_cout;
	fulladder fa(
		.in_0(A[0]),
		.in_1(B[0]),
		.cin,
		.cout(in_cout[0]),
		.out(X[0]));
	
	genvar i;
	generate
		for (i = 1; i < bits; i++) begin : generate_adder
			fulladder fa(
				.in_0(A[i]),
				.in_1(B[i]),
				.cin(in_cout[i-1]),
				.cout(in_cout[i]),
				.out(X[i]));
		end
	endgenerate
	assign cout = in_cout[bits-1];
endmodule
