module part2(output reg q1, output reg q2, input s, input c, input r);
always 
begin
q2=~(q1&~(r&c));
q1=~(q2&~(s&c));
end
endmodule
