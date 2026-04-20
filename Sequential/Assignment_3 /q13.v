module tb;
reg q, d, clk;

always @(posedge clk) begin
    #20 q = d;
end

initial begin
    clk = 0;
    d = 1;
    #25 clk = 1;
end

initial
    $display("q = %b", q);
endmodule

/*output
q=1
*/
