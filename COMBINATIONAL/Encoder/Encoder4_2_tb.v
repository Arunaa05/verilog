module test;
  reg d3,d2,d1,d0;
  wire y0,y1;
  encoder DUT(.*);
  initial begin
    d3=0; d2=0; d1=0; d0=0;
    #2 d3=0; d2=0; d1=0; d0=1;
    #2 d3=0; d2=0; d1=1; d0=0;
    #2 d3=0; d2=1; d1=0; d0=0;
    #2 d3=1; d2=0; d1=0; d0=0;
    #50 $finish;
  end
  always@(d3 or d2 or d1 or d0)
    $display("time=%0t |d3=%b d2=%b d1=%b d0=%b | y0=%b y1=%b",$time,d3,d2,d1,d0,y0,y1);
endmodule
