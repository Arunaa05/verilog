module d_ff(
  input d,clk,
  output reg q,
  output reg qbar
);
  always@(posedge clk)begin
     q<=d;
     qbar<=~d;
  end
endmodule
