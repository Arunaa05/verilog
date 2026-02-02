module mux4_1(input i0,i1,i2,i3,s0,s1,
              output y);
  
  assign y=~s1?(~s0?i0:i1):(~s0?i2:i3);
  
endmodule
