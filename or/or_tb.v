module or_tb();
reg abit;
reg bbit;
wire res;

or_gate or_tb(
	.A(abit),
	.B(bbit),
	.res(res)
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
			$dumpfile("or.vcd");
			$dumpvars(0, or_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, result = %1b", $time, abit, bbit, res);
		end

endmodule