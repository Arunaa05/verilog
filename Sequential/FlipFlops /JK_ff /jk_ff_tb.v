module jk_ff_tb;
  reg j,k,clk,rst;
  wire q;
  jk_ff dut(.*);
  initial 
     clk=0;
  always #5 clk=~clk;
  initial begin
   
    rst=1;j=1;k=1;
    #20 rst=0;j=0;k=0;
    #20 j=0;k=1;
    #20 j=1;k=0;
    #20 j=1;k=1;
     #20 j=1;k=0;
     
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t | clk=%b rst=%b j=%b k=%b | q=%b",$time,clk,rst,j,k,q);
    $dumpfile("jk_ff.vcd");
    $dumpvars(1,jk_ff_tb);
  end
endmodule
