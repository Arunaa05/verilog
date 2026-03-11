module rom(
  input clk,
  input read,
  input [2:0]addr,
  output reg [7:0]data_out
);
  reg [7:0] mem[0:7];
  always@(posedge clk) begin
    if(read)begin
      case(addr)
        3'd0:data_out<=8'd2;
        3'd1:data_out<=8'd3;
        3'd2:data_out<=8'd5;
        3'd3:data_out<=8'd7;
        3'd4:data_out<=8'd0;
        3'd5:data_out<=8'd6;
        3'd6:data_out<=8'd7;
        3'd7:data_out<=8'd0;
        default:data_out<=8'd0;
      endcase
    end
  end
endmodule
