module demux_test;
  reg x,s0,s1;
  wire y0,y1,y2,y3;
  demux1_4 dut(.*);
  initial begin 
    x=0;s0=0;s1=0;
    #10x=1;s0=0;s1=1;
    #10x=0;s0=1;s1=0;
    #10x=1;s0=1;s1=1;
    #50$finish;
  end
  initial begin
    $monitor("time=%0t|s0=%b s1=%b x=%b|y0=%b y1=%b y2=%b y3=%b",$time,s0,s1,x,y0,y1,y2,y3);
  end
endmodule
