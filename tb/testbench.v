module testbench;

reg clk = 0;
reg [15:0] sample_in = 0;
reg valid_in = 0;

wire [15:0] fft_out;
wire valid_out;

// Instantiate your module
fft_module uut (
    .clk(clk),
    .sample_in(sample_in),
    .valid_in(valid_in),
    .fft_out(fft_out),
    .valid_out(valid_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    #10;

    // Apply test inputs
    repeat (20) begin
        sample_in = $random;
        valid_in = 1;
        #10;
    end

    valid_in = 0;

    #100;
    $stop;
end

endmodule