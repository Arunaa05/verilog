module t_ff( 
  input t,clk,
  output reg q=0,
  output reg qbar
);
  assign qbar = ~q;
  always@(posedge clk)begin
    case(t)
      1'b0:q<=q;
      1'b1:q<=~q;
      default:q<=q;
    endcase
  end
endmodule
