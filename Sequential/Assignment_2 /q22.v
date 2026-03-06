module test;
reg [3:0] x;
initial begin
x = 4'b0011;
fork
#5 x = x + 1;

#10 x = x + 2;
join
end
endmodule

//output
x=0110
