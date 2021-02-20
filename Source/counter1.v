module counter1(input clk,cp, reset, pl,hout, output reg[6:0] counter);
reg [6:0] counter_up;
reg [6:0] preload2;
reg [6:0] preload3;
reg [6:0] preload4;
reg [6:0] preload5;

always @(posedge clk or posedge reset or posedge pl)
	begin
		if (pl) counter_up = preload2;
		else if (reset)
			counter_up = 7'd0;
		else if(cp)
			begin
				counter_up = counter_up + 7'd1;
			end
		else if (clk)
		begin
			preload2 =preload3;
			preload3 =preload4;
			preload4 =preload5;
			preload5 =counter_up;
		end
	end 
always @(hout or reset)
if (hout)
counter = counter_up;
else counter=7'd0;
endmodule 