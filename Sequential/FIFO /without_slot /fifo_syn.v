module synchronous_fifo #(parameter W=4 ,D=4)(
  input clk,rst,
  input w_en,r_en,
  input [W-1:0]data_in,
  output reg [W-1:0]data_out
);
  wire full,empty;
  localparam integer a=$clog2(D);
  reg [W-1:0]fifo[0:D-1];
  always@(posedge clk) begin
    if(rst)begin
        w_ptr <= 0;
    end
    else 
      if(w_en && !full) begin
        fifo[w_ptr] = data_in;
        w_ptr <= w_ptr + 1;
      end
  end
   always@(posedge clk) begin
     if(rst)begin
        r_ptr <= 0;
        data_out<=0;
     end
     else
      if(r_en && !empty ) begin
        data_out <= fifo[r_ptr];
        r_ptr <= r_ptr + 1;
      end
   end
  reg [a:0]w_ptr,r_ptr;
  assign full = (( w_ptr[a] != r_ptr[a])&& (w_ptr[a-1:0] == r_ptr[a-1:0]));
  assign empty = (w_ptr==r_ptr);
      
      endmodule
