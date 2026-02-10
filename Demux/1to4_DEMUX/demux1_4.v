module demux1_4(input x,s0,s1 ,output y0,y1,y2,y3);
  assign y0=x & ~s0 & ~s1;
  assign y1=x & ~s0 & s1;
  assign y2=x & s0 & ~s1;
  assign y3=x & s0 & s1;
endmodule
