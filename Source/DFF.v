module DFF(clock, d, q); 
input clock, d; 
wire clock, d;
output q; 
reg q;
always @ (posedge clock)
q <= d;
endmodule 