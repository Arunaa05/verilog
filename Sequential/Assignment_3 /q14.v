module tb;
//Initial value of a=1 and b=2, then what will be final value if
initial 
begin
a=1;b=2;
always @ (posedge clock)
a<=b;
always @ (posedge clock)
b<=a;
end
endmodule

/*output
a=2 
b=1
*/
