module full_adder(
  input a, b, cin,
  output sum, cout
);
  assign sum = a^b^cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
  
endmodule

module rca #(parameter N= 4) (
  input [N-1:0] A, B, 
  input Cin,
  output [N-1:0] S, Cout);
  genvar i;
  
  full_adder fa0(A[0], B[0], Cin, S[0], Cout[0]);
  generate  
    for(i=1; i<N; i++) begin
      full_adder fa(A[i], B[i], Cout[i-1], S[i], Cout[i]);
    end
  endgenerate
endmodule
