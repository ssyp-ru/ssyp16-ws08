module ram(output reg  q1, output reg q2, input r, input s, input c);

wire l1,l2;

onebitmemory m1(.q1(l1), .q2(l2), .s(s&c), .r(r&c));
always@(l1,l2,c)
begin
q1=l1 & c;
q2 = l2 & c;
end
endmodule
