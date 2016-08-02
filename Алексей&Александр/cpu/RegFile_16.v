module RegFile_16(input [3:0] dyt_sel,input [15:0] D,input clk,input load_en,input [3:0] A_sel,input [3:0] B_sel,output [15:0] A,output [15:0] B);
wire [15:0] N;
wire [15:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;
decoder4 decode(dyt_sel,N);
S16 S161(D,clk,N[0] & load_en,Q0);
S16 S162(D,clk,N[1] & load_en,Q1);
S16 S163(D,clk,N[2] & load_en,Q2);
S16 S164(D,clk,N[3] & load_en,Q3);
S16 S165(D,clk,N[4] & load_en,Q4);
S16 S166(D,clk,N[5] & load_en,Q5);
S16 S167(D,clk,N[6] & load_en,Q6);
S16 S168(D,clk,N[7] & load_en,Q7);
S16 S169(D,clk,N[8] & load_en,Q8);
S16 S1610(D,clk,N[9] & load_en,Q9);
S16 S1611(D,clk,N[10] & load_en,Q10);
S16 S1612(D,clk,N[11] & load_en,Q11);
S16 S1613(D,clk,N[12] & load_en,Q12);
S16 S1614(D,clk,N[13] & load_en,Q13);
S16 S1615(D,clk,N[14] & load_en,Q14);
S16 S1616(D,clk,N[15] & load_en,Q15);
multiplexor16_16 am4(A_sel,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,A);
multiplexor16_16 bm4(B_sel,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,B);

endmodule