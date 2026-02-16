module mul_4bit_tb;

  reg [3:0]a, b;
  wire [7:0]c;

mul_4bit dut(.*);

initial begin
  
  a=4'd6;b=4'd5;
  #10 a=4'd11;b=4'd7;
  #10 a=4'd5;b=4'd9;
  #50 $finish;
end
  initial begin
    $monitor("time=%0t a=%b b=%b c=%b ",$time,a,b,c);
  end

endmodule
