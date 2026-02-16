module sub_4bit_tb;

  reg [3:0]a, b;
  wire [3:0]diff;

sub_4bit dut(.*);

initial begin
  
  a=4'd11;b=4'd4;
  #10 a=4'd6;b=4'd14;
  #10 a=4'd9;b=4'd5;
  #50 $finish;
end
  initial begin
    $monitor("time=%0t a=%b b=%b diff=%b ",$time,a,b,diff);
  end

endmodule
