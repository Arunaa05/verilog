module test;
  reg [2:0]a;
reg [2:0]x;
initial
begin
a = 3'd4;
x = ^a;
  $display("x=%b",x);
end
endmodule

//output
x = 001
