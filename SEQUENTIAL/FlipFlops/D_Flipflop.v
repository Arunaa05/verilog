module d_ff(
  input d,clk,rstn,
  output reg q
);
  always@(posedge clk or negedge rstn)begin
    if(rstn)
       q<=d;
    else
       q<=0;
  end
endmodule
