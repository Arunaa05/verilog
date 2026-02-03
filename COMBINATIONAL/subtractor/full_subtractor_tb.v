module tb_full_sub;
  reg a,b,bin;
  wire diff,borrow;
  full_sub dut(
    .a(a), 
    .b(b), 
    .bin(bin),
    .diff(diff), 
    .borrow(borrow)
  );
  initial begin
    a=0;b=0;bin=0;
    #10a=0;b=0;bin=1;
    #10a=0;b=1;bin=0;
    #10a=0;b=1;bin=1;
    #10a=1;b=0;bin=0;
    #10a=1;b=0;bin=1;
    #10a=1;b=1;bin=0;
    #10a=1;b=1;bin=1;
    
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b bin=%b| diff=%b borrow=%b",$time,a,b,bin,diff,borrow);
  end
endmodule
