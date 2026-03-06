module Unknown (p,a,b,c);
output p;
input a,b,c;
wire q,r;
assign q=!((!a) && b && (!c));
assign r= !(a && (!b) && (!c));
and G1(p,q,r);
endmodule

//output 
XNOR operation between variables a and b
