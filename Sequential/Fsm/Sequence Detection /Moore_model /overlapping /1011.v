module seq_1011(input clk,rst,x,output reg z);
  reg [2:0]state,next_state;
  parameter s0=3'b000,
            s1=3'b001,
            s2=3'b010,
            s3=3'b011,
            s4=3'b100;
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
      s3: next_state = (x)?s4:s2;
      s4:next_state= (x)?s1:s2;
      default: next_state=s0;
    endcase
  end
  always@(posedge clk)begin
    if(state==s4)
        z<=1;
      else
        z<=0;
    end
endmodule
