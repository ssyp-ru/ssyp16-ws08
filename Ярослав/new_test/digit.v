module digit(output reg[6:0] DISPLAY, input[3:0] NUM);
always begin
	if(NUM<10) begin
		if(NUM == 0) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 1;
			DISPLAY[4] = 0;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
		if(NUM == 1) begin
			DISPLAY[0] = 0;
			DISPLAY[1] = 0;
			DISPLAY[2] = 1;
			DISPLAY[3] = 0;
			DISPLAY[4] = 0;
			DISPLAY[5] = 1;
			DISPLAY[6] = 0;
		end
		if(NUM == 2) begin
			DISPLAY[0] = 0;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 1;
			DISPLAY[4] = 1;
			DISPLAY[5] = 0;
			DISPLAY[6] = 1;
		end
		if(NUM == 3) begin
			DISPLAY[0] = 0;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 0;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
		if(NUM == 4) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 0;
			DISPLAY[2] = 1;
			DISPLAY[3] = 0;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 0;
		end
		if(NUM == 5) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 1;
			DISPLAY[2] = 0;
			DISPLAY[3] = 0;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
		if(NUM == 6) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 1;
			DISPLAY[2] = 0;
			DISPLAY[3] = 1;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
		if(NUM == 7) begin
			DISPLAY[0] = 0;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 0;
			DISPLAY[4] = 0;
			DISPLAY[5] = 1;
			DISPLAY[6] = 0;
		end
		if(NUM == 8) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 1;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
		if(NUM == 9) begin
			DISPLAY[0] = 1;
			DISPLAY[1] = 1;
			DISPLAY[2] = 1;
			DISPLAY[3] = 0;
			DISPLAY[4] = 1;
			DISPLAY[5] = 1;
			DISPLAY[6] = 1;
		end
	end
end

endmodule