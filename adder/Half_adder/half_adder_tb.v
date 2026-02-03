module tb_half_adder;
  reg a,b;
  wire sum,carry;
  half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    a=0;b=0;
    #10a=0;b=1;
    #10a=1;b=0;
    #10a=1;b=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b|sum=%b carry=%b",$time,a,b,sum,carry);
  end
endmodule
