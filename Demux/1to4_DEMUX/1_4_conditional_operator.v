module(input x,s0,s1,output y0,y1,y2,y3);
  assign y0=(s0==0&s1==0)?x;
  assign y1=(s0==0&s1==1)?x;
  assign y2=(s0==1&s1==0)?x;
  assign y3=(s0==1&s1==1)?x;
endmodule
  
