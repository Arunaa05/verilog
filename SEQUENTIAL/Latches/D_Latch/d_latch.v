module d_latch(
  input d,en,
  output q,qbar
);
  wire d_bar;
  wire s,r;
  not(d_bar,d);
  nand(q,s,qbar);
  nand(qbar,r,q);
  nand(s,d,en);
  nand(r,d_bar,en);
endmodule
 
