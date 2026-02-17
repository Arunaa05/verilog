module d_latch_tb;
  reg d, en;
  wire q;
  d_latch dut (.*);
  initial begin
    en=0; d=0;
    #10 d=1;
    #10 d=0;
    #10 en=1;
    #10 d=1;
    #10 en=1;
    #10 d=0;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t en=%b d=%b q=%b",$time,en,d,q);
    $dumpfile("d_latch.vcd");
    $dumpvars(1,d_latch_tb);
  end
endmodule
