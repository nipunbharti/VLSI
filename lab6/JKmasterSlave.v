module JKmasterSlave(j,k,c,q,qb);
input j,k,c;
output q,qb;
wire o;
and #1 (m,j,qb);
and #1 (n,!k,q);
or (o,m,n);
assign q = o;
assign qb = !q;
endmodule