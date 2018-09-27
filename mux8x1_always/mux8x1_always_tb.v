module mux8x1_always_tb();
reg [7:0]in;
reg [2:0]sel;
wire res;

mux8x1_always mux8x1_always_tb(
	.in(in),
	.sel(sel),
	.result(res)
);

	initial
		begin
				 in=8'b10101010;
				 sel=3'b000;
			#10; sel=3'b001;
			#10; sel=3'b010;
			#10; sel=3'b011;
			#10; sel=3'b100;
			#10; sel=3'b101;
			#10; sel=3'b110;
			#10; sel=3'b111;
		end

	initial
		begin
			$dumpfile("mux8x1_always.vcd");
			$dumpvars(0, mux8x1_always_tb);
			$monitor("time = %2d, input = %8b, select = %3b result = %1b", $time, in, sel, res);
		end

endmodule