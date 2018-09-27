module mux2x1_conditional(input a, input b, input sel, output res);

	assign res = sel ? b : a;

endmodule