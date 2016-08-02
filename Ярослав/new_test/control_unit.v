module control_unit(output reg[3:0]A_SEL,
						  output reg[3:0]B_SEL,
						  output reg[15:0]CONST_IN,
						  output reg[15:0]DATA_IN,
						  output reg[3:0]DEST_SEL,
						  output reg[3:0]OP_SEL,
						  output reg[15:0]IMM_OFFSET,
						  output reg[1:0]MODE_SET,
						  output reg LOAD_EN,
						  output reg J,
						  output reg CONST_SEL,
						  output reg DATA_SEL,
						  output reg OFFSET_SEL,
						  output reg WRITE_ENABLED,
						  input[31:0] OP_CODE);
	reg[4:0]OP;
	
	always@(OP_CODE) begin
		OP = OP_CODE[31:27];
		case(OP)
			0: begin
				//NOP
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = 0;
				B_SEL = 0;
				DEST_SEL = 0;
				OFFSET_SEL = 0;
			end
			1: begin//MOVA
				LOAD_EN = 1;
				CONST_SEL = 1;
				CONST_IN = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0101;
				
			end
			2:begin//ADD
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0000;
			end
			3:begin//SUB
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0001;
			end
			4:begin//AND
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0100;
			end
			5:begin//OR
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0101;
			end
			6:begin//XOR
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0110;
			end
			7:begin//NOT
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0111;
			end
			8:begin//ADI
				LOAD_EN = 1;
				CONST_SEL = 1;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[22:19];
				CONST_IN = OP_CODE[18:3];
				OP_SEL = 4'b0000;
			end
			9:begin//SBI
				LOAD_EN = 1;
				CONST_SEL = 1;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[22:19];
				CONST_IN = OP_CODE[18:3];
				OP_SEL = 4'b0001;
			end
			10:begin//ANI
				LOAD_EN = 1;
				CONST_SEL = 1;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[22:19];
				CONST_IN = OP_CODE[18:3];
				OP_SEL = 4'b0100;
			end
			11:begin//ORI
				LOAD_EN = 1;
				CONST_SEL = 1;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[22:19];
				CONST_IN = OP_CODE[18:3];
				OP_SEL = 4'b0101;
			end
			12:begin//XRI
				LOAD_EN = 1;
				CONST_SEL = 1;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[22:19];
				CONST_IN = OP_CODE[18:3];
				OP_SEL = 4'b0110;
			end
			13: begin//MOVB
				LOAD_EN = 1;
				CONST_SEL = 1;
				CONST_IN = 4'b0000;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				B_SEL = OP_CODE[26:23];
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b0101;
			end
			14:begin//LSR
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b1001;
			end
			15:begin//LSL
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
				DEST_SEL = OP_CODE[26:23];
				OP_SEL = 4'b1000;
			end
			//TODO 16 LD
			16:begin
				LOAD_EN = 1;
				CONST_SEL = 0;
				DATA_SEL = 1;
				J = 0;
				WRITE_ENABLED = 0;
				A_SEL = OP_CODE[22:19];
				DEST_SEL = OP_CODE[26:23];
			end
			//TODO 17 ST
			17:begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				J = 0;
				WRITE_ENABLED = 1;
				A_SEL = OP_CODE[22:19];
				B_SEL = OP_CODE[18:15];
			end
			//TODO 18 JMR
			18: begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				A_SEL = OP_CODE[22:19];
				MODE_SET = 3;
				OFFSET_SEL = 1;
				J = 1;
			end
			//TODO 19 BZ
			19: begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				IMM_OFFSET = OP_CODE[18:3];
				MODE_SET = 0;
				OFFSET_SEL = 0;
				J = 1;
			end
			
			//TODO 20 BNZ
			20: begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				IMM_OFFSET = OP_CODE[18:3];
				MODE_SET = 1;
				OFFSET_SEL = 0;
				J = 1;
			end
			//TODO 21 JMP
			21: begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				IMM_OFFSET = OP_CODE[18:3];
				MODE_SET = 2;
				OFFSET_SEL = 0;
				J = 1;
			end
			default:begin
				LOAD_EN = 0;
				CONST_SEL = 0;
				DATA_SEL = 0;
				OFFSET_SEL = 0;
				J = 0;
				WRITE_ENABLED = 0;
			end
		endcase
	end

endmodule
