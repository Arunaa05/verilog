module d_latch(input d,en,output reg q);
  always@(*)begin
    if(en)begin
      q <=d;
    end
  end
endmodule
    
