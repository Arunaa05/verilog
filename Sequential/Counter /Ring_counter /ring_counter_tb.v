module ring_counter_tb;
  reg clk;
  reg rst;
  wire[3:0]q;
  ring_counter DUT(.*);
  always #2 clk=~clk;
  initial begin
    #5 rst=0;
    #5 clk=0;
    #5 rst=1;
    #5 rst=0;
    #30 $finish;
  end
    initial begin
      $monitor("time=%0t | clk=%b, rst=%b | q=%b",$time,clk,rst,q);
    end
endmodule
