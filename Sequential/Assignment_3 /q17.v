module tb;
int alpha, beta;
initial 
begin
alpha = 4; beta = 3;
beta <= beta + alpha;
alpha <= alpha + beta;
alpha=alpha+2;
$display("Alpha=%0d Beta=%0d", alpha, beta);
end
endmodule

/*output
alpha=6 beta =3
*/
