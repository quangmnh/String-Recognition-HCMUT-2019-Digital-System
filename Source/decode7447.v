module decode7447(b,A);
	output [6:0] b;
	input [3:0] A;
	assign b[0]=(~A[3]&~A[2]&~A[1]&A[0])|(A[2]&~A[1]&~A[0]);
	assign b[1]=(A[2]&~A[1]&A[0])|(A[2]&A[1]&~A[0]);
	assign b[2]=~A[2]&A[1]&~A[0];
	assign b[3]=(~A[2]&~A[1]&A[0])|(A[2]&~A[1]&~A[0])|(A[2]&A[1]&A[0]);
	assign b[4]=(A[2]&~A[1])|(~A[3]&A[0])|(~A[2]&A[0]);
	assign b[5]=(~A[3]&~A[2]&A[0])|(~A[3]&A[1]&A[0])|(~A[2]&A[1]);
	assign b[6]=(~A[3]&~A[2]&~A[1])|(A[2]&A[1]&A[0]);
endmodule 