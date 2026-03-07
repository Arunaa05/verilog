module test;
  reg clk;
  reg we;
  reg [3:0]addr;
  reg[7:0]data_in;
  wire [7:0]data_out;
  sync_ram dut(.*);
  always #5 clk=~clk;
  initial begin
   clk=0;
    data_in=0;
    we=0;
    addr=0;
    #12;
    we = 1;
  addr = 4'd0; data_in = 8'hAA; #10;
  addr = 4'd1; data_in = 8'hBB; #10;
  addr = 4'd2; data_in = 8'hCC; #10;
  addr = 4'd3; data_in = 8'hDD; #10;

 
  we = 0;
  addr = 4'd0; #10;
  addr = 4'd1; #10;
  addr = 4'd2; #10;
  addr = 4'd3; #10;

  #20 $finish;
  end
  initial begin
    $monitor("time=%0t we=%b addr=%b data_in=%b data_out=%b",$time,we,addr,data_in,data_out);
    $dumpfile("sync_ram.vcd");
  $dumpvars(1,test);
  end
endmodule
    
