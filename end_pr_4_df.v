module end_pr_4_df(v , y , i);
    input [3:0]i;
    output [1:0]y;
    output v;

    assign {v,y} = i[3]?3'b111:
                   i[2]?3'b110:
                   i[1]?3'b101:
                   i[0]?3'b100:
                        3'b000;

endmodule 