module nor_gate(input a, input b, output result);

	wire c;
	supply1 Vdd;
	supply0 Gnd;

	pmos(c, Vdd, a);
	pmos(result, c, b);

	nmos(result, Gnd, a);
	nmos(result, Gnd, b);

endmodule