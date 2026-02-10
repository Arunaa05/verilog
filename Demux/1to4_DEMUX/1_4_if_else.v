module demux1_4(input x,s0,s1 ,output reg y0,y1,y2,y3);
  always@(*)begin
    if(s0==0&&s1==0)begin
      y0=x;y1=0;y2=0;y3=0;
    end
    else if(s0==0&&s1==1)begin
      y0=0;y1=x;y2=0;y3=0;
    end
    else if(s0==1&&s1==0)begin
      y0=0;y1=0;y2=x;y3=0;
    end
    else begin
      y0=0;y1=0;y2=0;y3=x;
    end
  end
endmodule
