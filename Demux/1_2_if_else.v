module demux1_2(input x,s,output reg y0,y1);
  always@(*)begin
  if(s==0)begin
    y0 = x;
    y1 = 0;
  end
    else begin
      y0=0;
      y1=x;
    end
  end
endmodule

//testbench

module demux_test;
  reg x,s;
  wire y0,y1;
  demux1_2 dut(.*);
  initial begin
    s=0;x=0;
    #20 s=0;x=1;
    #20 s=1;x=0;
    #20 s=1;x=1;
    $finish;
  end
  initial begin
    $monitor("time =%0t | s=%b  x=%b | y0=%b y1=%b",$time,s,x,y0,y1);
  end
endmodule
