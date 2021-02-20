module onefrom16(seq_in,A,clock,reset,seq_out);
	output seq_out;
	reg seq_out;
	input [3:0] A;
	input seq_in;
	input clock;
	input reset;
	wire [15:0]temp;
		moore0000 m1(seq_in,clock,reset,temp[0]);
		moore0001 m2(seq_in,clock,reset,temp[1]);
		moore0010 m3(seq_in,clock,reset,temp[2]);
		moore0011 m4(seq_in,clock,reset,temp[3]);
		moore0100 m5(seq_in,clock,reset,temp[4]);
		moore0101 m6(seq_in,clock,reset,temp[5]);
		moore0110 m7(seq_in,clock,reset,temp[6]);
		moore0111 m8(seq_in,clock,reset,temp[7]);
		moore1000 m9(seq_in,clock,reset,temp[8]);
		moore1001 m10(seq_in,clock,reset,temp[9]);
		moore1010 m11(seq_in,clock,reset,temp[10]);
		moore1011 m12(seq_in,clock,reset,temp[11]);
		moore1100 m13(seq_in,clock,reset,temp[12]);
		moore1101 m14(seq_in,clock,reset,temp[13]);
		moore1110 m15(seq_in,clock,reset,temp[14]);
		moore1111 m16(seq_in,clock,reset,temp[15]);
	always@(*)
	case (A[3:0])
		4'b0000:seq_out<=temp[0];
		4'b0001:seq_out<=temp[1];
		4'b0010:seq_out<=temp[2];
		4'b0011:seq_out<=temp[3];
		4'b0100:seq_out<=temp[4];
		4'b0101:seq_out<=temp[5];
		4'b0110:seq_out<=temp[6];
		4'b0111:seq_out<=temp[7];
		4'b1000:seq_out<=temp[8];
		4'b1001:seq_out<=temp[9];
		4'b1010:seq_out<=temp[10];
		4'b1011:seq_out<=temp[11];
		4'b1100:seq_out<=temp[12];
		4'b1101:seq_out<=temp[13];
		4'b1110:seq_out<=temp[14];
		4'b1111:seq_out<=temp[15];
	endcase	
	
endmodule 