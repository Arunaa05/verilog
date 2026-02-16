module adder_4bit_tb;

  reg [3:0]a, b;
  reg cin;
  wire [3:0]sum;
  wire cout;

adder_4bit dut(.*);

initial begin
  
  a=4'b0000;b=4'b0001;cin=0;
  #10 a=4'b0000;b=4'b0001;cin=1;
  #10 a=4'b0110;b=4'b0001;cin=0;
  #10 a=4'b0110;b=4'b0001;cin=1;
  #10 a=4'b1000;b=4'b0010;cin=0;
  #10 a=4'b1000;b=4'b0010;cin=1;
  #10 a=4'b1111;b=4'b0101;cin=0;
  #10 a=4'b1111;b=4'b0101;cin=1;
  #50 $finish;
end
  initial begin
    $monitor("time=%0t a=%b b=%b cin=%b sum=%b cout=%b",$time,a,b,cin,sum,cout);
  end

endmodule
