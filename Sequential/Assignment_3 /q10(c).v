module tb;
reg a,b;
initial begin
a=1;
b=a;
$display($time,"a=%d,b=%d",a,b);
end
initial begin
#1 a<=1;
b<=a;
$display($time,"a=%d,b=%d",a,b);
end
endmodule

/*output
0 a=1,b=1
1 a=1,b=1
*/
