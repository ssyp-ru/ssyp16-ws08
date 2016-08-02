module decoder(output reg[15:0] OUT, input [3:0] IN);//TO 16 DONE
	always@(IN) begin
		OUT = 0;
		OUT[IN] = 1;
	end

endmodule