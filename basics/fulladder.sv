
module fulladder (
	input in_0,
	input in_1,
	input cin,
	
	output cout,
	output out
	);
	
	wire xor_1 = in_0 ^ in_1;
	wire and_1 = in_0 & in_1;
	
	wire xor_2 = cin ^ xor_1;
	wire and_2 = cin & xor_1;
	
	assign out  = xor_2;
	assign cout = and_1 | and_2;
	
endmodule
	