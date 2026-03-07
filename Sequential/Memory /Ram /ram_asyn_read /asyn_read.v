module async_ram(
  input [3:0]addr,
  input [7:0]data_in,
  input we,
  output [7:0]data_out
);
  reg [7:0] mem[0:15];
  always@(*)
    begin
      if(we)
        mem[addr]<=data_in;
    end
  assign data_out<=mem[addr];
endmodule
