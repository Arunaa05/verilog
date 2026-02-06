module nor_gate(input a,b,output y);
  assign y=~(a|b);
  //or(y,a,b);
endmodule
