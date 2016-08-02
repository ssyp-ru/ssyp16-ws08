module part1(output reg q1 ,output reg q2,input d, input c);
wire s1,s2;
always
begin
q1=~(~(d&c)&q2);
q2=~(q1&~(~d&c));
end
endmodule
