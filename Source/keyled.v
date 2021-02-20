module 	keyled(lout,lin);
	output [3:0] lout;
	input [3:0] lin;
	assign lout[3:0]=~lin[3:0];
endmodule 