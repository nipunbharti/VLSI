module full_adder_tb();
reg abit;
reg bbit;
reg cbit;
wire s;
wire cout;

full_adder full_adder_tb(
	.a(abit),
	.b(bbit),
	.cin(cbit),
	.s(s),
	.cout(cout)
);

	initial
		begin
				 abit=0; bbit=0; cbit=0;
			#10; abit=0; bbit=0; cbit=1;
			#10; abit=0; bbit=1; cbit=0;
			#10; abit=0; bbit=1; cbit=1;
			#10; abit=1; bbit=0; cbit=0;
			#10; abit=1; bbit=0; cbit=1;
			#10; abit=1; bbit=1; cbit=0;
			#10; abit=1; bbit=1; cbit=1;
		end

	initial
		begin
			$dumpfile("full_adder.vcd");
			$dumpvars(0, full_adder_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, cinbit = %1b, sum = %1b, cout = %1b", $time, abit, bbit, cbit, s, cout);
		end

endmodule