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
  output S, Cout);
   
  generate
    if(sel) begin
      initial $display("Full Adder is selected");
      full_adder fa(A, B, Cin, S, Cout);
    end
    else begin
      initial $display("Half Adder is selected");
      half_adder ha(A, B, S, Cout);
    end
  endgenerate
endmodule
