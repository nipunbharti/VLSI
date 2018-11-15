module e8bitdcountertb;

reg clock,reset,enable;
wire[7:0] count_out;

e8bitdcounter eb(.clock(clock), .reset(reset), .enable(enable), .count_out(count_out));

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
$dumpfile("e8bitdcounter.vcd");
$dumpvars(0,e8bitdcountertb);
$monitor("time = %g, clock =%b, reset=%b, enable=%b, count_out=%b", $time,clock,reset,enable,count_out);
end

endmodule