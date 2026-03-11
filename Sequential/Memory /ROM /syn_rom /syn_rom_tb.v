module rom_tb;
  reg clk,read;
  reg [2:0]addr;
  wire [7:0]data_out;
  rom dut(.*);
  always #5 clk=~clk;
  initial begin
    clk=0;
    read=1;
    addr=3'd2;
    #10
    addr=3'd3;
    #10
    addr=3'd5;
    #10
    addr=3'd7;
    #10
    addr=3'd0;
    addr=3'd6;
    addr=3'd7;
    addr=3'd0;
    
    #50 $finish;
  end
  initial begin
    $monitor($time,"read=%b addr=%b data_out=%b",read,addr,data_out);
    $dumpfile("rom.vcd");
    $dumpvars(1,rom_tb);
  end
endmodule
