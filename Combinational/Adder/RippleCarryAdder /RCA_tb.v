module RCA_test;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  RCA dut(.*);
  
  initial begin
        a=4'b0000; b=4'b0000;cin = 0; 
        #10a=4'b0101;b=4'b0011;cin= 0;
        #10a=4'b1111;b=4'b0001;cin = 0;
        #10a=4'b1010;b=4'b0101;cin = 1;
        #10a=4'b1111;b=4'b1111;cin = 1; 
    
    $finish;
  end
  initial begin
    $monitor("time=%0t|a=%b b=%b cin=%b|sum=%b cout=%b",$time,a,b,cin,sum,cout);
  end
endmodule
