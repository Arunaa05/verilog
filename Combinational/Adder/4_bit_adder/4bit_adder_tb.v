module adder_4bit_tb;

  reg [3:0]a, b;
  wire [3:0]sum;

adder_4bit dut(.*);

initial begin
  
  a=4'd6;b=4'd5;
  #10 a=4'd10;b=4'd6;
  #10 a=4'd5;b=4'd9;
  #50 $finish;
end
  initial begin
    $monitor("time=%0t a=%b b=%b sum=%b ",$time,a,b,sum);
  end

endmodule
