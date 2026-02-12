module jkff_tb;
  reg j,k,clk;
  wire q,qbar;
  jk_ff dut(.*);
  initial 
    clk=0;
  always #5 clk=~clk;
  initial begin
    j=1;k=0;
    #10 j=0;k=1;
    #10 j=1;k=1;
    #10 j=0;k=1;
    #10 j=0;k=0;
    #20; $finish;
  end
  initial begin 
    $monitor("time=%0t | clk=%b j=%b k=%b | q=%b qbar=%b",$time,clk,j,k,q,qbar);
    $dumpfile("jk_ff.vcd");
    $dumpvars;
  end
endmodule
    
