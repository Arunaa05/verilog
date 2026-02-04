module decoder3_8(input x2,x1,x0,output [7:0]y);
  assign y=8'b00000001 << {x2,x1,x0};
endmodule
