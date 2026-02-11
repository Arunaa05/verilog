module srlatch_test;
  reg s,r;
  wire q,qbar;
  srlatch_nor dut(.*);
  initial begin
    s=0;r=0;
    #20 s=0;r=1;
    #20 s=1;r=0;
    #20 s=1;r=1;
    #50$finish;
  end
  initial begin 
    $monitor("time=%0t |s=%b r=%b|q=%b qbar=%b",$time,s,r,q,qbar);
  end
endmodule
