module hatb;
reg abit;
reg bbit;
wire s;
wire c;

ha ha1(
	.a(abit),
	.b(bbit),
	.sum(s),
	.carry(c)
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
			$dumpfile("test.vcd");
			$dumpvars(0, hatb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, s = %1b, c = %1b", $time, abit, bbit, s, c);
		end

endmodule