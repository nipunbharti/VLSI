module counter8bit_tb();
reg clock, reset, enable;
wire [7:0] count_out;

counter8bit counter8bit_tb(
	.clock(clock),
	.reset(reset),
	.enable(enable),
	.count_out(count_out)
);

	initial
		begin
			clock=1; reset=0; enable=0;
			#5; reset=1;
			#10; reset=0;
			#10; enable=1;
			#2559; enable=0;
			#5; $finish;
		end
	always begin
		#5 clock = ~clock;
	end
	initial
		begin
			$dumpfile("counter8bit.vcd");
			$dumpvars(0, counter8bit_tb);
			$monitor("time = %g, clock = %b, reset = %b, enable = %b, counter = %b", $time, clock, reset, enable, count_out);
		end

endmodule