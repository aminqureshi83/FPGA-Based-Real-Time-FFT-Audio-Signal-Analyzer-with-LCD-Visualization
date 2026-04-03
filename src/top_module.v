module top_module(
    input clk,
    input sck,
    input ws,
    input sd,
    output spi_mosi,
    output spi_clk,
    output spi_cs
);

wire [15:0] sample;
wire valid_sample;

wire [15:0] fft_data;
wire fft_valid;

wire [15:0] mag_data;
wire mag_valid;

i2s_receiver i2s_inst(
    .clk(clk),
    .sck(sck),
    .ws(ws),
    .sd(sd),
    .sample(sample),
    .valid(valid_sample)
);

fft_module fft_inst(
    .clk(clk),
    .sample_in(sample),
    .valid_in(valid_sample),
    .fft_out(fft_data),
    .valid_out(fft_valid)
);

magnitude_calc mag_inst(
    .clk(clk),
    .real(fft_data),
    .valid_in(fft_valid),
    .magnitude(mag_data),
    .valid_out(mag_valid)
);

lcd_driver lcd_inst(
    .clk(clk),
    .data_in(mag_data),
    .valid(mag_valid),
    .spi_mosi(spi_mosi),
    .spi_clk(spi_clk),
    .spi_cs(spi_cs)
);

endmodule