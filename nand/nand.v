module nand_gate(input a, input b, output result);

	wire c;
	supply1 Vdd;
	supply0 Gnd;

	pmos(result, Vdd, a);
	pmos(result, Vdd, b);

	nmos(result, c, a);
	nmos(c, Gnd, b);

endmodule