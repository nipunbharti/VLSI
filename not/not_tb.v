module not_tb();
reg abit;
wire res;

not_gate not_tb(
	.a(abit),
	.result(res)
);

	initial
		begin
			abit=0;
			#10; abit=1;
		end

	initial
		begin
			$dumpfile("not.vcd");
			$dumpvars(0, not_tb);
			$monitor("time = %2d, abit = %1b, result = %1b", $time, abit, res);
		end

endmodule