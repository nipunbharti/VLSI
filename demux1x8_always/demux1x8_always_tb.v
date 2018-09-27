module demux1x8_always_tb();
reg in;
reg [2:0]sel;
wire [7:0]res;

demux1x8_always demux1x8_always_tb(
	.in(in),
	.sel(sel),
	.result(res)
);

	initial
		begin
				 in=1;
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
			$dumpfile("demux1x8_always.vcd");
			$dumpvars(0, demux1x8_always_tb);
			$monitor("time = %2d, input = %1b, select = %3b result = %h", $time, in, sel, res);
		end

endmodule