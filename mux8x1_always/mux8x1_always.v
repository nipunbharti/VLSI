module mux8x1_always(input [7:0]in, input [2:0]sel, output reg result);

always @ *
	begin
		if(sel == 3'b000) begin
			result <= in[0];
		end
		else if(sel == 3'b001) begin
			result <= in[1];
		end
		else if(sel == 3'b010) begin
			result <= in[2];
		end
		else if(sel == 3'b011) begin
			result <= in[3];
		end
		else if(sel == 3'b100) begin
			result <= in[4];
		end
		else if(sel == 3'b101) begin
			result <= in[5];
		end
		else if(sel == 3'b110) begin
			result <= in[6];
		end
		else result <= in[7];
	end

endmodule