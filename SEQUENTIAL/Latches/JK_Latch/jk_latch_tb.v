module jklatch_test;
  reg j,k,clk;
  wire q,qbar;
  jk_latch dut(.*);
  initial begin
    clk=1;
    j=0;k=1;
    #10 j=1;k=1;
    #10 j=1;k=0;
    #10 j=0;k=0;
    #50$finish;
  end
  initial begin 
    $monitor("time=%0t | clk=%b j=%b k=%b|q=%b qbar=%b",$time,clk,j,k,q,qbar);
  end
endmodule
