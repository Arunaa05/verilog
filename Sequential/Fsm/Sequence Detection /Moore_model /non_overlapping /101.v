module seq_101(input clk,rst,x,output reg z);
  reg [1:0]state,next_state;
  parameter s0=2'd0,
            s1=2'd1,
            s2=2'd2,
            s3=2'd3;
  always@(posedge clk)begin
    if(rst)
      state<=s0;
    else
      state<=next_state;
  end
  always@(*)begin
    case(state)
      s0: next_state = (x)?s1:s0;
      s1: next_state = (x)?s1:s2;
      s2: next_state = (x)?s3:s0;
      s3: next_state = s0;
      default: next_state=s0;
    endcase
  end
  always@(posedge clk)begin
    if(state==s3)
        z<=1;
      else
        z<=0;
    end
endmodule
