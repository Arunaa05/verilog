module mux2_1(input i0,i1,s,output y);
  
  assign y=(s == 0)?i0:i1;
  
endmodule
