module fft_module(
    input wire clk,
    input wire [15:0] sample_in,
    input wire valid_in,
    output reg [15:0] fft_out,
    output reg valid_out
);

always @(posedge clk) begin
    if (valid_in) begin
        // Placeholder: pass-through (replace with real FFT later)
        fft_out <= sample_in;
        valid_out <= 1;
    end else begin
        valid_out <= 0;
    end
end

endmodule