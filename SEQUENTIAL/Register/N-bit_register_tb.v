module Nbit_tb;
  parameter N=4;
  reg [N-1:0]d;
  reg clk;
  reg rst;
  wire [N-1:0]q;
  N_bit_register #(N) dut(.*);
  initial begin
     clk=1;
  d=0;
  end
  always #5 clk=~clk;
  initial begin
    
    rst=1;d=4'b0011;
    #10 rst=0;d=4'b0110; 
    #10 d=4'b1110; 
    #10 d=4'b1000; 
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |rst =%b clk=%b  d=%b|q=%b",$time,rst,clk,d,q);
    $dumpfile("N_bit_register.vcd");
    $dumpvars(1,Nbit_tb);
  end
endmodule
