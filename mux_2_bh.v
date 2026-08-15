module mux_2_bh(y ,s ,i);
    input [1:0]i;
    input s;
    output reg y;

    always @(s , i)

    if(s)
      y = i[1];
    else
      y = i[0];

endmodule