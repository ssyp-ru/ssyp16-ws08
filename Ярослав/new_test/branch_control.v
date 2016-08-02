module branch_control(output reg ADD_OFFSET,input Z, input [1:0]MODE_SET,input J);

always @* begin
	if(J) begin
		if(((~MODE_SET==0) & Z)|((MODE_SET == 1)&(~Z))|(MODE_SET == 2)|(MODE_SET == 3))
			ADD_OFFSET = 1;
		else
			ADD_OFFSET = 0;
	end
	else
		ADD_OFFSET = 0;
		
		
			
end

endmodule
