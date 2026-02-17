module piso_dff_tb();
  reg[3:0]din;
  reg clk,rst,load;
  wire dout; 
  piso dut (.*);
   initial begin
     clk=1;
    forever #5 clk=~clk;
  end
    initial begin
        rst=1;load=1;din=4'b0001;
        #40 rst=0;
        #40 load=0;
        #40 load=1;din=4'b1100;
        #40 load=0;
        #40 din=4'b1110;
        #40 load=1;
        #40 load=0;din=4'b0111;
        #40 $finish;
    end
  initial begin
    $monitor("time=%0t, clk=%b  rst=%b load=%b   din=%b  dout=%b",$time,clk,rst,load,din,dout);
  end
endmodule
