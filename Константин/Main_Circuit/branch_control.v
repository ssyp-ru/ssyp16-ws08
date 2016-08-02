module branch_control(output reg add_offset, input z, input [1:0] mode, input j);
	always @* begin
		if (j) begin
			if ((z & mode == 0) | (~z & mode == 1) | mode == 2 | mode == 3)
				add_offset = 1;
			else
				add_offset = 0;
		end
		else
			add_offset = 0;
	end
endmodule
