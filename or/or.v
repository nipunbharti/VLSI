`include "../nor/nor.v"
// `include "../not/not.v"
module or_gate(input A, input B, output res);

	wire temp;
	nor_gate nand_temp(
		.a(A),
		.b(B),
		.result(temp)
	);
	not_gate not_temp(
		.a(temp),
		.result(res)
	);

endmodule