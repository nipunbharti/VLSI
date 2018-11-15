module e8bitdividetb;

reg clock,reset,enable;
wire[7:0] count_out;

e8bitdivide eb(.clock(clock), .reset(reset), .enable(enable), .count_out(count_out));

initial begin
clock=1;
reset=0;
enable=0;
#5 reset=1;
#10 reset=0;
#10 enable=1;
#100 enable=0;
#5 $finish;
end
always begin
#5 clock=~clock;
end

initial begin
$dumpfile("e8bitdivide.vcd");
$dumpvars(0,e8bitdividetb);
$monitor("time = %g, clock =%b, reset=%b, enable=%b, count_out=%b", $time,clock,reset,enable,count_out);
end

endmodule