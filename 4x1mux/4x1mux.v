`include "../2x1mux/2x1mux.v"

module mux_4x1(input d0, input d1, input d2, input d3, input s0, input s1, output result);

	wire mux1;
	wire mux2;
	wire result_temp;

	mux_2x1 mux_temp1(
		.d0(d0),
		.d1(d1),
		.s(s0),
		.result(mux1)
	);

	mux_2x1 mux_temp2(
		.d0(d2),
		.d1(d3),
		.s(s0),
		.result(mux2)
	);

	mux_2x1 mux_temp3(
		.d0(mux1),
		.d1(mux2),
		.s(s1),
		.result(result_temp)
	);

	not_gate not_temp(
		.a(result_temp),
		.result(result)
	);

endmodule