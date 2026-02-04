module decoder3_8(input [2:0]x,output [7:0]y);
  assign y=8'00000001 <<{[2:0]x};
endmodule
