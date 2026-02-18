module full_adder(input a,b,cin,output sum,cout);
  assign sum =a^b^c;
  assign cout = (a&b)|(b&cin)|(a&cin);
endmodule
module 4_bit_RCA(
  input [3:0]a,[3:0]b,cin, output [3:0]sum,cout);
wire c1,c2,c3;
  full_adder fa0(a[0],b[0],cin,s[0],c1);
  full_adder fa1(a[1],b[1],c1,s[1],c2);
  full_adder fa2(a[2],b[2],c2,s[2],c3);
  full_adder fa2(a[3],b[3],c3,s[3],cout);
endmodule
