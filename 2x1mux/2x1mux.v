`include "../not/not.v"

module mux_2x1(input d0, input d1, input s, output result);

	wire left_top_d0;
	wire right_top_d1;
	wire left_bottom_d0;
	wire right_bottom_d1;
	wire s_comp;
	wire result_comp;

	not_gate not_temp1(
		.a(s),
		.result(s_comp)
	);

	supply0 Gnd;
	supply1 Vdd;

	nmos(left_bottom_d0, Gnd, d0);
	nmos(right_bottom_d1, Gnd, d1);
	nmos(result_comp, left_bottom_d0, s_comp);
	nmos(result_comp, right_bottom_d1, s);

	pmos(right_top_d1, Vdd, d0);
	pmos(right_top_d1, Vdd, s_comp);
	pmos(result_comp, right_top_d1, s);
	pmos(result_comp, right_top_d1, d1);

	not_gate not_temp2(
		.a(result_comp),
		.result(result)
	);

endmodule