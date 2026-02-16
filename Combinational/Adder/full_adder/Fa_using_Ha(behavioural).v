module half_adder(
  input a, b,
  output reg sum, 
  output reg carry
);
  always@(*)begin
       sum = a ^ b;
       carry = a & b;
  end
endmodule
module full_adder(
  input a,b,cin,
  output reg sum,
  output reg carry
);
  wire sum1,carry1,carry2;
  half_adder HA1 (
  .a(a),
  .b(b),
  .sum(sum1),
  .carry(carry1)
);
  half_adder HA2 (
  .a(sum1),
  .b(cin),
  .sum(sum),
  .carry(carry2)
);
  assign carry = carry1|carry2;
endmodule

//module full_adder_tb;

reg a, b, cin;
wire sum, carry;

full_adder dut (
  .a(a),
  .b(b),
  .cin(cin),
  .sum(sum),
  .carry(carry)
);

initial begin
  
  a=0; b=0; cin=0; #10;

  a=0; b=0; cin=1; #10;

  a=0; b=1; cin=0; #10;

  a=0; b=1; cin=1; #10;

  a=1; b=0; cin=0; #10;

  a=1; b=0; cin=1; #10;

  a=1; b=1; cin=0; #10;

  a=1; b=1; cin=1; #10;
  $finish;
  initial begin
    $display("time=%0t a=%b b=%b cin=%b  | sum=%b   carry=%b",$time a,b,cin,sum,carry);

  end
end

endmodule
