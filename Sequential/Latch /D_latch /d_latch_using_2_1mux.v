module mux2_1(
  input d,
  input en,
  output reg y
);
  always@(*)begin
    if(en)
      y<=d;
  end
endmodule
