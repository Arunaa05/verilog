module sipo_tb;
  reg din;
  reg clk,rst;
  wire [3:0]q;
  sipo dut (.*);
  initial begin
     clk=1;
    forever #5 clk=~clk;
  end
    initial begin
        rst=1;din=1;
        #10 rst=0; 
        #10 din=1;
        #10 din=0;
        #10 din=1;
        #10 din=1;
        #10 din=1;
        #10 din=0;
        #10 din=0;
        #10 din=1;
        #10 din=0;
        #10 din=0;
        #10 din=1;
        #10 din=1;
        #100$finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b  din=%b q=%b",$time,clk,rst,din,q);
    $dumpfile("sipo.vcd");
    $dumpvars(1,sipo_tb);
  end

endmodule
