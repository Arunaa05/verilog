module tb_full_adder;
  reg a,b,cin;
  wire sum,carry;
  full_adder dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    a=0;b=0;cin=0;
    #10a=0;b=0;cin=1;
    #10a=0;b=1;cin=0;
    #10a=0;b=1;cin=1;
    #10a=1;b=0;cin=0;
    #10a=1;b=0;cin=1;
    #10a=1;b=1;cin=0;
    #10a=1;b=1;cin=1;
    
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b cin=%b|sum=%b carry=%b",$time,a,b,cin,sum,carry);
  end
endmodule
