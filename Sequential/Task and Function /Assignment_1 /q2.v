module sum(
  input [3:0]x,y,
  output [4:0]c
);
  
  function [4:0]add;
    input [3:0]a,b;
    begin
      add=a+b;
    end
    endfunction
  
  assign c=add(x,y);
  
endmodule
