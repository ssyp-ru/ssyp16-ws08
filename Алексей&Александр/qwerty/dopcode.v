module dopcode(output [3:0]z, input [3:0]x);
 
wire [3:0]v;
 
assign v[0]=~x[0];
assign v[1]=~x[1];
assign v[2]=~x[2];
assign v[3]=~x[3];

calculator dcp (.g(z),.d(v),.f(1));
endmodule 