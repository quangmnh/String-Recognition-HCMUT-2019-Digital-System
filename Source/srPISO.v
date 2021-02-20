module srPISO ( din ,clk ,reset ,load ,dout );

	output dout ;
	reg dout ;

	input [3:0] din ;
	wire [3:0] din ;
	input clk ;
	wire clk ;
	input reset ;
	wire reset ;
	input load ;
	wire load ;

	reg [3:0]temp;

	always @ (posedge (clk)) begin
		if (reset)
			temp <= 1;
		else if (load)
			temp[3:0] <= din;
		else begin
			dout <= temp[0];
			temp[3:0] <= {1'b0,temp[3:1]};
		end
	end

endmodule 