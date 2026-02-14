module d_ff_tb;
  reg d,clk,rstn;
  wire q;
  d_ff DUT(.*);
  initial 
     clk=0;
  always #5 clk=~clk;
  initial begin
    rstn=0;d=0;
    #10 rstn=1;d=1; 
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b  d=%b rstn=%b | q=%b",$time,clk,d,rstn,q);
    $dumpfile("d_ff.vcd");
    $dumpvars(1,d_ff_tb);
  end
endmodule
