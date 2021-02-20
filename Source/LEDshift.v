module LEDshift(A,n,clk1,clk2,reset);
	output [17:0] A;
	reg [17:0]A;
	input n;
	input clk1;
	input clk2; 
	input reset;
	reg [17:0] preload1;
	reg [17:0] preload2;
	reg [17:0] preload3;
	reg [17:0] preload4;
	reg [17:0] preload5;
	
	always @ (posedge clk1 or posedge clk2 or posedge reset)
		if (reset) A[17:0]<=18'b0;
		else if (clk2) A[17:0]=preload2[17:0];
		else if(clk1)
		begin
			A[17:1]<=A[16:0];
			A[0]<=n;
			preload2 =preload3;
			preload3 =preload4;
			preload4 =preload5;
			preload5 =A[17:0];
		end
endmodule 

/*
	always @ (posedge clk1 or posedge clk2 or posedge reset)
		if (reset) A[17:0]<=18'b0;
		else if (clk2)
		begin
			A[13:0]<=A[17:4];
			A[17:14]<=4'b0000;
		end
		else if(clk1)
		begin
			A[17:1]<=A[16:0];
			A[0]<=n;
		end*/
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
		A[17:0]=18'b0;
	//LEDshift1 left(A,n,clk1,reset);
	//assign B[17:0]=A[17:0];
	/*always @ (posedge clk1 or posedge clk2 or posedge reset)
		begin
			A[17]<=((clk1&A[16]))&(~reset);
			A[16]<=((clk1&A[15]))&(~reset);
			A[15]<=((clk1&A[14]))&(~reset);
			A[14]<=((clk1&A[13]))&(~reset);
			A[13]<=((clk1&A[12])|(clk2&A[17]))&(~reset);
			A[12]<=((clk1&A[11])|(clk2&A[16]))&(~reset);
			A[11]<=((clk1&A[10])|(clk2&A[15]))&(~reset);
			A[10]<=((clk1&A[9])|(clk2&A[14]))&(~reset);
			A[9]<=((clk1&A[8])|(clk2&A[13]))&(~reset);
			A[8]<=((clk1&A[7])|(clk2&A[12]))&(~reset);
			A[7]<=((clk1&A[6])|(clk2&A[11]))&(~reset);
			A[6]<=((clk1&A[5])|(clk2&A[10]))&(~reset);
			A[5]<=((clk1&A[4])|(clk2&A[9]))&(~reset);
			A[4]<=((clk1&A[3])|(clk2&A[8]))&(~reset);
			A[3]<=((clk1&A[2])|(clk2&A[7]))&(~reset);
			A[2]<=((clk1&A[1])|(clk2&A[6]))&(~reset);
			A[1]<=((clk1&A[0])|(clk2&A[5]))&(~reset);
			A[0]<=((clk1&n)|(clk2&A[4]))&(~reset);
		end*/