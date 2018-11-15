module t_flip_flop_tb();
reg c, t;
wire q, q1;

t_flip_flop t_flip_flop_tb(
	.q(q),
	.q1(q1),
	.t(t),
	.c(c)
);

	initial
		begin
			t=1; c=1;
			#5; $finish;
		end

	always begin
		#1 t=~t;
		#1 c=~c;
	end

	initial
		begin
			$dumpfile("t_flip_flop.vcd");
			$dumpvars(0, t_flip_flop_tb);
			$monitor("time = %g, q = %b, q1 = %b, t = %b, c = %b", $time, q, q1, t, c);
		end

endmodule