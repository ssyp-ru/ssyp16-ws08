
module part_sum(output SH1, output REG, input SH, input A, input B);

assign SH1 = ((A^B)&SH)|A&B;
assign REG = (A^B)^SH;

endmodule

module sum(output[15:0] Z, input[15:0] X, input[15:0] Y);//TO 16 DONE

wire tr[15:0];

part_sum s0(.REG(Z[0]),.SH1(tr[0]),.SH(0),.A(X[0]),.B(Y[0]));
part_sum s1(.REG(Z[1]),.SH1(tr[1]),.SH(tr[0]),.A(X[1]),.B(Y[1]));
part_sum s2(.REG(Z[2]),.SH1(tr[2]),.SH(tr[1]),.A(X[2]),.B(Y[2]));
part_sum s3(.REG(Z[3]),.SH1(tr[3]),.SH(tr[2]),.A(X[3]),.B(Y[3]));
part_sum s4(.REG(Z[4]),.SH1(tr[4]),.SH(tr[3]),.A(X[4]),.B(Y[4]));
part_sum s5(.REG(Z[5]),.SH1(tr[5]),.SH(tr[4]),.A(X[5]),.B(Y[5]));
part_sum s6(.REG(Z[6]),.SH1(tr[6]),.SH(tr[5]),.A(X[6]),.B(Y[6]));
part_sum s7(.REG(Z[7]),.SH1(tr[7]),.SH(tr[6]),.A(X[7]),.B(Y[7]));
part_sum s8(.REG(Z[8]),.SH1(tr[8]),.SH(tr[7]),.A(X[8]),.B(Y[8]));
part_sum s9(.REG(Z[9]),.SH1(tr[9]),.SH(tr[8]),.A(X[9]),.B(Y[9]));
part_sum s10(.REG(Z[10]),.SH1(tr[10]),.SH(tr[9]),.A(X[10]),.B(Y[10]));
part_sum s11(.REG(Z[11]),.SH1(tr[11]),.SH(tr[10]),.A(X[11]),.B(Y[11]));
part_sum s12(.REG(Z[12]),.SH1(tr[12]),.SH(tr[11]),.A(X[12]),.B(Y[12]));
part_sum s13(.REG(Z[13]),.SH1(tr[13]),.SH(tr[12]),.A(X[13]),.B(Y[13]));
part_sum s14(.REG(Z[14]),.SH1(tr[14]),.SH(tr[13]),.A(X[14]),.B(Y[14]));
part_sum s15(.REG(Z[15]),.SH1(tr[15]),.SH(tr[14]),.A(X[15]),.B(Y[15]));

endmodule

module calc(output[15:0] Z, input[15:0] X, input[15:0] Y, input SEL);// TO 16 DONE
reg [15:0]ins;
always@(SEL or Y) begin
	if(SEL==1)
		ins = 65536-Y;
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