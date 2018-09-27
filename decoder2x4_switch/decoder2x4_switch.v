module decoder2x4_switch(input [1:0]in, input en, output reg[3:0] result);

always @ *
	begin
		if(en) begin
			case(in)
				2'b00: result <= 4'h1;
				2'b01: result <= 4'h2;
				2'b10: result <= 4'h4;
				2'b11: result <= 4'h8;
				default: $display("Error");
			endcase
		end
	end

endmodule