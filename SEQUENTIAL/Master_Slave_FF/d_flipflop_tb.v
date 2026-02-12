module dms_tb;
  reg d,clk;
  wire qs,qsbar,qm;
  d_master_slave dut(.*);
  initial begin
     clk=1;
  d=0;
  end
  always #5 clk=~clk;
  initial begin
    d=0;
    #10 d=1; 
    #10 d=0; 
    #10 d=1; 
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b  d=%b|qm=%b qs=%b qsbar=%b",$time,clk,d,dut.qm,qs,qsbar);
    $dumpfile("d_master_slave.vcd");
    $dumpvars;
  end
endmodule
