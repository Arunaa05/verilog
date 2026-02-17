module johnson_counter_tb;
  reg clk,rst;
  wire [3:0]q;
  johnson_counter dut(.*);
  initial begin
    clk=0;
    rst=1;
  end
  always #5 clk=~clk;
  initial begin
    clk=1;
    #15 rst=0;
    #5 clk=0;
    #4 rst=1;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
    $dumpfile("johnson_counter.vcd");
    $dumpvars(1,johnson_counter_tb);
  end
endmodule
