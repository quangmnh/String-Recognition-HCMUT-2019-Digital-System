module moore0001(seq_in,clock,reset,seq_out);

	input clock; 
	input reset; 
	input seq_in; 
	output reg seq_out; 
	parameter  R=0, 
				  A=1,
				  B=2, 
				  C=3, 
				  D=4;
	reg [2:0] current_state, next_state; 
	always @(posedge clock, posedge reset)
		begin
			if(reset==1) 
				current_state <= R;
			else
				current_state <= next_state; 
		end 

	always @(current_state,seq_in)
		begin
			case(current_state) 
				R:begin
					if(seq_in==1)
						next_state <= R;
					else
						next_state <= A;
				end
				A:begin
					if(seq_in==0)
						next_state <= B;
					else
						next_state <= R;
				end
				B:begin
					if(seq_in==0)
						next_state <= C;
					else
						next_state <= R;
				end 
				C:begin
					if(seq_in==0)
						next_state <= C;
					else
						next_state <= D;
				end
				D:begin
					if(seq_in==0)
						next_state <= A;
					else
						next_state <= R;
				end
				default:next_state <= R;
			endcase
		end

	always @(current_state)
		begin 
			case(current_state) 
				R:seq_out <= 0;
				A:seq_out <= 0;
				B:seq_out <= 0;
				C:seq_out <= 0;
				D:seq_out <= 1;
				default:  seq_out <= 0;
			endcase
		end 
endmodule 