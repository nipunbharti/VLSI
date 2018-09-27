module encoder4x2_switch_tb();
reg [3:0]in;
wire [1:0]res;

encoder4x2_switch encoder4x2_switch_tb(
	.in(in),
	.result(res)
);

	initial
		begin
				 in = 4'b0001;
			#10; in = 4'b0010;
			#10; in = 4'b0100;
			#10; in = 4'b1000;
		end

	initial
		begin
			$dumpfile("encoder4x2_switch.vcd");
			$dumpvars(0, encoder4x2_switch_tb);
			$monitor("time = %2d, input = %4b, result = %2b", $time, in, res);
		end

endmodule