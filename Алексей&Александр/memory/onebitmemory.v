module onebitmemory(output  q1, output  q2, input r, input s);

nor(q1,r,q2);
nor(q2,s,q1);

endmodule
