module test;
reg [2:0] a, b;
reg y;
initial
begin
a= 3'd5;
b= 3'b111;
y = a&&b;
  $display("y=%b",y);
end
endmodule

//output
y = 1
