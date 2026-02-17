module d_ff(
  input d,clk,rst,
  output reg q
);
  always@(posedge clk)begin
    if(rst)
      q<=1'b0;
    else 
      q<=d;
  end
endmodule
module jk_ff(
  input j,k,clk,rst,
  output q
  );
  wire d;
  assign d= j&(~q)|(~k)&q;
  d_ff dut(.*);
endmodule
//testbench
module jk_ff_tb;
  reg j,k,clk,rst;
  wire q;
  jk_ff DUT(.*);
  initial begin
     clk=0;rst=0;j=0;k=0;
  end
  always #2 clk=~clk;
  initial begin
   
    rst=0;j=1;k=1;
    #3 rst=1;j=0;k=0;
    #2 j=0;k=1;
    #4 rst=0;j=1;k=0;
    #2 j=1;k=1;
    #3 j=1;k=0;
     
    #2; $finish;
  end
  initial begin
    $monitor("time=%0t | clk=%b rst=%b j=%b k=%b | q=%b",$time,clk,rst,j,k,q);
  end
endmodule
