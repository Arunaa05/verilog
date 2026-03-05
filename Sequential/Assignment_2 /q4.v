module test;
time t;
initial begin
#10 t= $time;
#20 ;
end
endmodule

//question: t=1ns , t= 20ns
//output 
t=1ns   t=0;
t=20ns  t=10;
