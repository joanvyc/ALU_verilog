
module alu #(parameter bits = 8) (
	input [bits-1:0] A,
	input [bits-1:0] B,
	input [2:0] control_word,
	
	output [bits-1:0] X);
	
	logic [7:0][bits-1:0] ALU_X;
	
	logic cout;
	logic bout;
	
	nbit_adder #(.bits(bits)) Adder (.A, .B, .X(ALU_X[0]), .cin(0), .cout);
   nbit_subst #(.bits(bits)) Subst (.A, .B, .X(ALU_X[1]), .bin(0), .bout);
	nbit_and   #(.bits(bits)) And   (.A, .B, .X(ALU_X[3]));
   nbit_or    #(.bits(bits)) Or    (.A, .B, .X(ALU_X[4]));
   nbit_xor   #(.bits(bits)) Xor   (.A, .B, .X(ALU_X[5]));
   nbit_not   #(.bits(bits)) Not   (.A,     .X(ALU_X[6]));
 //nbin_shift #(.bits(bits)) Shift (.A, .B[$clog2(bists):0]. X(ALU_X[7]))

	assign X = ALU_X[control_word];
endmodule
		