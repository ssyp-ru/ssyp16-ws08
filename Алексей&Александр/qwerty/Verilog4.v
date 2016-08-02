module Verilog4(output reg [0:2] b,input [0:2] a);
always
begin
if (a==1 || a==2 || a==3 || a==0)
b=a+1;
if (a==5 || a==6 || a==7 || a==4)
b=a-2;
end
endmodule