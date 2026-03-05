//What is the bug in the following snippet?


module test;
parameter WIDTH=8;
endmodule

module top;
test OUT( );
initial
defparam OUT.WIDTH=10;

endmodule

//output
defparam can't give inside initial, so initial is the bug.
