
module fulladder (
	input in_0,
	input in_1,
	input cin,
	
	output cout,
	output out
	);
	
	assign {cout,out} = cin + in_0 + in_1;	
endmodule
	