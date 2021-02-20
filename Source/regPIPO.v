module regPIPO(B,A,CLK);
	output [3:0] B;
	input [3:0] A;
	input CLK;
	D_FF DFF0(CLK,A[3],B[3]);
	D_FF DFF1(CLK,A[2],B[2]);
	D_FF DFF2(CLK,A[1],B[1]);
	D_FF DFF3(CLK,A[0],B[0]);
endmodule 