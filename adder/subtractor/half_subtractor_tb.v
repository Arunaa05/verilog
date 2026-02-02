module tb_half_sub;
  reg a,b;
  wire diff,borrow;
  half_sub dut(
    .a(a), 
    .b(b), 
    .diff(diff), 
    .borrow(borrow)
  );
  initial begin
    a=0;b=0;
    #10a=0;b=1;
    #10a=1;b=0;
    #10a=1;b=1;
    
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b| diff=%b borrow=%b",$time,a,b,diff,borrow);
  end
endmodule
