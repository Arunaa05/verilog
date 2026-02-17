module siso(
  input clk,rst,din,
  output reg dout
);
  reg [3:0]q;
  always@(posedge clk)begin
    if(rst)begin
      q<=4'b0000;
      dout<=1'b0;
    end
    else begin
      q<={q[2:0],din};
      dout<=q[3];
  end
  end
endmodule
