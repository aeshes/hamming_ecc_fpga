module hamming_ecc_encoder(
    input logic clk,
    input logic [3:0] data,
    output reg [6:0] codeword
);

    always @(posedge clk)
    begin
        codeword[6] <= data[0] ^ data[1] + data[3];
        codeword[5] <= data[0] ^ data[2] ^ data[3];
        codeword[4] <= data[0];
        codeword[3] <= data[1] ^ data[2] ^ data[3];
        codeword[2] <= data[1];
        codeword[1] <= data[2];
        codeword[0] <= data[3];
    end
endmodule
