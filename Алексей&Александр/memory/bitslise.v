module bitslise (output out , input rw , input data , input wordselect0 ,input wordselect1 ,input wordselect2 ,input wordselect3);

wire l1,l2,l3,l4,s1,s2,s3,s4,d1,d2;

assign d1=(~(data&rw));
assign d2=data&rw;

ram r1 (.q1(l1),.q2(s1),.r(d1),.s(d2),.c(wordselect0));
ram r2 (.q1(l2),.q2(s2),.r(d1),.s(d2),.c(wordselect1));
ram r3 (.q1(l3),.q2(s3),.r(d1),.s(d2),.c(wordselect2));
ram r4 (.q1(l4),.q2(s4),.r(d1),.s(d2),.c(wordselect3));

onebitmemory m2(.q1(out),.q2(),.r(s1|s2|s3|s4),.s(l1 | l2|l3|l4));
endmodule

