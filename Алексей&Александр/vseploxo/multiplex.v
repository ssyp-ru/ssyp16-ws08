module multiplex (output reg [15:0]send, input [1:0]sel, input [15:0]s0, input [15:0]s1, input [15:0]s2, input [15:0]s3);
always@(sel or s0 or s1 or s2 or s3)
begin
case (sel)
	'b00:send=s0; 
	'b01:send=s1;
	'b10:send=s2;
 	'b11:send=s3;
	endcase
end
endmodule
