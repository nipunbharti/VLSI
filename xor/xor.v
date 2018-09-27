// `include "../not/not.v"
module xor_gate(input a, input b, output result);

	wire a_comp, b_comp;
	wire x,y;
	wire m;
	wire temp;

	supply0 Gnd;
	supply1 Vdd;

	not_gate not_temp1(
		.a(a),
		.result(a_comp)
	);

	not_gate not_temp2(
		.a(b),
		.result(b_comp)
	);

	nmos(x, Gnd, b);
	nmos(y, Gnd, b_comp);
	nmos(temp, x, a_comp);
	nmos(temp, y, a);

	pmos(m, Vdd, a);
	pmos(m, Vdd, b_comp);
	pmos(temp, m, a_comp);
	pmos(temp, m, b);

	not_gate not_temp3(
		.a(temp),
		.result(result)
	);

endmodule