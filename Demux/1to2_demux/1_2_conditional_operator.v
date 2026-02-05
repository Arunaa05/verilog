module demux1_2(input x,s,output reg y0,y1);
  assign y0=s?1'b0:x;
  assign y1=s?x:1'b0;
  //assign y = s ? {x, 1'b0} : {1'b0, x};

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
