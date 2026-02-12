module sr_ff(
  input s,r,clk,rst,
  output reg q,qbar
);
  always@(posedge clk or posedge rst)begin
    if(rst)
      q<=1'b0;
    
