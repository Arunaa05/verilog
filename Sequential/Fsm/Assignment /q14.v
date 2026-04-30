module duty_cycle(
  input clk,
  input rst,
  output reg y
);
  reg [2:0]count;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        count<= 0;
      else if(count == 9)
        count<=0;
      else
        count<=count+1;
    end
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        y<=0;
      else if(count<6)
        y<=1;
      else
        y<=0;
    end
endmodule
