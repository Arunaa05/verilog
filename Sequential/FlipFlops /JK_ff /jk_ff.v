module jk_ff (
    input clk,
    input rst,
    input j,k,
    output reg q
);
always @(posedge clk) begin
    if (rst)
        q <= 0;
    else
        q <= (j & ~q) | (~k & q);
end
endmodule
