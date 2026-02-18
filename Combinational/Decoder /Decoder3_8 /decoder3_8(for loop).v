module decoder_3to8(
    input  [2:0] in,
    output reg [7:0] out
);
integer i;

always @(*) begin
    for (i = 0; i < 8; i = i + 1) begin
        if (i == in)
            out[i] = 1'b1;
        else
            out[i] = 1'b0;
    end
end

endmodule
