module mux_4_st(y , s , i);
    input [3:0]i;
    input [2:0]s;
    output y;

    mux_2_df mux(n1 , [3:1]i , s[1]);
    mux_2_df mux(n2 , [2:0]i , s[1]);
    mux_2_df mux(y , {n1 , n2},s[0]);

endmodule

