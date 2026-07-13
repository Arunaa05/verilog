// Code your testbench here
// or browse Examples
module tb;
  reg [7:0]bcd;
  wire [6:0]binary;
      
    bcd_to_binary dut(
    .bcd(bcd),
    .binary(binary));

initial begin
    $monitor("BCD = %b (%0d%0d), Binary = %0d (%b)",
              bcd, bcd[7:4], bcd[3:0], binary, binary);

    bcd = 8'b0010_0101; #10; 
    bcd = 8'b0001_1000; #10; 
    bcd = 8'b0100_1001; #10; 
    bcd = 8'b1001_1001; #10; 

    $finish;
end

endmodule
