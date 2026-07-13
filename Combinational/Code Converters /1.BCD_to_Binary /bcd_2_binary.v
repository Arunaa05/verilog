// Code your design here
module bcd_to_binary(
  input [7:0]bcd,
  output reg [6:0]binary
);
  
  assign binary=(bcd[7:4]*10)+(bcd[3:0]*1);
  
endmodule
