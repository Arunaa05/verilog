module mux8_1(
  input [7:0]x,
  input [2:0]s,
  output reg q
);
  integer i;
  always@(*)begin
    for(i=0;i<8;i++)begin
      if(s==i)
        q<=x[i];
  end
  end
endmodule
