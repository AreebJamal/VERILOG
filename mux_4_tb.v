module mux_4_tb;
    reg [3:0]i;
    reg [1:0]s;
    wire y;

    mux_4_df mux_dut(y , s , i);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0 , mux_4_tb);

        $monitor("Time=%d \t s[1]=%b \t s[0]=%b \t i=%b \t y=%b", $time , s[1] , s[0] , i , y);

        i=4'b1010;
        s=2'd0; #10;
        s=2'd1; #10;
        s=2'd2; #10;
        s=2'd3; #10;

        #10 $finish;  

    end

endmodule 