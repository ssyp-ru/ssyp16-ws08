module fa( input A,input B,input O,output S,output C);

wire A1,A2,B1,B2;
ha HA1(A,B,A1,A2);


ha HA2(A2,O,B1,B2);

assign S= B1 | A1 ;
assign C=B2;

endmodule