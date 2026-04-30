module moore_fsm(
  input clk,
  input rst,
  input j,k,
  output out
);
  localparam OFF=0,ON=1;
  reg [1:0]state,next_state;
  
  always@(*)
    begin
      case(state)
        OFF:next_state = j ? ON : OFF;
        ON:next_state = k ? OFF : ON;
        default: next_state = OFF;
      endcase
    end
  always@(posedge clk)
    begin
      if(rst)
        state<= OFF;
      else
        state<=next_state;
    end
  assign out = (state == ON);
endmodule
