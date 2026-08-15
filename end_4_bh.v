module end_4_bh(v , y , i);
    input [3:0]i;
    output reg [1:0]y;
    output reg v;

    always @(*) begin
        case (i)
            4'd1: {v , y} = 3'b100;
            4'd2: {v , y} = 3'b101;
            4'd4: {v , y} = 3'b110;
            4'd8: {v , y} = 3'b111;

            default: {v , y} = 3'b000;

        endcase
        
    end
endmodule 