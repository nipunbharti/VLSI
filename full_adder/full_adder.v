`include "../or/or.v"
`include "../half_adder/half_adder.v"

module full_adder(input a, input b, input cin, output s, output cout);

	wire half_adder_carry1, half_adder_carry2;
	wire half_adder_sum;

	half_adder_self half_adder_temp1(
		.a(a),
		.b(b),
		.s(half_adder_sum),
		.c(half_adder_carry1)
	);

	half_adder_self half_adder_temp2(
		.a(half_adder_sum),
		.b(cin),
		.s(s),
		.c(half_adder_carry2)
	);

	or_gate or_temp(
		.A(half_adder_carry1),
		.B(half_adder_carry2),
		.res(cout)
	);

endmodule