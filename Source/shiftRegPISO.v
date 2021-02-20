module shiftRegPISO(so,B,SnL,CLK);
	output so; 
	input [3:0]B;
	input SnL;
	input CLK;
	wire n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13;
	
	D_FF DFF0(CLK,B[0],n4);
	and and0(n5,n4,SnL);
	and and1(n1,B[1],~SnL);
	or or0(n7,n5,n1);
	D_FF DFF1(CLK,n7,n8);
	and and4(n9,n8,SnL);
	and and2(n2,B[2],~SnL);
	or or1(n10,n2,n9);
	D_FF DFF2(CLK,n10,n11);
	and and5(n12,n11,SnL);
	and and3(n3,B[3],~SnL);
	or or2(n13,n12,n3);
	D_FF DFF3(CLK,n13,so);
	
endmodule 