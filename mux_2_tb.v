module mux_2_tb;
    reg [1:0]i;
    reg s;
    wire y;
   
    mux_2_df mux_dut(y , s , i);

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0 , mux_2_tb);

        $monitor("Time=%d \t s=%b \t i[0]=%b \t i[1]=%b \t y=%b", $time , s , i[0] , i[1] , y);

        i[0]=0; i[1]=0; s=0;  #10;
        i[0]=0; i[1]=0; s=1;  #10;
        i[0]=0; i[1]=1; s=0;  #10;
        i[0]=0; i[1]=1; s=1;  #10;
        i[0]=1; i[1]=0; s=0;  #10;
        i[0]=1; i[1]=0; s=1;  #10;
        i[0]=1; i[1]=1; s=0;  #10;
        i[0]=1; i[1]=1; s=1;  #10;
        
        

        #10 $finish;
    
    end

endmodule 