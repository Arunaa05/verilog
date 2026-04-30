module binary_to_bcd(
  input [7:0]b,
  output reg [3:0]H,T,O
);
  reg [19:0]shift_reg;
  integer i;
  
  always@(*)
    begin
      shift_reg =0;
      shift_reg[7:0]=b;
      for(i=0;i<8;i++)
        begin
          if(shift_reg[11:8]>=5)
            shift_reg[11:8]=shift_reg[11:8] + 3;
          if(shift_reg[15:12]>=5)
            shift_reg[15:12]=shift_reg[15:12] + 3;
          if(shift_reg[19:16]>=5)
            shift_reg[15:12]=shift_reg[15:12] + 3;
      shift_reg = shift_reg <<1;
        end
    end
  assign O = shift_reg[11:8];
  assign T = shift_reg[15:12];
  assign H = shift_reg[19:16];
endmodule



module tb;
reg  [7:0]b;
wire [3:0]H,T,O;
binary_to_bcd dut(.b(b),.H(H),.T(T),.O(O));

initial begin

  $dumpfile("binary_to_bcd.vcd");
  $dumpvars(0,tb);

    b = 0;   
    b = 5;   #10;
    b = 9;   #10;
    b= 10;  #10;
    b = 128; #10;
    b = 255; #10;

    $finish;
end

initial begin
    $monitor("time=%0t b=%d -> BCD = %d %d %d",$time, b,H,T,O);
end

endmodule

time=0 b=  5 -> BCD =  0  0  5
time=10 b=  9 -> BCD =  0  0  9
time=20 b= 10 -> BCD =  0  1  0
time=30 b=128 -> BCD =  1  2  8
time=40 b=255 -> BCD =  2  5  5
testbench.sv:27: $finish called at 50 (1s)
