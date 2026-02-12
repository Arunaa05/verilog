module srff_tb;
  reg s,r,clk;
  wire q,qbar;
  sr_ff dut(.*);
  initial 
    clk =0;
  always #5 clk=~clk;
  initial begin 
    s=1;r=0;
    #10 s=0;r=1;
    #10 s=1;r=1;
    #10 s=0;r=1;
    #10 s=0;r=0;
     
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b s=%b r=%b |q=%b qbar=%b",$time,clk,s,r,q,qbar);
    $dumpfile("jk_ff.vcd");
    $dumpvars;
  end
endmodule
