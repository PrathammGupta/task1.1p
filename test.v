// create module
	module blink (
	input wire clk, 
	output wire[7:0] LED 
	);


	reg [31:0] cnt; 

initial begin

cnt <= 32'h00000000; 

end

always @(posedge clk) begin

cnt <= cnt + 1; 

end


assign LED[0] = cnt[25];     
assign LED[1] = cnt[24];     
assign LED[2] = cnt[23];     

endmodule
