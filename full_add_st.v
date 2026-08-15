module full_add_st(s , cout , a,b,cin);
    input a , b , cin;
    output s , cout ;
    wire n1 , n2 , n3;

    xor xor1(s , a,b,cin);
    and and1(n1 , a,b);
    and and2(n2 , b,cin);
    and and3(n3 , a,cin);
    or or1(cout ,n1,n2,n3);

endmodule