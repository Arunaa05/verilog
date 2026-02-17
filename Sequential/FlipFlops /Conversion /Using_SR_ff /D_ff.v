module sr_ff(input s,r,clk,rst,output reg q);
  always@(posedge clk)begin
    if(rst)
      q<=1'b0;
    else begin
      case({s,r})
        0:q<=q;
        1:q<=0;
        2:q<=1;
        default:q<=1'bx;
      endcase
    end
  end
endmodule
module d_ff(input d,clk,rst,output q);
  wire s,r;
  assign s= d;
  assign r=~d;
  sr_ff dut(.*);
endmodule
//testbench
module dff_tb;
reg d;
reg clk;
reg rst;
wire q;  
  d_ff DUT(.*);
  initial begin
    clk=0;rst=0;d=0;
  end
  always #2 clk=~clk;
  initial begin
    d=1;
    #3 rst=1;
    clk=1;
    d=1;
    #4 d=0;
    #1 d=1;
    #5 $finish;
  end
  initial begin
    $monitor("time=%0t | clk=%b,rst=%b,d=%b |q=%b",$time,clk,rst,d,q);
  end
endmodule
