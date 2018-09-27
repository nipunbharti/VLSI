module adder32bit_tb();
reg [31:0]abit;
reg [31:0]bbit;
wire [32:0]res;

adder32bit adder32bit_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit = 'h11011011;
			bbit = 'h10111101;
		end

	initial
		begin
			$dumpfile("adder32bit.vcd");
			$dumpvars(0, adder32bit_tb);
			$monitor("time = %2d, abit = %8h, bbit = %8h, result = %8h", $time, abit, bbit, res);
		end

endmodule