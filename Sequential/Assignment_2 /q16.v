module test;
reg [3:0]a= 4'b110x;
wire y = (a== 4'b1100)?1'b1:1'b0;
endmodule

//output
y=x
