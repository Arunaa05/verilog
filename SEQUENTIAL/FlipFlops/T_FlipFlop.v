module t_ff( 
  input t,clk,
  output reg q,
  output reg qbar
);
  always@(POsedge clk)begin
    if(t==1)
      q<=~t;
    else
      q<=q;
  end
endmodule
