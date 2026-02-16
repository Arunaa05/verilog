module half_sub(
  input a,b,
  output reg diff,
  output reg borrow
);
  always@(*)begin
      diff = a^b;
      borrow = (~a)&b;
  end
endmodule
