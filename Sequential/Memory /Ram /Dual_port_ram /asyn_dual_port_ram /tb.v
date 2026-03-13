module test;
  reg clk_a,clk_b;
  reg wen_a,wen_b;
  reg [3:0]addr_a,addr_b;
  reg [7:0]data_a,data_b;
  wire [7:0]dout_a,dout_b;
  dual_port_ram dut(.*);

  always #5clk_a=~clk_a;
  always #10clk_b=~clk_b;
  
  initial begin
    clk_a=0;
    clk_b=0;
    wen_a=0;
    wen_b=0;
    
    //write signal
    #20
    wen_a=1;
    addr_a=4'd10;
    data_a=8'b00000001;
    
    #20
    wen_a=1;
    addr_a=4'd5;
    data_a=8'b00000100;
    
    #20
    wen_b=1;
    addr_b=4'd14;
    data_b=8'b00001000;
    
    #20
    wen_b=1;
    addr_b=4'd3;
    data_b=8'b00000011;
    
    //read signal
    #20
    wen_a=0;
    addr_a=4'd10;
    
    #20
    wen_a=0;
    addr_a=4'd5;
    
    #20
    wen_b=0;
    addr_b=4'd14;
    
    #20
    wen_b=0;
    addr_b=4'd3;
   
    
   #50 $finish;
  end
  initial begin
    $monitor("clk_a=%b clk_b=%b time=%0t wen_a=%b wen_b=%b addr_a=%d addr_b=%d data_a=%b data_b=%b dout_a=%b dout_b=%b",clk_a,clk_b,$time,wen_a,wen_b,addr_a,addr_b,data_a,data_b,dout_a,dout_b);
    $dumpfile("dual_port_ram.vcd");
    $dumpvars(1,test);
  end
endmodule
  
