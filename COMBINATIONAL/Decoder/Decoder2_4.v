module decoder(input x1,x0,output y0,y1,y2,y3);
  assign y0=~x1 & ~x0;
  assign y1=~x1 & x0;
  assign y2=x1 & ~x0;
  assign y3=x1 & x0;
endmodule
