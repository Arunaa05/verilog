module ripple_counter_tb;
  reg clk;
  reg rst;
  wire[3:0]q;
  ripple_counter DUT(.*);
  initial begin
    clk=0;
  end
  always #2 clk=~clk;
  initial begin
    #5 rst=1;
    #5 clk=1;
    #5 rst=0;
    #60 $finish;
  end
    initial begin
      $monitor("time=%0t | clk=%b, rst=%b | q=%b",$time,clk,rst,q);
    end
endmodule
