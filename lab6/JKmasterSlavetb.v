module JKmasterSlavetb;

 reg J;
 reg K;
 reg clk;
 wire Q;
 wire Qbar;

 initial begin
  J = 0;
  K = 0;
  fork
  #4 K = 1;
  #12 J = 1;
  #12 K = 0;
  #20 J = 1;
  #20 K = 1;
  #46 J = 0;
  #46 K = 0;
  #54 K = 1;
  #62 J = 1;
  #62 K = 0;
  #70 K = 1;
  clk = 0;
  join
  #100; $finish;
        end

JKmasterSlave master(J,K,clk,Q,Qbar);

always #4 clk=!clk;

initial begin
$dumpfile("JKmasterSlave.vcd");
$dumpvars(0,JKmasterSlavetb);
$monitor("time = %2d,  q=%b, q1=%b, j=%b, k=%b, c=%b", $time,Q,Qbar,J,K,clk);
end
     
endmodule