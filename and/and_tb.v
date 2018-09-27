module and_tb();
reg abit;
reg bbit;
wire res;

and_gate and_tb(
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
			$dumpfile("and.vcd");
			$dumpvars(0, and_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, result = %1b", $time, abit, bbit, res);
		end

endmodule