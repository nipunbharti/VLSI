module JKflipfloptb;

wire q,q1;
reg j,k,c;

JKflipflop t(.q(q), .q1(q1), .j(j), .k(k), .c(c));

initial begin
c=1;
#0  j=0;
       k=1;
#10 j=0;
       k=0;
#10 j=1;
       k=0;
#10 j=0;
       k=0;
#10 j=1;
       k=1;
#60 $finish;
end
always begin
#10 c=~c;
end

initial begin
$dumpfile("JKflipflop.vcd");
$dumpvars(0,JKflipfloptb);
$monitor("time = %2d,  q=%b, q1=%b, j=%b, k=%b, c=%b", $time,q,q1,j,k,c);
end

endmodule