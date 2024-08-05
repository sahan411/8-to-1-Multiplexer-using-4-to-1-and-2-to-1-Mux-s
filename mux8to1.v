module mux8to1(input [7:0] DATA_IN, input [2:0] SELECT, output DATA_OUT);
    
	wire [1:0] muxout;

    mux4to1 mux1 (.DATA_IN(DATA_IN[3:0]), .SELECT(SELECT[1:0]), .DATA_OUT(muxout[0]));
    
	mux4to1 mux2 (.DATA_IN(DATA_IN[7:4]), .SELECT(SELECT[1:0]), .DATA_OUT(muxout[1]));
    
	mux2to1 mux3 (.DATA_IN(muxout), .SELECT(SELECT[2]), .DATA_OUT(DATA_OUT));
	
endmodule
