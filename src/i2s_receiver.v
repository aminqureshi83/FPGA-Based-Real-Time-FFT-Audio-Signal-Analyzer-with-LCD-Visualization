module i2s_receiver(
    input wire clk,        // system clock
    input wire sck,        // I2S clock
    input wire ws,         // word select (L/R)
    input wire sd,         // serial data
    output reg [15:0] sample,
    output reg valid
);

reg [4:0] bit_cnt = 0;
reg [15:0] shift_reg = 0;

always @(posedge sck) begin
    shift_reg <= {shift_reg[14:0], sd};
    bit_cnt <= bit_cnt + 1;

    if (bit_cnt == 15) begin
        sample <= shift_reg;
        valid <= 1;
        bit_cnt <= 0;
    end else begin
        valid <= 0;
    end
end

endmodule