module not_gate(input a, output result);

	supply1 Vdd;
	supply0 Gnd;

	pmos(result, Vdd, a);
	nmos(result, Gnd, a);

endmodule