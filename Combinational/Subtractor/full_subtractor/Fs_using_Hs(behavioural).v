module half_sub(
  input a, b,
  output reg diff, 
  output reg borrow
);
  always@(*)begin
       diff = a ^ b;
       borrow = (~a) & b;
  end
endmodule
module full_sub(
  input a,b,cin,
  output reg diff,
  output reg borrow
);
  wire diff1,borrow1,borrow2;
  half_sub HS1 (
  .a(a),
  .b(b),
  .diff(diff1),
  .borrow(borrow1)
);
  half_sub HS2 (
  .a(diff1),
  .b(cin),
  .diff(diff),
  .borrow(borrow2)
);
  assign borrow = borrow1|borrow2;
endmodule

//module full_sub_tb;

reg a, b, cin;
wire diff, borrow;

full_sub dut (
  .a(a),
  .b(b),
  .cin(cin),
  .diff(diff),
  .borrow(borrow)
);

initial begin
  
  a=0; b=0; cin=0; #10;

  a=0; b=0; cin=1; #10;

  a=0; b=1; cin=0; #10;

  a=0; b=1; cin=1; #10;

  a=1; b=0; cin=0; #10;

  a=1; b=0; cin=1; #10;

  a=1; b=1; cin=0; #10;

  a=1; b=1; cin=1; #10;
  $finish;
end
  initial begin
    $display("time=%0t a=%b b=%b cin=%b  | diff=%b  borrow=%b",$time a,b,cin,diff,borrow);

  end

endmodule
