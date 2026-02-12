module d_ms(
  input d,clk,
  output qs,qn
);
  wire qm;
  not(clk,~clk);
  assign qm=d;
  assign qs=qm;
  assign qn = ~qs;
endmodule
