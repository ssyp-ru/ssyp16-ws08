
module part_sum(output SH1, output REG, input SH, input A, input B);

assign SH1 = ((A^B)&SH)|A&B;
assign REG = (A^B)^SH;

endmodule

module sum(output[3:0] Z, input[3:0] X, input[3:0] Y);//RENAME BACK TO SUM LATER

wire tr1, tr2, tr3, tr4;

part_sum s0(.REG(Z[0]),.SH1(tr1),.SH(0),.A(X[0]),.B(Y[0]));
part_sum s1(.REG(Z[1]),.SH1(tr2),.SH(tr1),.A(X[1]),.B(Y[1]));
part_sum s2(.REG(Z[2]),.SH1(tr3),.SH(tr2),.A(X[2]),.B(Y[2]));
part_sum s3(.REG(Z[3]),.SH1(tr4),.SH(tr3),.A(X[3]),.B(Y[3]));

endmodule

module calc(output[3:0] Z, input[3:0] X, input[3:0] Y, input SEL);
reg [3:0]ins;
always@(SEL or Y) begin
	if(SEL==1)
		ins = 16-Y;
	else
		ins = Y;
end		

sum s(.Z(Z),.X(X),.Y(ins));

endmodule
/*
module sel(output reg [2:0]b, input [2:0]a);

always begin
if(a[2]==0)
	b = a+1;
else
	b = a-2;
end

endmodule*/