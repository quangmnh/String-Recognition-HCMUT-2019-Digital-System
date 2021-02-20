module delay(din,dout);
	output dout;
	input din;
	/*wire [6:0] t;
	not not1(t[0],din);
	not not2(t[1],t[0]);
	not not3(t[2],t[1]);
	not not4(t[3],t[2]);
	not not5(t[4],t[3]);
	not not6(t[5],t[4]);
	not not7(t[6],t[5]);
	assign dout=t[6];*/
	wire [2:0] n;
	wire w;
	D_FF(~n[0],~w,w);
	xor xor0(n[0],n[0],~w);
	assign dout=n[0];
endmodule 