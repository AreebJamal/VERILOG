module full_add_bh(s, cout , a , b , cin);
       input a , b , cin ;
       output reg s , cout ;

    always @(a,b,cin) 
    begin
        s = a^b^cin;
        cout = (a&b)|(b&cin)|(a&cin);
    end

endmodule