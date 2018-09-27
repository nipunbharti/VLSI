module demux1x8_switch(input in, input [2:0]sel, output reg [7:0]result);

always @ *
	begin
		case(sel)
			3'b000: result <= 'h1;
			3'b001: result <= 'h2;
			3'b010: result <= 'h4;
			3'b011: result <= 'h8;
			3'b100: result <= 'h10;
			3'b101: result <= 'h20;
			3'b110: result <= 'h40;
			3'b111: result <= 'h80;
		endcase
	end

endmodule