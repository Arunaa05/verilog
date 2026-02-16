module full_add(
  input a,b,cin,
  output reg sum,
  output reg carry
);
  always@(*)begin
    sum = a^b^cin;
    carry = (a&b)|(b&cin)|(cin&a);
  end
endmodule
