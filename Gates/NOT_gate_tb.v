module not_test;
  reg a;
  wire c;
  not_gate dut(
    .a(a),
    .c(c)
  );
  initial begin 
    #10a=0;
    #10a=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b|c=%b",$time,a,c);
  end
endmodule
