module tb;

reg clk;
reg rst;
wire y;

duty_cycle dut (
    .clk(clk),
    .rst(rst),
  .y(y)
);


// clock generation (10 time unit period)

always begin
    #4 clk = 0; // Low for 4ns (40%)
    #6 clk = 1; // High for 6ns (60%)
end

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #200 $finish;
end


initial begin
  $dumpfile("duty_cylce.vcd");
    $dumpvars(0,tb);
end


initial begin
  $monitor("time=%0t clk=%b y=%b",$time,clk,y);
end

endmodule
