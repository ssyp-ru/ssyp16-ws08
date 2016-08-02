module multiplexfb (output reg [15:0]send,input  [3:0]sel,input  [15:0]s0, input  [15:0]s1, input  [15:0]s2, input  [15:0]s3, input  [15:0]s4,input  [15:0]s5,input  [15:0]s6,input  [15:0]s7,input  [15:0]s8,input  [15:0]s9,input  [15:0]s10,input  [15:0]s11,input  [15:0]s12,input  [15:0]s13,input  [15:0]s14,input  [15:0]s15);
always@(sel or s0 or s1 or s2 or s3 or s4 or s5 or s6 or s7 or s8 or s9 or s10 or s11 or s12 or s13 or s14 or s15)

begin
case (sel)
	'b0000:send=s0; 
	'b0001:send=s1;
	'b0010:send=s2;
 	'b0011:send=s3;
	'b0100:send=s4; 
	'b0101:send=s5;
	'b0110:send=s6;
 	'b0111:send=s7;
	'b1000:send=s8; 
	'b1001:send=s9;
	'b1010:send=s10;
 	'b1011:send=s11;
	'b1100:send=s12; 
	'b1101:send=s13;
	'b1110:send=s14;
 	'b1111:send=s15;
	endcase
end
endmodule
