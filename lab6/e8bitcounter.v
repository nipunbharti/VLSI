module e8bitcounter(input clock,reset,enable, output reg[7:0] count_out);

wire clock, reset, enable;

always @(posedge clock) begin
	if(reset==1'b1) begin
	count_out<= #1 8'b00000000;
	end
	else if(enable==1'b1) begin
	count_out<=#1 count_out+1'b1;
	end
	end
endmodule