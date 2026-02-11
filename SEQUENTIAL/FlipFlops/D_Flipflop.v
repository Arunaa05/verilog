module d_ff(
  input d,clk,
  output reg q,
  output qbar
);
  always@(posedge clk)begin
     q<=d;
     qbar<=~q;
  end
endmodule
