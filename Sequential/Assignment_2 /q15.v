module test;
reg [3:0]a= 4'b110x;
initial
begin
if ( a !== 4'b1100)
begin 
  $display("b1");
end
else
begin
  $display("b2");
end
end
endmodule

//output
b1
