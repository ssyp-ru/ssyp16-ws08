module control_unit(
output reg data_sel,
output reg [15:0] const_in, output reg const_sel,
output reg load_en,
output reg [3:0] dest_sel, output reg [3:0] A_sel, output reg [3:0] B_sel,
output reg [3:0] op_sel, output reg [1:0] mode_sel, output reg offset_sel,
output reg J, output reg write_en,
input [31:0] op_code);

	reg [4:0] op;
	always @(op_code) begin
		op = op_code[31:27];
		dest_sel = op_code[26:23];
		A_sel = op_code[22:19];
		B_sel = op_code[18:15];
		const_in = 0;
		write_en = 0;
		data_sel = 0;
		const_sel = 0;
		J = 0;
		load_en = 0;
		mode_sel = 0;
		offset_sel = 0;
		op_sel = 0;
		
		case (op)
			//nop
			1: begin //mova
				load_en = 1;
				const_sel = 1;
				op_sel = 4'b0101;
			end
			2: begin //add
				load_en = 1;
				op_sel = 4'b0000;
			end
			3: begin //sub
				load_en = 1;
				op_sel = 4'b0001;
			end
			4: begin //and
				load_en = 1;
				op_sel = 4'b0100;
			end
			5: begin //or
				load_en = 1;
				op_sel = 4'b0101;
			end
			6: begin //xor
				load_en = 1;
				op_sel = 4'b0110;
			end
			7: begin //not
				load_en = 1;
				op_sel = 4'b0111;
			end
			8: begin //adi
				load_en = 1;
				const_sel = 1;
				B_sel = 0;
				const_in = op_code[18:3];
				op_sel = 4'b0000;
			end
			9: begin //sbi
				load_en = 1;
				const_sel = 1;
				B_sel = 0;
				const_in = op_code[18:3];
				op_sel = 4'b0001;
			end
			10: begin //ani
				load_en = 1;
				const_sel = 1;
				B_sel = 0;
				const_in = op_code[18:3];
				op_sel = 4'b0100;
			end
			11: begin //ori
				load_en = 1;
				const_sel = 1;
				B_sel = 0;
				const_in = op_code[18:3];
				op_sel = 4'b0101;
			end
			12: begin //xri
				load_en = 1;
				const_sel = 1;
				B_sel = 0;
				const_in = op_code[18:3];
				op_sel = 4'b0110;
			end
			13: begin //movb
				load_en = 1;
				const_sel = 1;
				B_sel = op_code[26:23];
				A_sel = op_code[22:19];
				op_sel = 4'b0101;
			end
			14: begin //lsr
				load_en = 1;
				op_sel = 4'b1001;
			end
			15: begin //lsl
				load_en = 1;
				const_sel = 0;
				op_sel = 4'b1000;
			end
			16: begin //ld
				load_en = 1;
				data_sel = 1;
				B_sel = 0;
			end
			17: begin //st
				write_en = 1;
				dest_sel = 0;
				B_sel = op_code[18:15];
				A_sel = op_code[22:19];
			end
			18: begin //jmr
				B_sel = 0;
				dest_sel = 0;
				B_sel = 0;
				A_sel = op_code[22:19];
				mode_sel = 3;
				offset_sel = 1;
				J = 1;
			end
			19: begin //bz
				J = 1;
				B_sel = 0;
				const_in = op_code[18:3];
			end
			20: begin //bnz
				B_sel = 0;
				const_in = op_code[18:3];
				mode_sel = 1;
				J = 1;
			end
			21: begin //jmp
				B_sel = 0;
				const_in = op_code[18:3];
				mode_sel = 2;
				offset_sel = 1;
				J = 1;
			end
			default: begin
				dest_sel = 0;
				A_sel = 0;
				B_sel = 0;
			end
		endcase
	end
endmodule
