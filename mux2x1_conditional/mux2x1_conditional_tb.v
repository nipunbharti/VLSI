module mux2x1_conditional_tb();
reg a;
reg b;
reg sel;
integer i=0, j=0;
wire res;

mux2x1_conditional mux2x1_conditional_tb(
	.a(a),
	.b(b),
	.sel(sel),
	.res(res)
);

	initial
		begin
			for(i=0;i<4;i=i+1)
				begin
					for(j=0;j<2;j=j+1)
					begin
						sel=j;
						{a,b} = i;
						#10;
					end
				end
		end

	initial
		begin
			$dumpfile("mux2x1_conditional.vcd");
			$dumpvars(0, mux2x1_conditional_tb);
			$monitor("time = %2d, a = %1b, b = %1b, select = %1b result = %1b", $time, a, b, sel, res);
		end

endmodule