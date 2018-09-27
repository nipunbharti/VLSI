`include "../tranmission/tranmission.v"

module mux_2x1_trans(input d0, input d1, input s, output result);

	wire s_comp;

	not_gate not_temp(
		.a(s),
		.result(s_comp)
	);

	transmission transmission_temp1(
		.a(d0),
		.en(s_comp),
		.result(result)
	);

	transmission transmission_temp2(
		.a(d1),
		.en(s),
		.result(result)
	);

endmodule