module shiftLED(A,n,clk);
	output [15:0] A;
	reg [15:0]A;
	input n;
	input clk;
	always @ (posedge clk)
		begin
			A[15:1]=A[14:0];
			A[0]=n;
		end
endmodule 