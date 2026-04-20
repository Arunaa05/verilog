module casex_c;
reg c = 3’b00x;
always@(*)
begin
casex( c )
3’b000:st1;
3’b100:st2;
3’b001:st3;

endcase
end
endmodule

/*output
st1    //In case / casex, the first matching item executes.
*/
