module seq_101(input clk,rst,x,output reg z);
  reg [1:0]state,next_state;
  parameter s0=2'd0,
            s1=2'd1,
            s2=2'd2;
  always@(posedge clk)begin
    if(rst)
      state<=s0;
    else
      state<=next_state;
  end
  always@(*)begin
    next_state=state;
    case(state)
      s0:begin
        if(x==1)
          next_state=s1;
        else
          next_state=s0;
      end
      s1:begin
        if(x==0)
          next_state=s2;
        else
          next_state=s1;
      end
      s2:begin
        if(x==1) begin
          next_state=s0;
        end
        else
          next_state=s0;
      end
    endcase
  end
  always@(posedge clk)begin
      if(state==s2)
        z<=1;
      else
        z<=0;
    end
endmodule
