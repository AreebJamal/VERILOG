module half_add_tb;
    reg a,b;
    wire s , c;

    half_add_st ha_dut(s,c, a,b);
    
    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0 , half_add_tb);

        $monitor("time=%d \t a=%b \t b=%b \t s=%b \t c=%b", $time , a,b,s,c);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        #10 $finish;
    
    end

endmodule 