module multiplex4 (output reg[15:0]send, input [15:0]s1, input [15:0]s2, input sel);

always@(sel or s1 or s2)
begin
case (sel)
	'b0:send=s1;	
	'b1:send=s2;
	endcase
end
endmodule
