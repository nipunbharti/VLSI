module shiftadd_tb();
reg [3:0]a,b;
reg clk;
reg s;
wire [7:0]p;

shiftadd shiftadd_tb(
	.p(p),
	.a(a),
	.b(b),
	.clk(clk),
	.s(s)
);

	initial
		begin
			clk=1;s=1;
			a=4'b0010;
			b=4'b0110;
			#1; s=0;
		end

	initial
		begin
			$dumpfile("shiftadd.vcd");
			$dumpvars(0, shiftadd_tb);
			$monitor("clock = %g, a = %4b, b = %4b, p(output) = %8b, s = %1b", clk, a, b, p, s);
		end

endmodule