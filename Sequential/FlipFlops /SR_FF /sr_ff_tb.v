module sr_ff_tb;
  reg s,r,clk,rst;
  wire q;
  sr_ff dut(.*);
  initial 
     clk=0;
  always #5 clk=~clk;
  initial begin
   
    rst=1;s=1;r=1;
    #20 rst=0;s=0;r=0;
    #20 s=0;r=1;
    #20 s=1;r=0;
    #20 s=1;r=1;
     #20 s=1;r=0;
     
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b rst=%b s=%b r=%b | q=%b",$time,clk,rst,s,r,q);
  end
endmodule
