`include "../nand/nand.v"
`include "../not/not.v"
module and_gate(input A, input B, output res);

	wire temp;
	nand_gate nand_temp(
		.a(A),
		.b(B),
		.result(temp)
	);
	not_gate not_temp(
		.a(temp),
		.result(res)
	);

endmodule