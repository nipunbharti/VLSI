module decoder2x4_always(input [1:0]in, input en, output reg[3:0] result);

always @ *
	begin
		if(en && in == 2'b00) begin
			result <= 4'h1;
		end
		else if(en && in == 2'b01) begin
			result <= 4'h2;
		end
		else if(en && in == 2'b10) begin
			result <= 4'h4;
		end
		else result <= 4'h8;
	end

endmodule