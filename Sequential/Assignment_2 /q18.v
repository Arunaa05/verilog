module test;
reg [3:0]a= 4'b0100;
reg [3:0]b;

initial
begin
b = a+1'bx;
end
  initial
  $display("b=%b",b);
  
endmodule

//output
b=xxxx
