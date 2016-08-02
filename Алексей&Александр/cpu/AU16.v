module AU16(input A,input [15:0] SH1,input [15:0] SH2,output [15:0] SHO,output V,output C,output N);

reg [15:0] SH;
always begin
if(A==1)
	SH=17'b10000000000000000-SH2;
else
	SH=SH2;	
end

A16 a(A,SH1,SH,SHO,V,C,N);

endmodule