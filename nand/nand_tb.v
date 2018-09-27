module nand_tb();
reg abit;
reg bbit;
wire res;

nand_gate nand_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit=0;
			bbit=0;
			#10; abit=0; bbit=1;
			#10; abit=1; bbit=0;
			#10; abit=1; bbit=1;
		end

	initial
		begin
			$dumpfile("nand.vcd");
			$dumpvars(0, nand_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, result = %1b", $time, abit, bbit, res);
		end

endmodule