`include "../not/not.v"

module transmission(input a, input en, output result);

	wire en_comp;

	not_gate not_temp(
		.a(en),
		.result(en_comp)
	);
	
	pmos(result, a, en_comp);
	nmos(result, a, en);

endmodule