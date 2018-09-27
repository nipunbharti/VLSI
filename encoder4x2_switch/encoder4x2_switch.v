module encoder4x2_switch(input [3:0]in, output reg[1:0] result);

always @ *
	begin
		case(in)
			4'b0001: result <= 2'b00;
			4'b0010: result <= 2'b01;
			4'b0100: result <= 2'b10;
			4'b1000: result <= 2'b11;
		endcase
	end

endmodule