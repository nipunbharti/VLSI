module half_adder_self_tb();
reg abit;
reg bbit;
wire s;
wire c;

half_adder_self half_adder_self_tb(
	.a(abit),
	.b(bbit),
	.s(s),
	.c(c)
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
			$dumpfile("half_adder_self.vcd");
			$dumpvars(0, half_adder_self_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, sum = %1b, carry = %1b", $time, abit, bbit, s, c);
		end

endmodule