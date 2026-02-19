module mux8_1_tb;
  reg [7:0]x;
  reg [2:0]s;
  wire q;
  mux8_1 dut(.*);
  initial begin
    
      x = 8'b10101010; 
        s = 3'b000; #10;
        s = 3'b001; #10;
        s = 3'b010; #10;
        s = 3'b011; #10;
        s = 3'b100; #10;
        s = 3'b101; #10;
        s = 3'b110; #10;
        s = 3'b111; #10;
    #60 $finish;
  end
  initial begin
    $monitor("time=%0t s=%b x=%b q=%b",$time,s,x,q);
  end
endmodule
    
    
