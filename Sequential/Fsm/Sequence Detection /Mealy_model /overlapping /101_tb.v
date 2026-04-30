module seq_101_tb();
  reg clk,rst,x;
  wire z;
  seq_101 dut (.*);
    always #5 clk=~clk;
    initial begin
       clk = 0;
       rst = 1;
       x   = 0;
    #10 rst = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;   
    #10 x = 0;
    #10 x = 1;   
    #20 $finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b x=%b | z=%b state=%b",$time,clk,rst,x,z,dut.state);
    $dumpfile("seq_101.vcd");
    $dumpvars(1,seq_101_tb);
    
  end
endmodule
/*output
time=0, clk=0  rst=1 x=0 | z=x state=xx
time=5, clk=1  rst=1 x=0 | z=0 state=00
time=10, clk=0  rst=0 x=0 | z=0 state=00
time=15, clk=1  rst=0 x=0 | z=0 state=00
time=20, clk=0  rst=0 x=1 | z=0 state=00
time=25, clk=1  rst=0 x=1 | z=0 state=01
time=30, clk=0  rst=0 x=0 | z=0 state=01
time=35, clk=1  rst=0 x=0 | z=0 state=10
time=40, clk=0  rst=0 x=1 | z=0 state=10
time=45, clk=1  rst=0 x=1 | z=1 state=01
time=50, clk=0  rst=0 x=0 | z=1 state=01
time=55, clk=1  rst=0 x=0 | z=0 state=10
time=60, clk=0  rst=0 x=1 | z=0 state=10
time=65, clk=1  rst=0 x=1 | z=1 state=01
time=70, clk=0  rst=0 x=1 | z=1 state=01
time=75, clk=1  rst=0 x=1 | z=0 state=01
testbench.sv:18: $finish called at 80 (1s)
time=80, clk=0  rst=0 x=1 | z=0 state=01*/
