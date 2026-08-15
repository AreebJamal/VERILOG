module full_add_tb; 
 	reg a, b, cin;
 	wire s,cout;
    
 	full_add_st fa_dut(s,cout,a,b,cin);

 	initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, full_add_tb);

 		$monitor("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t cout=%b",$time,a,b,cin,s,cout);

 		a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
		#10 $finish;
 	end // initial

endmodule 