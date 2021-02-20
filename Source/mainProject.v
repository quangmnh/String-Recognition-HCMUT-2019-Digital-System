module mainProject(SW,KEY,LEDR,HEX4,HEX5,HEX6,HEX7,LEDG);
	output [4:0] LEDG;
	output [17:0]LEDR;
	output [6:0]HEX4;
	output [6:0]HEX5;
	output [6:0]HEX6;
	output [6:0]HEX7;
	
	input [8:0]SW;
	input [3:0]KEY;
	
	wire n;
	wire m;
	wire p;
	wire o;
	
	wire [3:0] A;
	wire [6:0] B;
	wire [6:0] C;
	
	wire [3:0] B1;
	wire [3:0] B0;
	wire [3:0] C1;
	wire [3:0] C0;
	
	keyled(LEDG[3:0],KEY[3:0]);
	
	shiftRegPISO(n,SW[3:0],KEY[2],~KEY[3]);
	//srPISO (SW[3:0] ,o ,~KEY[0] ,~KEY[2] ,n);
	
	assign LEDG[4]=n;
	and and0(o,KEY[2],~KEY[3]);
	or or1(p,o,SW[4]);
	
	counter c1(o,~KEY[0],~KEY[1],m,B);
	counter1 c2(p,m,~KEY[0],~KEY[1],SW[4],C);
	
	//delay delay1(o,n0);
	
	LEDshift sl1(LEDR[17:0],n,o,~KEY[1],~KEY[0]);
	onefrom16 mu1(n,SW[8:5],o,~KEY[0],m);
	
	bintoBCD7b bbcd1(B1[3:0],B0[3:0],B[6:0]);
	bintoBCD7b bbcd2(C1[3:0],C0[3:0],C[6:0]);
	
	decode7447(HEX5[6:0],B1[3:0]);
	decode7447(HEX4[6:0],B0[3:0]);
	decode7447(HEX7[6:0],C1[3:0]);
	decode7447(HEX6[6:0],C0[3:0]);

endmodule 