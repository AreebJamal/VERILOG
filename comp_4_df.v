module comp_4_df(gr , sm , eq , a , b);
    input [3:0]a , b;
    output gr , sm , eq;

    assign eq = &(a~^b);
    assign gr = (a[3]& ~b[3])|
                ((a[3]~^b[3]) & (a[2]& ~b[2]))|
                ((a[3]~^b[3]) & (a[2]~^b[2]) & (a[1]& ~b[1]))|
                ((a[3]~^b[3]) & (a[2]~^b[2]) & (a[1]~^b[1]) & (a[0]& ~b[0]));
    assign sm = ~(gr|eq);
    
    /*
    
    assign eq = (a==b);
    assign gr = (a>b);
    assign sm = (a<b);

    */
endmodule 