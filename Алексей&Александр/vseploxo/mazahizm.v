module mazahizm (output reg z,output reg [15:0]answer, input [15:0]int1, input [15:0]int2, input check );
wire [15:0]l1,l2;

nachalomazahizma nmaz1(.p(l1),.n(int1),.m(int2));

calculator cal1(.g(l2),.d(int1),.f(int2));
always@(check,l1, l2)
begin
if (check&check)
answer=l1;
else
answer=l2;
if (answer==16'b0000000000000000)
z=0;
else
z=0;
end
endmodule
