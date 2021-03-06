module control_unit (input [31:0] op,
                     input [7:0] address,
							output reg load_en,
							output reg [1:0] a_sel,
							output reg [1:0] b_sel,
							output reg [1:0] dest_sel,
							output reg [3:0] op_sel,
							output reg [3:0] const_in,
							output reg const_sel,
							output reg [3:0] data_in,
							output reg data_sel,
							output reg [1:0] BZ_BNZ_JMP_JMR,//00 - BZ, 01 - BNZ, 10 - JMP, 11 - JMR
							output reg J,
							output reg offset_sel,
							output reg im_offset);

always @(address) begin
//read op from memory block 

end

always @(op) begin//op_sel - ALU/SHIFTER; AU/LU; AND/OR/XOR/NOT (+/-); 
dest_sel = op[26:23];
a_sel = op[22:19];
b_sel = op[18:15];
const_sel = op[18:3];
im_offset = op[18:3];
case (op[31:27])  //          0 /  1    ; 0 / 1; 00 /01/10 /11 ; 0/1
0://NOP
begin
load_en = 0;
a_sel = 0;
b_sel = 0;
dest_sel = 0;
op_sel = 0;
const_in = 0;
const_sel = 0;
data_in = 0;
data_sel = 0;	
end
1://MOVA
begin
const_in = 0;
const_sel = 1;
op_sel = 5;//0101
load_en = 1;	
data_sel = 0;
data_in = 0;
end
2://ADD
begin
data_sel = 0;
op_sel = 0;
load_en = 1;
data_in = 0;
const_in = 0;
end
3://SUB
begin
const_sel = 0;
data_sel = 0;
op_sel = 1;
load_en = 1;
data_in = 0;
end
4://AND
begin
const_sel = 0;
data_sel = 0;
op_sel = 4;
load_en = 1;
data_in = 0;
end
5://OR
begin
const_sel = 0;
data_sel = 0;
op_sel = 5;
load_en = 1;
data_in = 0;
end
6://XOR
begin
const_sel = 0;
data_sel = 0;
op_sel = 6;
load_en = 1;
data_in = 0;
end
7://NOT
begin
const_sel = 0;
data_sel = 0;
op_sel = 7;
load_en = 1;
data_in = 0;
end
8://ADI
begin
const_sel = 1;
data_in = 0;
data_sel = 0;
op_sel = 0;
b_sel = 0;
load_en = 1; 
end
9://SBI
begin
const_sel = 1;
op_sel = 1;
data_in = 0;
data_sel = 0;
b_sel = 0;	
load_en = 1;
end
10://ANI
begin
const_sel = 1;
op_sel = 4;
data_in = 0;
data_sel = 0;
b_sel = 0;	
load_en = 1;
end
11://ORI
begin
const_sel = 1;
op_sel = 5;//0101
data_in = 0;
data_sel = 0;
b_sel = 0;	
load_en = 1;
end
12://XRI
begin
const_sel = 1;
op_sel = 6;//0110
data_in = 0;
data_sel = 0;
b_sel = 0;	
load_en = 1;
end
13://MOVB
begin
b_sel = op[22:19];
a_sel = op[18:15];
const_in = 0;
const_sel = 1;
op_sel = 5;//0101
load_en = 1;	
data_sel = 0;
data_in = 0;
end
14://LSR
begin
const_sel = 0;
op_sel = 9;//1001
load_en = 1;	
data_sel = 0;
data_in = 0;
end
15://LSL
begin
const_sel = 0;
op_sel = 8;//1000
load_en = 1;	
data_sel = 0;
data_in = 0;
end
/*16://LD
begin
a_sel = op[10:9];
dest_sel = op[8:7];
data_in = op[6:3];
data_sel = 1;
op_sel = 0;
const_in = 0;
const_sel = 0;
b_sel = 0;	
load_en = 1;
end*/
18://BZ
begin
//im_offset = op[18:3];
BZ_BNZ_JMP_JMR = 0;
const_sel = 0;
op_sel = 0;
load_en = 0;	
data_sel = 0;
data_in = 0;
end
19://BNZ
begin
//im_offset = op[18:3];
BZ_BNZ_JMP_JMR = 1;
const_sel = 0;
op_sel = 0;
load_en = 0;	
data_sel = 0;
data_in = 0;
end
20://JMP
begin
//im_offset = op[18:3];
BZ_BNZ_JMP_JMR = 2;
const_sel = 0;
op_sel = 0;
load_en = 0;	
data_sel = 0;
data_in = 0;
end
21://JMR
begin
BZ_BNZ_JMP_JMR = 3;
const_sel = 0;
op_sel = 0;
load_en = 0;	
data_sel = 0;
data_in = 0;
end
endcase
end

endmodule
//