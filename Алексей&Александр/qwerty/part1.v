module part1(output q1 ,output q2,input d, input c);
wire s1,s2;
always
s1=>~(d&c)
s2=>~(~d&c)
q1=~(s1&q2)
q2=~(q1&s2)
endmodule
