module control_unit(
output reg [15:0] data_in, output reg data_sel,
output reg [15:0] const_in, output reg const_sel,
output reg load_en,
output reg [3:0] dest_sel, output reg [3:0] A_sel, output reg [3:0] B_sel,
output reg [3:0] op_sel,
input [31:0] op_code, input clk);

	reg [4:0] op;
	always @(posedge clk) begin
		op = op_code[31:27];
		case (op)
			0: begin //nop
				load_en = 0;
				const_sel = 0;
				data_sel = 0;
			end
			1: begin //mova
				load_en = 1;
				const_sel = 1;
				const_in = 4'b0000;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0101;
			end
			2: begin //add
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0000;
			end
			3: begin //sub
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0001;
			end
			4: begin //and
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0100;
			end
			5: begin //or
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0101;
			end
			6: begin //xor
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0110;
			end
			7: begin //not
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0111;
			end
			8: begin //adi
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				dest_sel = op_code[22:19];
				const_in = op_code[18:3];
				op_sel = 4'b0000;
			end
			9: begin //sbi
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				dest_sel = op_code[22:19];
				const_in = op_code[18:3];
				op_sel = 4'b0001;
			end
			10: begin //ani
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				dest_sel = op_code[22:19];
				const_in = op_code[18:3];
				op_sel = 4'b0100;
			end
			11: begin //ori
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				dest_sel = op_code[22:19];
				const_in = op_code[18:3];
				op_sel = 4'b0101;
			end
			12: begin //xri
				load_en = 1;
				const_sel = 1;
				data_sel = 0;
				A_sel = op_code[26:23];
				dest_sel = op_code[22:19];
				const_in = op_code[18:3];
				op_sel = 4'b0110;
			end
			13: begin //movb
				load_en = 1;
				const_sel = 1;
				const_in = 4'b0000;
				data_sel = 0;
				B_sel = op_code[26:23];
				A_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b0101;
			end
			14: begin //lsr
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b1001;
			end
			15: begin //lsl
				load_en = 1;
				const_sel = 0;
				data_sel = 0;
				A_sel = op_code[26:23];
				B_sel = op_code[22:19];
				dest_sel = op_code[18:15];
				op_sel = 4'b1000;
			end
		endcase
	end
endmodule
