module sr_latch(
  input s,r,en,
  output reg q,
  output qbar
);
assign qbar = ~q;
  always@(*)begin
  if(en)begin
    if(~s & r)
      q = 0;
    else if(s & ~r)
      q = 1;
    else if(~s & ~r)
      q = q;
    else
      q = 1'bx;
  end
  end
endmodule
