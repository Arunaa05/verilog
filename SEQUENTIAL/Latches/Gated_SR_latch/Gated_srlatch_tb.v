module srlatch_test;
  reg s,r,en;
  wire q,qbar;
  sr_latch dut(.*);
  initial begin
    
    en=0;s=0;r=0;
    #20 en=1;s=0;r=1;
    #20 en=0;s=1;r=0;
    #20 en=1;s=1;r=1;
    #50$finish;
  end
  initial begin 
    $monitor("time=%0t |en=%b s=%b r=%b|q=%b qbar=%b",$time,en,s,r,q,qbar);
  end
endmodule
