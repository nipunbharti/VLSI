module counter8bit(input clock, input reset, input enable, output [7:0]count_out);

	wire clock, reset, enable;
	reg [7:0] count_out;

	always @(posedge clock) begin
		if (reset == 1'b1) begin
			count_out <= 8'b00000000; #1;
		end
		else if (enable == 1'b1) begin
			count_out <= count_out + 1'b1; #1;
		end
	end

endmodule