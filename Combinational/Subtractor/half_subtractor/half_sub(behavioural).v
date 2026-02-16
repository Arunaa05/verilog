module half_sub(
  input a,b,
  output reg diff,
  output reg borrow
);
  always@(*)begin
  assign diff=a^b;
    assign borrow=(~a)&b;
  end
endmodule
