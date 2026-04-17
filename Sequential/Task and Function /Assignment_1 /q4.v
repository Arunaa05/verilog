module num(
  input x,
  output reg [5:0]z[19:0]
);
  integer i;
   always@(*)
    begin
       for(i=0;i<20;i++)
         if(x)
           z[i]=odd(i);
         else
           z[i]=even(i);
    end
 
  function [5:0]even;
    input [5:0]a;
    begin
      even=2*a;
    end
  endfunction
  function [5:0]odd;
    input [5:0]b;
    begin
      odd=(2*b)+1;
    end
  endfunction
 endmodule

//testbench
module tb;
  reg x;
  wire [5:0]z[19:0];
  integer i;
  num dut(.*);
  initial begin
    $dumpfile("num.vcd");
    $dumpvars(0,tb);
  end
  initial begin
    x=1;
    for(i=0;i<20;i=i+1) begin
      #10;
      $display("time=%0t x=%0d z=%0d",$time,x,z[i]);
    end
    x=0;
    for(i=0;i<20;i=i+1) begin
      #10;
      $display("time=%0t x=%0d z=%0d",$time,x,z[i]);
    end
    #10;$finish;
  end
endmodule 

/*output
time=10 x=1 z=1
time=20 x=1 z=3
time=30 x=1 z=5
time=40 x=1 z=7
time=50 x=1 z=9
time=60 x=1 z=11
time=70 x=1 z=13
time=80 x=1 z=15
time=90 x=1 z=17
time=100 x=1 z=19
time=110 x=1 z=21
time=120 x=1 z=23
time=130 x=1 z=25
time=140 x=1 z=27
time=150 x=1 z=29
time=160 x=1 z=31
time=170 x=1 z=33
time=180 x=1 z=35
time=190 x=1 z=37
time=200 x=1 z=39
time=210 x=0 z=0
time=220 x=0 z=2
time=230 x=0 z=4
time=240 x=0 z=6
time=250 x=0 z=8
time=260 x=0 z=10
time=270 x=0 z=12
time=280 x=0 z=14
time=290 x=0 z=16
time=300 x=0 z=18
time=310 x=0 z=20
time=320 x=0 z=22
time=330 x=0 z=24
time=340 x=0 z=26
time=350 x=0 z=28
time=360 x=0 z=30
time=370 x=0 z=32
time=380 x=0 z=34
time=390 x=0 z=36
time=400 x=0 z=38
*/
