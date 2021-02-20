module LEDshift1(A,n,clk1,reset);
	output [17:0] A;
	reg [17:0]A;
	input n;
	input clk1;
	input reset;
	always @ (posedge clk1 or posedge clk2 or posedge reset)
		if (reset) A[17:0]<=18'b0;
		else if(clk1)
		begin
			A[17:1]<=A[16:0];
			A[0]<=n;
		end
		/*always @ (posedge clk1)
		begin
			A[17:1]=A[16:0];
			A[0]=n;
		end
		always @ (posedge clk2)
		begin
			A[13:0]=A[17:4];
			A[17:14]=4'b0000;
		end
		always @ (posedge reset)
		A[17:0]=18'b0;*/
endmodule 