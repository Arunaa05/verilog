module d_ff(
  input d,clk,rst,
  output reg q
);
  always@(posedge clk)begin
    if(rst)
      q<=0;
    else
      q<=d;
  end
endmodule
module sr_ff(
  input s,r,clk,rst,
  output q
  );
  wire d;
  assign d= s|((~r)&q);
  d_ff dut(.*);
endmodule

//testbench
module sr_ff_tb;
  reg s,r,clk,rst;
  wire q;
  sr_ff DUT(.*);
  initial begin
     clk=0;s=0;r=0;rst=0;
  end
  always #2 clk=~clk;
  initial begin
   
    rst=0;
    #3 s=1;r=1;
    #3 s=0;r=0;
    #3 s=0;r=1;
    #3 s=1;r=0;
    #3 rst=1;
    #3 s=1;r=1;
    #3 s=1;r=0;
    #3 s=0;r=1;
    #3 s=0;r=0;
     
    #2; $finish;
  end
  initial begin
    $monitor("time=%0t |clk=%b rst=%b s=%b r=%b | q=%b",$time,clk,rst,s,r,q);
  end
endmodule
