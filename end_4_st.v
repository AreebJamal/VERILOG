module end_4_st(v , y , i);
    input [3:0]i;
    output [1:0]y;
    output v;
    

    or or1(y[1] , i[3] , i[2]);
    or or2(y[0] , i[3] , i[1]);
    or or3(v , i[3] , i[2] , i[1] , i[0]);

endmodule 