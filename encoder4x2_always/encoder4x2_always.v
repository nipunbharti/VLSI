module encoder4x2_always(input [3:0]in, output reg[1:0] result);

always @ *
	begin
		if(in == 4'b0001) begin
			result <= 2'b00;
		end
		else if(in == 4'b0010) begin
			result <= 2'b01;
		end
		else if(in == 4'b0100) begin
			result <= 2'b10;
		end
		else result <= 2'b11;
	end

endmodule