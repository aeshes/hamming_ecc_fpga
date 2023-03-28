module hamming_ecc_decoder_tb();
    logic clk;
    logic [6:0] codeword;
    logic [2:0] syndrome;
    logic [3:0] data;
    
    hamming_ecc_decoder dut(clk, codeword, syndrome, data);
    
    initial begin
        clk <= 0;
        codeword <= '0;
        forever #5 clk <= ~clk;
    end
    
    initial begin
        $monitor("codeword = %b, syndrome = %b, data = %b", codeword, syndrome, data);
         
        #100 codeword = 7'b0111100;
        #100 codeword = 7'b1011010;
        #100 codeword = 7'b0100101;
        #100 codeword = 7'b1111100;
        #100 codeword = 7'b1011011;
    end
    
    always @(posedge clk) begin
        $monitor("codeword = %b, syndrome = %b, data = %b", codeword, syndrome, data);
    end
endmodule
