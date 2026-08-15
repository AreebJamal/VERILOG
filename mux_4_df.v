module mux_4_df(y , s , i);
    input [3:0]i;
    input [1:0]s;
    output y;

    assign y = i[s];
    //assign y = ~|s?i[0]:(&s?i[3]:(s[0]?i[1]:i[2]));


endmodule 