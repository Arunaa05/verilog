module dual_port_ram(
  input clk_a,
  input clk_b,
  input wen_a,
  input wen_b,
  input [3:0]addr_a,
  input [3:0]addr_b,
  input [7:0]data_a,
  input [7:0]data_b,
  output reg [7:0]dout_a,
  output reg [7:0]dout_b
);
  reg[7:0] mem[0:15];
  always@(posedge clk_a)
    begin
      if(wen_a)
        mem[addr_a]<=data_a;
      else
        dout_a<=mem[addr_a];
    end
  always@(posedge clk_b)
    begin
      if(wen_b)
        mem[addr_b]<=data_b;
      else
        dout_b<=mem[addr_b];
    end
endmodule
