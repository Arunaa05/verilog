module mux2_1_tb;
  reg i0,i1,s;
  wire y;
  mux2_1 dut(
    .i0(i0),
    .i1(i1),
    .s(s),
    .y(y)
  );
  initial begin 
    i0=0;i1=0;s=0;
    #10i0=0;i1=0;s=1;
    #10i0=0;i1=1;s=0;
    #10i0=0;i1=1;s=1;
    #10i0=1;i1=0;s=0;
    #10i0=1;i1=0;s=1;
    #10i0=1;i1=1;s=0;
    #10i0=1;i1=1;s=1;
    $finish;
  end
  initial begin
    $monitor(" time=%0t|s=%b i0=%b i1=%b|y=%b ",$time,s,i0,i1,y);
  end
endmodule
