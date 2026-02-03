module mux_test;
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  int i,j;
  mux4_1 dut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
  );
  initial begin
    i0=0;
    i1=0;
    i2=0;
    i3=0;
    s0=0;
    s1=0;
    for(j=0;j<4;j=j+1)begin
    {s0,s1}=j;
      for(i=0;i<16;i=i+1)
      #10{i0,i1,i2,i3}=i;
    end
  end
  initial begin
    $monitor("time=%0t|i0=%b i1=%b i2=%b i3=%b| s0=%b s1=%b| y=%b",$time,i0,i1,i2,i3,s0,s1,y);
  end
endmodule
