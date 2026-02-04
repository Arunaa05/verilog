module demux1_2(input x,s,output y0,y1);
  assign y0= x & ~s;
  assign y1= x & s;
endmodule
