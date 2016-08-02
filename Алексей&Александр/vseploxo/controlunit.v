module controlunit (output reg [15:0]in_offset,
						  output reg offset_sel,
						  output reg f,
						  output reg [1:0]bz_bnz_jmp_jmr,
						  output reg [3:0]a_sel,
						  output reg [3:0]b_sel,
						  output reg [3:0]dest_sel,
						  output reg [15:0]const_in,
						  output reg const_sel,
						  output reg [3:0]op_sel,
						  output reg data_sel,
						  output reg load_en,
						  output reg write_en,
						  input [31:0] op_code,
						  input clk);

always@(op_code,  clk)
begin

case (op_code[31:27])
1://nop
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
2://mova
begin 
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
write_en=0;
const_sel = 0;
op_sel = 4'b0100 ;                    

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
3://add
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
write_en=0;
op_sel =4'b0000 ;                       

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
4://sub
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
write_en=0;
const_in = 0;
const_sel = 0;
op_sel =4'b0001 ;                       

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
5://and
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
write_en=0;
const_sel = 0;
op_sel = 4'b0100;

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
6://or
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel =4'b0101;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
7://xor
begin
a_sel = op_code[  22:19];
b_sel = op_code[  18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel =4'b0110;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
8://not
begin
a_sel = op_code[   22:19];
b_sel = op_code[   18:15 ];
dest_sel= op_code[ 26:23 ];
const_in = 0;
const_sel = 0;
op_sel =4'b0111;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
9://adi
begin
a_sel = op_code[22:19];
b_sel = 0;
dest_sel= op_code[26:23];
const_in = op_code[18:3];
const_sel = 1;
op_sel =4'b0000 ;

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
write_en=0;
end
10://sbi
begin
a_sel = op_code[22:19];
b_sel = 0;
write_en=0;
dest_sel= op_code[26:23];
const_in = op_code[18:3];
const_sel = 0;
op_sel =4'b0001;

data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
11://ani
begin
a_sel = op_code[22:19];
b_sel = 0;
dest_sel= op_code[26:23];
const_in = op_code[18:3];
const_sel = 1;
op_sel =4'b0100 ;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
12://ori
begin
a_sel = op_code[22:19];
b_sel = 0;
dest_sel= op_code[26:23];
const_in = op_code[18:3];
const_sel = 1;
op_sel =4'b0101 ;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
13://xri
begin
a_sel = op_code[22:19];
b_sel = 0;
dest_sel= op_code[26:23];
const_in = op_code[18:3];
const_sel = 1;
op_sel =4'b0110 ;
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
14://movb
begin
a_sel = op_code[18:15];
b_sel = op_code[18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel = 4'b0100 ;                    
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
15://lsr
begin
a_sel = op_code[22:19];
b_sel = op_code[18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel = 4'b1001 ;                    
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
16://lsl
begin
a_sel = op_code[22:19];
b_sel = op_code[18:15];
dest_sel= op_code[26:23];
const_in = 0;
const_sel = 0;
op_sel = 4'b1000 ;                    
write_en=0;
data_sel =0 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
17://ld;
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =1 ;
load_en =1;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
18://st;
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=1;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
19://jmr

begin
in_offset=op_code[18:3];
bz_bnz_jmp_jmr=3;
offset_sel=1;
f=1;
write_en=0;
a_sel = 0;
b_sel = 0;
dest_sel= 0;
const_in = 0;
const_sel = 0;
op_sel =0;
load_en=0;
data_sel =0;
end

20://slt
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;

data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
21://bz

begin
in_offset=op_code[18:3];
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=1;
a_sel = 0;
b_sel = 0;
dest_sel= 0;
const_in = 0;
const_sel = 0;
op_sel =0;
load_en=0;
write_en=0;
data_sel =0;
end

22://bzn

begin
in_offset=op_code[18:3];
bz_bnz_jmp_jmr=1;
offset_sel=0;
f=1;
a_sel = 0;
b_sel = 0;
dest_sel= 0;
const_in = 0;
const_sel = 0;
write_en=0;
op_sel =0;
load_en=0;
data_sel =0;
end

23://jmp

begin
in_offset=op_code[18:3];
bz_bnz_jmp_jmr=2;
offset_sel=0;
f=1;
write_en=0;
a_sel = 0;
b_sel = 0;
dest_sel= 0;
const_in = 0;
const_sel = 0;
op_sel =0;
load_en=0;
data_sel =0; 
end
24:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
25:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
26:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
27:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
29:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
30:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
31:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
0:
begin
a_sel = 0;
b_sel = 0;
dest_sel=0;
const_in = 0;
const_sel = 0;
op_sel =0;
write_en=0;
data_sel =0 ;
load_en =0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
default:
begin
a_sel=0;
b_sel=0;
dest_sel=0;
const_in=0;
const_sel=0;
op_sel=0;
write_en=0;
data_sel=0;
load_en=0;
in_offset=0;
bz_bnz_jmp_jmr=0;
offset_sel=0;
f=0;
end
 endcase
end
endmodule
