module dopcode(output [15:0]z, input [15:0]x);
 
wire [15:0]v;
 
assign v[0]=~x[0];
assign v[1]=~x[1];
assign v[2]=~x[2];
assign v[3]=~x[3];
assign v[4]=~x[4];
assign v[5]=~x[5];
assign v[6]=~x[6];
assign v[7]=~x[7];
assign v[8]=~x[8];
assign v[9]=~x[9];
assign v[10]=~x[10];
assign v[11]=~x[11];
assign v[12]=~x[12];
assign v[13]=~x[13];
assign v[14]=~x[14];
assign v[15]=~x[15];

calculator dcp (.g(z),.d(v),.f(16'b0000000000000001));
endmodule 