module mux8to1_tb();
    
	reg [7:0] data_in;
    reg [2:0] select;
    wire data_out;

    mux8to1 uut (.DATA_IN(data_in), .SELECT(select), .DATA_OUT(data_out));

    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars;

        data_in = 8'b10101010;
        
        #10 select = 3'b000;
        #10 select = 3'b001;
        #10 select = 3'b010;
        #10 select = 3'b011;
        #10 select = 3'b100;
        #10 select = 3'b101;
        #10 select = 3'b110;
        #10 select = 3'b111;
        
        #10 $finish;
    end
	
endmodule
