module test;
  reg [3:0]a;
reg [6:0]b;
initial
begin
a=4'd10;
  b={a,1'b1};

  $display("b=%b",b);
end
endmodule

//output
b = 0010101

// 1010
//    1
// 1010 1
//When a smaller value (5 bits) is assigned to a larger register (7 bits), Verilog pads zeros on the left.
//00 1010 1
