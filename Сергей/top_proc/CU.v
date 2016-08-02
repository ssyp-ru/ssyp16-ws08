module CU(input [31:0] IN,
			 input clk,
			 output reg load_en,
			 output reg [3:0] A_sel,
			 output reg [3:0] B_sel,
			 output reg [3:0] dest_sel,
			 output reg data_sel,
			 output reg [3:0] op_sel,
			 output reg const_sel,
			 output reg [15:0] const_in,
			 output reg J,
			 output reg [1:0] B,
			 output reg offset_sel,
			 output reg [15:0] im_offset,
			 output reg write_en);



always @(IN) begin
dest_sel=IN[26:23];
A_sel=IN[22:19];
B_sel=IN[18:15];
const_in=IN[18:3];
im_offset=IN[18:3];
J=0;
B=0;
offset_sel=0;
write_en=0;
case (IN[31:27])
0:begin
load_en=0;
A_sel=0;
B_sel=0;
dest_sel=0;
op_sel=0;
const_sel=0;
data_sel=0;
end
1: /*MOVA*/begin
const_sel=1;
op_sel=4'b0101;
data_sel=0;
load_en=1;
end
2:/*ADD*/begin
const_sel=0;
op_sel=4'b0000;
data_sel=0;
load_en=1;

end

3:/*SUB*/begin
const_sel=0;
op_sel=4'b0001;
data_sel=0;
load_en=1;
end
4:/*AND*/begin
const_sel=0;
op_sel=4'b0100;
data_sel=0;
load_en=1;
end
5:/*OR*/begin
const_sel=0;
op_sel=4'b0101;
data_sel=0;
load_en=1;
end
6:/*XOR*/begin
const_sel=0;
op_sel=4'b0110;
data_sel=0;
load_en=1;
end
7:/*NOT*/begin
const_sel=0;
op_sel=4'b0111;
data_sel=0;
load_en=1;
end

8:/*ADI*/begin
const_sel=1;
op_sel=4'b0000;
data_sel=0;
B_sel=0;
load_en=1;
end
9:/*SBI*/begin
const_sel=1;
op_sel=4'b0001;
data_sel=0;
B_sel=0;
load_en=1;
end
10:/*ANI*/begin
const_sel=1;
op_sel=4'b0100;
data_sel=0;
B_sel=0;
load_en=1;
end
11:/*ORI*/begin
const_sel=1;
op_sel=4'b0101;
data_sel=0;
B_sel=0;
load_en=1;
end
12:/*XRI*/begin
const_sel=1;
op_sel=4'b0110;
data_sel=0;
B_sel=0;
load_en=1;
end
13:/*MOVB*/begin
A_sel=IN[18:15];
B_sel=IN[22:19];
const_in=0;
const_sel=1;
op_sel=4'b0101;
data_sel=0;
load_en=1;
end
14:/*LSR*/begin
const_sel=0;
op_sel=4'b1001;
data_sel=0;
load_en=1;
end
15:/*LSL*/begin
const_sel=0;
op_sel=4'b1000;
data_sel=0;
load_en=1;
end
16/*LD*/:  begin
op_sel=0;
data_sel=1;
const_sel=0;
load_en=1;
end
17/*ST*/: begin
op_sel=0;
data_sel=0;
const_sel=0;
write_en=1;
load_en=0;
end
19/*BZ*/:begin
J=1;
B=0;
const_sel=0;
op_sel=0;
load_en=0;
data_sel=0;
end

//10101 0000 0000 0000 0000 0000 0000 000
20/*BNZ*/:begin
J=1;
B=1;
const_sel=0;
op_sel=0;
load_en=0;
data_sel=0;
end
21/*JMP*/:begin
J=1;
B=2;
const_sel=0;
op_sel=0;
load_en=0;
data_sel=0;
end
18/*JMR*/:begin
B=3;
const_sel=0;
op_sel=0;
load_en=0;
data_sel=0;
offset_sel=1;
J=1;
end
default: begin;
B=0;
const_sel=0;
op_sel=0;
load_en=0;
data_sel=0;

end

endcase

end

endmodule