module sub_4bit(
  input [3:0]a,b,
  input cin,
  output reg [3:0]diff,
  output reg bout
);
  always@(*)begin
    {bout,diff}=a-b-cin;
  end
endmodule
