//4X2 PRIORITY ENCODER BEHAVIORAL

module end_pr_4_bh(v,y,i);

	input [3:0]i;
	output reg [1:0]y;
	output reg v;

	always@(*) begin
		if(i[3]) {v,y}=3'b111;
		else if(i[2]) {v,y}=3'b110;
		else if(i[1]) {v,y}=3'b101;
		else if(i[0]) {v,y}=3'b100;
		else {v,y}=3'b000;
	end

endmodule 