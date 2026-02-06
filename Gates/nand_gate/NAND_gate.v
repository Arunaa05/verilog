module nand_gate(input a,b,output c);
  assign c=~(a&b);
  //and(c,a,b);
endmodule
