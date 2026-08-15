module end_4_df(v , y , i);
    input [3:0]i;
    output [1:0]y;
    output v;  // valid output used to check any one input is one or not

    assign y = {i[3]|i[2] , i[3]|i[1]};
    assign v = |i;

endmodule 