module demux1_4(input x,s0,s1,output y0,y1,y2,y3);
  assign y0=(~s0 & ~s1)?x:1'b0;
  assign y1=(~s0 & s1)?x:1'b0;
  assign y2=(s0 & ~s1)?x:1'b0;
  assign y3=(s0 & s1)?x:1'b0;
endmodule
  
