module mux8x1_always(input [7:0]in, input [2:0]sel, output reg result);

always @ *
	begin
		case(sel)
			3'b000: result <= in[0];
			3'b001: result <= in[1];
			3'b010: result <= in[2];
			3'b011: result <= in[3];
			3'b100: result <= in[4];
			3'b101: result <= in[5];
			3'b110: result <= in[6];
			3'b111: result <= in[7];
		endcase
	end

endmodule