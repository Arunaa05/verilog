module or_test;
  reg a,b;
  wire c;
  or_gate dut(
    .a(a),
    .b(b),
    .c(c)
  );
  initial begin 
    #10a=0;b=0;
    #10a=0;b=1;
    #10a=1;b=0;
    #10a=1;b=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b|c=%b",$time,a,b,c);
  end
endmodule
