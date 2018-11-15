module Rflipfloptb;

wire q,q1;
reg r,s,c;

Rflipflop t(.q(q), .q1(q1), .r(r), .s(s), .clk(c));

initial begin
c=1;
#10  r=0;
       s=1;
#10 r=0;
       s=0;
#10 r=1;
       s=0;
#10 r=0;
       s=0;
#10 r=1;
       s=1;
#60 $finish;
end
always begin
#10 c=~c;
end

initial begin
$dumpfile("Rflipflop.vcd");
$dumpvars(0,Rflipfloptb);
$monitor("time = %2d,  q=%b, q1=%b, r=%b, s=%b, c=%b", $time,q,q1,r,s,c);
end

endmodule