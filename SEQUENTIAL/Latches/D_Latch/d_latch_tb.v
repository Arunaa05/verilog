module dlatch_test;
  reg d,en;
  wire q,qbar;
  d_latch dut(.*);
  initial begin
    
    en=0;d=0;
    #10 en=1;d=0;
    #10 en=0;d=1;
    #10 en=1;d=1;
    #50$finish;
  end
  initial begin 
    $monitor("time=%0t |en=%b d=%b|q=%b qbar=%b",$time,en,d,q,qbar);
  end
endmodule
