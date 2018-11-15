module FSM_three1(input clk, input rst, input in, output out);

	reg out;
	reg [2:0]state;
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			state <= 3'b000;
		end
		else begin
			case(state)
				3'b000: begin
					if(in) state <= 3'b001;
					else state <= 3'b000;
				end
				3'b001: begin
					if(in) state <= 3'b011;
					else state <= 3'b000;
				end
				3'b011: begin
					if(in) state <= 3'b111;
					else state <= 3'b000;
				end
				3'b111: begin
					if(in) state <= 3'b111;
				end
			endcase
		end
	end

	always @(posedge clk, posedge rst) begin
		if (rst) 
			out <= 0;
		else if(state == 3'b111) 
			out <= 1;
		else 
			out <= 0;
	end

endmodule