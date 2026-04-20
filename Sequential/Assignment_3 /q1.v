module dff;
input c, din;
output reg y3;
reg y1,y2;
always@ ( posedge c) begin
y1 = din;
y2 = y1;
y3 = y2;
end
endmodule

/*output
1 dff
*/
