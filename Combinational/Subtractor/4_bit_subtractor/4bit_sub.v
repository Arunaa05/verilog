module sub_4bit(
  input [3:0]a,b,
  output reg [3:0]diff
);
  always@(*)begin
     diff=a-b;
  end
endmodule
