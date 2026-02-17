module sr_latch_tb();
  reg s, r, en;
  wire q;
  sr_latch dut (.*);
  initial begin
    en=1; s=0; r=0;
    #10 s=0; r=1;  
    #10 s=1; r=0;     
    #10 s=1; r=1;   
    #20 en=0; s=0; r=0;
    #10 s=0; r=1;   
    #10 s=1; r=0;   
    #10 s=1; r=1; 
    #15 en=1;
    #90 $finish;
  end
  initial begin
    $monitor("time=%0t en=%b s=%b r=%b q=%b", $time, en, s, r, q);
    $dumpfile("sr_latch.vcd");
    $dumpvars(1,sr_latch_tb);
  end
endmodule
