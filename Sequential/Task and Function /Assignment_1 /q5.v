module func(
  input [3:0]x,y,
  output [7:0]z_mul,
  output [7:0]z_div
);
  
  function [7:0]mul;
    input [3:0]a,b;
    begin
      mul=a*b;
    end
  endfunction
  assign z_mul = mul(x,y);
  function [7:0]div;
    input [3:0]a,b;
    begin
      div=a/b;
    end
  endfunction
 
     assign z_div=div(x,y);

endmodule

//testbench
module tb;
  reg [3:0]x,y;
  wire [7:0]z_mul,z_div;
  func dut(.x(x),.y(y),.z_mul(z_mul),.z_div(z_div));
  initial 
    begin
      x=10;y=10;#5;
      x=15;y=5;#5;
      x=9;y=3;#5;
      x=5;y=5;#5;
      $finish;
      
    end
  initial 
    $monitor("z_mul:%0d z_div:%0d",z_mul,z_div);
endmodule

/*output
z_mul:100 z_div:1
z_mul:75 z_div:3
z_mul:27 z_div:3
z_mul:25 z_div:1
*/
