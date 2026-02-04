module demux_test;
  reg x,s;
  wire y0,y1;
  demux1_2 dut(.*);
  initial begin 
    x=0;s=0;
    #10x=0;s=1;
    #10x=1;s=0;
    #10x=1;s=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|s=%b x=%b|y0=%b y1=%b",$time,x,s,y0,y1);
  end
endmodule
