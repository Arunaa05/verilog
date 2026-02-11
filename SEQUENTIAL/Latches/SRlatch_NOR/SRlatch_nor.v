module srlatch_nor(input s,r,output reg q,qbar);
  assign q=~(r | qbar);
  assign qbar=~(s | q);
endmodule
