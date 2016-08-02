module decoder4(input [3:0] I,output reg [15:0] SH);
always @(I) begin
		SH=0;
		SH[I]=1;
end
endmodule