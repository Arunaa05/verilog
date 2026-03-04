***this design code is only for simulation***

  
module half_adder(
  input a, b,
  output sum, cout
);
  
  assign sum = a^b;
  assign cout = a & b;
endmodule

module full_adder(
  input a, b, cin,
  output sum, cout
);
  
  assign sum = a^b^cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module gen_if #(parameter sel = 0)(
  input A, B, Cin,
  output S, Cout
);
  generate
    case(sel)
      0: begin 
           initial $display("Full Adder is selected");
           half_adder ha(A, B, S, Cout);
         end
      1: begin 
           initial $display("Full Adder is selected");
           full_adder fa(A, B, Cin, S, Cout);
         end
    endcase
  endgenerate
endmodule
