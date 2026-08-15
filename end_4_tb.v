// 4X2 ENCODER TESTBENCH

module end_4_tb;
    reg [3:0]i;
    wire [1:0]y;
    wire v;

    end_pr_4_df end_dut(v , y , i);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0 , end_4_tb);

        $monitor("Time=%d \t i=%b \t y=%b \t v=%b" , $time , i , y , v);
        
        i=4'd0; #10; // zero case no input one 
        i=4'd1; #10; 
        i=4'd2; #10;
        i=4'd4; #10;
        i=4'd8; #10;
        i=4'd5; #10; // invalid case (multiple inputs one)

        #10 $finish;

    end

endmodule 
    