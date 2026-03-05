module test;
  reg [3:0]a= 4'b110x;
 
initial
begin
if (a==4'b1100)
begin
    $display("B1");
end
else
begin
    $display("B2");
end
end
endmodule

//output
B2
