module dff_tb;
reg d,clk;
wire q;  
  d_ff dut(.*);
  always #10 clk=~clk;
  initial begin
    clk=0;
    d=1;
    #10
    clk=1;
    d=1;
    #10 d=0;
    #10 d=1;
    #50 $finish;
  end
  initial begin
    $monitor("time=%0t | clk=%b | d=%b |q=%b",$time,clk,d,q);
    $dumpfile("d_ff.vcd");
    $dumpvars(1,dff_tb);
  end
endmodule
