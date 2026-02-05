module demux1_2(input x,s,output reg y0,y1);
  always@(*)begin
  if(s==0)begin
    y0 = d;
    y1 = 0;
  end
    else begin
      y0=0;
      y1=d;
    end
  end
endmodule
