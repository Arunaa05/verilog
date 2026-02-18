module seq_1011_tb();
  reg clk,rst,x;
  wire z;
  seq_1011 dut (.*);
    always #5 clk=~clk;
    initial begin
       clk = 0;
       rst = 1;
       x   = 0;
    #10 rst = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;   
    #10 x = 1; 
    #10 x = 0;
    #10 x = 1;   
    #10 x = 1;
    #20 $finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b x=%b | z=%b state=%b",$time,clk,rst,x,z,dut.state);
    $dumpfile("seq_1011.vcd");
    $dumpvars(1,seq_1011_tb);
    
  end
endmodule
