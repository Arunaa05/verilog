module d_flip_flop(input d,clk,
                   output reg q);
  always@(posedge clk)
      q<=d;
endmodule
