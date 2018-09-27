module decoder2x4_switch_tb();
reg [1:0]in;
reg en;
wire [3:0]res;

decoder2x4_switch decoder2x4_switch_tb(
	.in(in),
	.en(en),
	.result(res)
);

	initial
		begin

			en=1;in[0]=0; in[1]=0;
			#10; in[0]=0; in[1]=1;
			#10; in[0]=1; in[1]=0;
			#10; in[0]=1; in[1]=1;
		end

	initial
		begin
			$dumpfile("decoder2x4_switch.vcd");
			$dumpvars(0, decoder2x4_switch_tb);
			$monitor("time = %2d, abit = %1b, bbit = %1b, result = %4h", $time, in[0], in[1], res);
		end

endmodule