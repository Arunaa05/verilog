module mux2_1_tb;
  reg d;
  reg en;
  wire y;
  mux2_1 dut(.*);
  initial begin
    
     en=1;d= 0; 
    #5 en=0;d = 1;
    #5 en=1;d = 0;
    #20 $finish;
  end
  initial begin
    $monitor("time=%0t d=%b en=%b y=%b",$time,d,en,y);
  end
endmodule
