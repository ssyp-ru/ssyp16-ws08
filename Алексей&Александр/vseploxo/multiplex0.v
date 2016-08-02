module multiplex0 (output reg send, input [1:0]sel, input s0, input s1 ,input s2 , input s3);
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
