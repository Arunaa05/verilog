module encoder(input d3,d2,d1,d0,
               output y0,y1);
  assign y0=d3|d1;
  assign y1=d3|d2;
endmodule
