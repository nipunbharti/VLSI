module multiplier15bit_tb();
reg [15:0]abit;
reg [15:0]bbit;
wire [31:0]res;

multiplier15bit multiplier15bit_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit = 'h1101;
			bbit = 'h1011;
		end

	initial
		begin
			$dumpfile("multiplier15bit.vcd");
			$dumpvars(0, multiplier15bit_tb);
			$monitor("time = %2d, abit = %4h, bbit = %4h, result = %8h", $time, abit, bbit, res);
		end

endmodule