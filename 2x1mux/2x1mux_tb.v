module mux_2x1_tb();
reg abit;
reg bbit;
reg sbit;
wire res;

mux_2x1 mux_2x1_tb(
	.d0(abit),
	.d1(bbit),
	.s(sbit),
	.result(res)
);

	initial
		begin
				 sbit=0; bbit=0; abit=0;
			#10; sbit=0; bbit=0; abit=1;
			#10; sbit=0; bbit=1; abit=0;
			#10; sbit=0; bbit=1; abit=1;
			#10; sbit=1; bbit=0; abit=0;
			#10; sbit=1; bbit=0; abit=1;
			#10; sbit=1; bbit=1; abit=0;
			#10; sbit=1; bbit=1; abit=1;
		end

	initial
		begin
			$dumpfile("mux_2x1.vcd");
			$dumpvars(0, mux_2x1_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, sbit = %1b result = %1b", $time, abit, bbit, sbit, res);
		end

endmodule