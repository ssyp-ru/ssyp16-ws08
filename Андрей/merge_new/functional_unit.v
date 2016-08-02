module functional_unit (input [3:0] sel, input [15:0] A, input [15:0] B, output [15:0] F, output z);
wire [15:0] al1;
wire [15:0] shift1;
wire v,c,n;
wire zz;
ALU al (sel [2:0], A, B, al1, v,c,n, z);

RO_SH_GOOD shift (B, sel[1:0], 1'b0, 1'b0, shift1); 

multiplex2_16 m2(sel[3], al1, shift1, F);


endmodule
