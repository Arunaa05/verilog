module nor_test;
  reg a,b;
  wire y;
  nor_gate dut(
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin 
    #10a=0;b=0;
    #10a=0;b=1;
    #10a=1;b=0;
    #10a=1;b=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b|y=%b",$time,a,b,y);
  end
endmodule
