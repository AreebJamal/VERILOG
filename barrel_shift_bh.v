module barrel_shift(
    input [7:0]i;
    input [2:0]n;
    input lr;
    output reg [7:0]out;
    );

    always @(*) begin
        if (lr) 
            out = i << n;
            
        else 
            out = i >> n;
        
    end
    

    
endmodule