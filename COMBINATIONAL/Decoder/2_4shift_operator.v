module decoder(input x1, x0,output [3:0] y);

  assign y = 4'b0001 << {x1, x0};

endmodule
// testbench

module decoder_test;
  reg x1,x0;
  wire [3:0]y;
  decoder dut(.*);
 
  initial begin 
    x1=0;x0=0;
    #10x1=0;x0=1;
    #10x1=1;x0=0;
    #10x1=1;x0=1;
    $finish;
  end
  initial begin
    $monitor("time=%0t|x1=%b x0=%b|y=%b",$time,x1,x0,y);
  end
endmodule
//enable//
