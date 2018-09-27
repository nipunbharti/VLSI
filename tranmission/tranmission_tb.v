module transmission_tb();
reg abit;
reg bbit;
wire res;

transmission transmission_tb(
	.a(abit),
	.en(bbit),
	.result(res)
);

	initial
		begin
				 abit=0; bbit=0;
			#10; abit=0; bbit=1;
			#10; abit=1; bbit=0;
			#10; abit=1; bbit=1;
		end

	initial
		begin
			$dumpfile("transmission.vcd");
			$dumpvars(0, transmission_tb);
			$monitor("time = %2d, abit = %1b, en = %1b, result = %1b", $time, abit, bbit, res);
		end

endmodule