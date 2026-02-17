module siso_tb;
  reg din;
  reg clk,rst;
  wire dout;
  wire reg [3:0] q;
  siso dut (.*);
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
    $monitor("time=%0t, clk=%b  rst=%b  din=%b dout=%b",$time,clk,rst,din,dout);
    
  end

endmodule
