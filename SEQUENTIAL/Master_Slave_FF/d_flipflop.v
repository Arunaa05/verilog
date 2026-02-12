module d_master_slave(
  input d,clk,
  output reg qs,
  output qsbar,
  output reg qm
);
  always@(clk or d)begin
    if(clk)
      qm<=d;
  end
  always@(clk or qm)begin
    if(!clk)
      qs<=qm;
  end
  assign qsbar = ~qs; 
endmodule
