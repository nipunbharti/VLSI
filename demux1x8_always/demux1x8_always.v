module demux1x8_always(input in, input [2:0]sel, output reg [7:0]result);

always @ *
	begin
		if(sel == 3'b000) begin
			result <= 'h1;
		end
		else if(sel == 3'b001) begin
			result <= 'h2;
		end
		else if(sel == 3'b010) begin
			result <= 'h4;
		end
		else if(sel == 3'b011) begin
			result <= 'h8;
		end
		else if(sel == 3'b100) begin
			result <= 'h10;
		end
		else if(sel == 3'b101) begin
			result <= 'h20;
		end
		else if(sel == 3'b110) begin
			result <= 'h40;
		end
		else result <= 'h80;
	end

endmodule