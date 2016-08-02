module fullram (output [3:0]out, input [3:0]data, input rw, input [3:0]wordselect);

bitslise sl1  (.out(out[0]),.rw(rw),.data(data[0]),.wordselect0(wordselect[0]),.wordselect1(wordselect[1]),.wordselect2(wordselect[2]),.wordselect3(wordselect[3]));
bitslise sl2  (.out(out[1]),.rw(rw),.data(data[1]),.wordselect0(wordselect[0]),.wordselect1(wordselect[1]),.wordselect2(wordselect[2]),.wordselect3(wordselect[3]));
bitslise sl3  (.out(out[2]),.rw(rw),.data(data[2]),.wordselect0(wordselect[0]),.wordselect1(wordselect[1]),.wordselect2(wordselect[2]),.wordselect3(wordselect[3]));
bitslise sl4  (.out(out[3]),.rw(rw),.data(data[3]),.wordselect0(wordselect[0]),.wordselect1(wordselect[1]),.wordselect2(wordselect[2]),.wordselect3(wordselect[3]));

endmodule
