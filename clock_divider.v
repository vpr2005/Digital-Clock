module clock_divider #(parameter DIVISOR = 100_000_000)(
    input clk,
    input rst,
    output reg clk_out
);
    reg [31:0] counter = 0;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else if (counter == DIVISOR/2 - 1) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
