module test(SW,LEDR);
	 
	output [15:0] LEDR;
	input [1:0]SW;
	wire [5:0] t;
	not not1(t[0],SW[1]);
	not not2(t[1],t[0]);
	not not3(t[2],t[1]);
	not not4(t[3],t[2]);
	not not5(t[4],t[3]);
	not not6(t[5],t[4]);
	shiftLED(LEDR[15:0],t[5],t[5]);
endmodule	
	