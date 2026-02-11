module d_ff_tb;
  reg d,clk;
  wire q,qbar;
  d_ff DUT(.d(d),.clk(clk),.q(q),.qbar(qbar));
  initial 
     clk=0;
  always #5 clk=~clk;
  initial begin
    d=0;
    #10 d=1; 
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b  d=%b| q=%b qbar=%b",$time,clk,d,q,qbar);
    $dumpfile("d_ff.vcd");
    $dumpvars;
  end
endmodule
