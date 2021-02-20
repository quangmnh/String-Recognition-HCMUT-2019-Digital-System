module bintoBCD7b(output reg [3:0] tens,
					 output reg [3:0] ones,
					 input [6:0] bin);
integer i;
always @(bin)
	begin
		tens=4'd0;
		ones=4'd0;
		for (i=6;i>=0;i=i-1)
		begin
			if (tens>=5) tens=tens+3;
			if (ones>=5) ones=ones+3;
			tens=tens<<1;
			tens[0]=ones[3];
			ones=ones<<1;
			ones[0]=bin[i];
		end
	end
endmodule
