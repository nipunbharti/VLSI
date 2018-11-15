module Tflipfloptb;

wire q,q1;
reg t,c;

Tflipflop tf(.q(q), .q1(q1), .t(t), .c(c));

initial begin
c=1;
#10  t=0;
#10 t=0;
#10 t=1;
#10 t=1;
#50 $finish;
end

always begin
#10 c=~c;
end

initial begin
$dumpfile("Tflipflop.vcd");
$dumpvars(0,Tflipfloptb);
$monitor("time = %2d,  q=%b, q1=%b, t=%b, c=%b", $time,q,q1,t,c);
end

endmodule