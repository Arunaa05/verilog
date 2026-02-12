module N_bit_register #(parameter N=8)(
  input clk,rst,
  input [N-1:0]d,
  output reg [N-1:0]q
);
  always@(posedge clk)begin
    if(rst)
      q<=d;
    else
      q<=1'b0;
  end
endmodule
