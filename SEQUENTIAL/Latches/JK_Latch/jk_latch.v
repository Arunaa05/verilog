module jk_latch(
  input j,k,clk,
  output reg q,
  output reg qbar
);
always@(*)begin
  if(clk)begin
    if(j==0&&k==0)
      begin
        q<=q;
        qbar<=qbar;
      end
    else if(j==0&&k==1)
      begin
          q<=0;
          qbar<=1;
      end
    else if(j==1&&k==0)
      begin
          q<=1;
          qbar<=0;
      end
    else if(j==1&&k==1)
      begin
          q<=~q;
          qbar<=~qbar;
      end
        
  end
  end
endmodule
