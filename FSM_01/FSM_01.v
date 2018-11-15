module FSM_01(input clk, input rst, input in, output out);

	reg out;
	reg [1:0]state;
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			state <= 2'b00;
		end
		else begin
			case(state)
				2'b00: begin
					if(in) state <= 2'b10;
					else state <= 2'b01;
				end
				2'b01: begin
					if(in) state <= 2'b11;
					else state <= 2'b10;
				end
				2'b11: begin
					if(in) state <= 2'b11;
					else state <= 2'b10;
				end
				2'b10: begin
					if(in) state <= 2'b10;
					else state <= 2'b10;
				end
			endcase
		end
	end

	always @(posedge clk, posedge rst) begin
		if (rst) 
			out <= 0;
		else if(state == 2'b11) 
			out <= 1;
		else 
			out <= 0;
	end

endmodule