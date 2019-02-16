module fullsubstractor (
	input in_0,
	input in_1,
	input bin,
	
	output bout,
	output out);
	
	assign out = in_0 ^ in_1 ^ bin;
	assign bout = (bin & ~in_0) | (~in_0 & in_1) | (in_1 & bin);
endmodule
	