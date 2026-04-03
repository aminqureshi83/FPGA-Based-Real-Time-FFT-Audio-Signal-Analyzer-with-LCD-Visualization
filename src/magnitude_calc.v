module magnitude_calc(
    input wire clk,
    input wire [15:0] real,
    input wire valid_in,
    output reg [15:0] magnitude,
    output reg valid_out
);

always @(posedge clk) begin
    if (valid_in) begin
        magnitude <= real; // simplified
        valid_out <= 1;
    end else begin
        valid_out <= 0;
    end
end

endmodule