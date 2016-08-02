module decoder (output reg s0, output reg s1,output reg s2,output reg s3,output reg s4,output reg s5,output reg s6,output reg s7,output reg s8,output reg s9,output reg s10,output reg s11,output reg s12,output reg s13, output reg s14, output reg s15, input [3:0]dest_sel);

always@(dest_sel)
begin
case (dest_sel)
	'b0000: 
	begin
			s0 = 1;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b0001: 
	begin
	      s0 = 0;
			s1 = 1;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b0010: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 1;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b0011: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 1;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b0100: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 1;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b0101: 
	begin
	      s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 1;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b0110: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 1;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b0111: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 1;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b1000: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 1;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b1001: 
	begin
	      s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 1;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b1010: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 1;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b1011: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 1;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 0;
			end
	'b1100: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 1;
			s13= 0;
			s14= 0;
			s15= 0;
			
			end
	'b1101: 
	begin
	      s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 1;
			s14= 0;
			s15= 0;
			
			end
	'b1110: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 1;
			s15= 0;
			end
	'b1111: 
	begin
			s0 = 0;
			s1 = 0;
			s2 = 0;
			s3 = 0;
			s4 = 0;
			s5 = 0;
			s6 = 0;
			s7 = 0;
			s8 = 0;
			s9 = 0;
			s10= 0;
			s11= 0;
			s12= 0;
			s13= 0;
			s14= 0;
			s15= 1;
			end
	endcase
end

endmodule
