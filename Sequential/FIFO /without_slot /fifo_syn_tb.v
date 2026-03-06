module fifo_tb;
  reg clk,rst,w_en,r_en;
  reg [W-1:0]data_in;
  wire [W-1:0]data_out;
  parameter W=4;
  parameter D=4;
  synchronous_fifo #(.W(W),.D(D))dut(.*);
  always #10 clk=~clk;
  initial begin
    clk=0;
    rst=1;
    w_en=0;
    r_en=0;
    data_in=0;
    #12 rst = 0;

    w_en = 1;
    r_en = 0;
    data_in = 4'hA;
    @(negedge clk);
     data_in = 4'hB;
    @(negedge clk);
    data_in = 4'hC;
    @(negedge clk); 
    data_in = 4'hD;
    @(negedge clk); 
    data_in = 4'hD;
    @(negedge clk);begin 
    w_en=0;
      #20;
    r_en=1;
    end
    repeat(4) @(negedge clk);
    
    #50 $finish;
  end
  initial begin
    $monitor($time,
      " clk=%b rst=%b w_en=%b r_en=%b data_in=%b data_out=%b ",
      clk,rst,w_en,r_en,data_in,data_out);
    $dumpfile("a.vcd");
    $dumpvars(0,fifo_tb);
  end
endmodule
  
  
