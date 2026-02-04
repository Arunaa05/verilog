module decoder_test;
  reg x2,x1,x0;
  wire [7:0]y;
  decoder3_8 dut(.*);
  initial begin 
    x2=0;x1=0;x0=0;
    #10x2=0;x1=0;x0=1;
    #10x2=0;x1=1;x0=0;
    #10x2=0;x1=1;x0=1;
    #10x2=1;x1=0;x0=0;
    #10x2=1;x1=0;x0=1;
    #10x2=1;x1=1;x0=0;
    #10x2=1;x1=1;x0=1;
    #50$finish;
  end
  initial begin
    $monitor("time=%0t|x2=%b x1=%b x0=%b|y=%b",$time,x2,x1,x0,y);
  end
endmodule
