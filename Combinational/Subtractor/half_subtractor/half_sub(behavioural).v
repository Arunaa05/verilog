module half_sub(
  input a,b,
  output diff,
  output borrow
);
  wire c;
  assign c=~a;
  assign diff=a^b;
  assign borrow=c&b;
endmodule
