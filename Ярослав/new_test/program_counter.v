module program_counter(output reg [15:0]MEMORY_ADDRESS, input CLK, input [15:0]OFFSET,input ADD_OFFSET);

always@(posedge CLK) begin
	if(~ADD_OFFSET)
		MEMORY_ADDRESS = MEMORY_ADDRESS + 1;
	else
		MEMORY_ADDRESS = MEMORY_ADDRESS + OFFSET;
		
end


endmodule
