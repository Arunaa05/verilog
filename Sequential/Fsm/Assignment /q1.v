module fsm(
  input clk,
  input rst,
  input x,
  output reg y
);
  parameter s0=3'b000,
            s1=3'b001,
            s2=3'b010,
            s3=3'b011,
            s4=3'b100;
  reg [2:0]state,next_state;
  
  always@(posedge clk)
    begin
      if(rst)
        state<=s0;
      else
        state<=next_state;
    end
  always@(*)
    begin
      case(state)
        s0:next_state = x ? s1 : s3;
        s1:next_state = x ? s2 : s3;
        s2:next_state = x ? s2 : s3;
        s3:next_state = x ? s1 : s4;
        s4:next_state = x ? s1 : s4;
        default: next_state=s0;
      endcase
    end
  always@(*)
    begin
      if((state == s2 && x==1)||(state == s4 && x==0))
        y = 1;
      else 
        y=0;
    end
endmodule

//testbench

module tb;
  reg clk,rst;
  reg x;
  wire y;
  reg [2:0]state,next_state;
  fsm dut(.*);
  always #5 clk= ~clk;
  initial begin
    $monitor("time=%0t x=%b y=%b",$time,x,y);
    clk=0;
    rst=1;
    x=0;
    #10 rst=0;
    #5 x = 1;
    #5 x = 1;
    #5 x = 1;   // detect 111

    #5 x = 1;   // overlapping 111

    #10 x = 0;
    #10 x = 0;
    #10 x = 0;   // detect 000

    #10 x = 0;   // overlapping 000
    #20 $finish;
  end
endmodule

/*output
time=0 x=0 y=0
time=15 x=1 y=0
time=25 x=1 y=1
time=40 x=0 y=0
time=55 x=0 y=1
testbench.sv:27: $finish called at 90 (1s)*/
