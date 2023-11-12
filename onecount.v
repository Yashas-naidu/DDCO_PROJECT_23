module count_ones (
    input [7:0] in,
    output reg [3:0] out
);
always @(*) begin
    out = in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7];
end
endmodule