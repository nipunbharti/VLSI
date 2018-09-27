`include "../xor/xor.v"
`include "../and/and.v"

module half_adder_self(input a, input b, output s, output c);

	xor_gate xor_temp(
		.a(a),
		.b(b), 
		.result(s)
	);
	and_gate and_temp(
		.A(a), 
		.B(b), 
		.res(c)
	);

endmodule