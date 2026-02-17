module piso(
  input clk,rst,load,
  input [3:0]din,
  output reg dout
);
  reg [3:0]q;
  always@(posedge clk)begin
    if(rst)
      q<=4'b0000;
    else if(load)
      q<=din;
    else begin
      dout<=q[3];
      q<={q[2:0],1'b0};
    end
  end
endmodule
