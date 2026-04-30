module fsm_div_by_5(
  input clk,
  input rst,
  input x,
  output reg y
);
  localparam s0=0,s1=1,s2=2,s3=3,s4=4;
  reg [2:0]state,next_state;
  
  always@(*)
    begin
      case(state)
        s0:next_state = x ? s1 : s0;
        s1:next_state = x ? s3 : s2;
        s2:next_state = x ? s0 : s4;
        s3:next_state = x ? s2 : s1;
        s4:next_state = x ? s4 : s3;
        default: next_state = s0;
      endcase
    end
  always@(posedge clk)
    begin
      if(rst)
        state<= s0;
      else
        state<=next_state;
    end
  always@(*)
    begin
      if(state==s0)
        y=1;
      else
        y=0;
    end
endmodule

/*
(2*r + x)%5
s0:remainder=0 
0 --> (2*0 + 0)%5 = 0
1 --> (2*0 + 1)%5 = 1
s1:remainder=1
0 --> (2*1 + 0)%5 = 2
1 --> (2*1 + 1)%5 = 3
s2:remainder=2 
0 --> (2*2 + 0)%5 = 4
1 --> (2*2 + 1)%5 = 0
s3:remainder=3 
0 --> (2*3 + 0)%5 = 1
1 --> (2*3 + 1)%5 = 2
s4:remainder=4 
0 --> (2*4 + 0)%5 = 3
1 --> (2*4 + 1)%5 = 4*/


module tb;
reg clk;
reg rst;
reg x;
wire y;
fsm_div_by_5 dut(.clk(clk),.rst(rst),.x(x),.y(y));
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    x = 0;

    #3 rst = 0;

    #4 x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;

    #20 $finish;
end

initial begin
$monitor("time=%0t clk=%b x=%b y=%b",$time,clk,x,y);
  $dumpfile("fsm_div_by_5.vcd");
  $dumpvars(0,tb);
end
endmodule
