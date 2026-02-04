module decoder3_8(input x2,x1,x0,output reg[7:0]y);
  
  integer i;
  
  always@(*)begin
    y=8'b00000000;
    for(i=0;i<8;i=i+1)begin
      if({x2,x1,x0}==i)
      y[i]=1'b1;
    end
  end
    
endmodule
