module mux4_1(input i0,i1,i2,i3,s1,s0,output y);
  assign y= (s1==0) && (s0==0)?i0:
    (s1==0) && (s0==1)?i1:
    (s1==1) && (s0==0)?i2:
             i3;
endmodule
