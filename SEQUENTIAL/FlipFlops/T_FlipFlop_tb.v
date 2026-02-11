module t_ff_tb;
  reg t,clk;
  wire q,qbar;
  t_ff dut(.t(t),.clk(clk),.q(q),.qbar(qbar));
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    t=0;
    #10 t=1; 
    #20; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b  t=%b| q=%b qbar=%b",$time,clk,t,q,qbar);
    $dumpfile("t_ff.vcd");
    $dumpvars(0,t_ff_tb);
  end
endmodule
