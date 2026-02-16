module nbit_tb;
parameter N=8;
reg [N-1:0]d;
reg clk;
reg rst;
wire [N-1:0]q;
nbit_register #(N)dut(
	.d(d),
	.clk(clk),
	.rst(rst),
	.q(q)
);
initial
	clk=0;
always #5 clk=~clk;
initial begin
	rst=0;d=0;
	#10 rst=1;d=8'b00000001;
	#20 rst=1;d=0;
	#5 rst=0;d=8'b00000001;
	#30 $finish;
end
initial begin
	$monitor("time=%0t |clk=%b rst=%b d=%b|q=%b",$time,clk,rst,d,q);
	$dumpfile("nbit_register.vcd");
	$dumpvars(1,nbit_tb);
end
endmodule
