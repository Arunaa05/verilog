module decoder_test;
  reg x1,x0;
  wire y0,y1,y2,y3;
  decoder dut(.*);
  
  initial begin 
    x1=0;x0=0;
    #10x1=0;x0=1;
    #10x1=1;x0=0;
    #10x1=1;x0=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|x1=%b x0=%b|y0=%b y1=%b y2=%b y3=%b",$time,x1,x0,y0,y1,y2,y3);
  end
endmodule
