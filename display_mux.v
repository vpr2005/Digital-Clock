module display_mux(
    input clk, rst,
    input [3:0] d0, d1, d2, d3, d4, d5,
    output reg [5:0] an,
    output [6:0] seg
);
    reg [2:0] sel = 0;
    wire [3:0] digit;

    always @(posedge clk or posedge rst) begin
        if (rst) sel <= 0;
        else sel <= sel + 1;
    end

    always @(*) begin
        case (sel)
            0: an = 6'b111110;
            1: an = 6'b111101;
            2: an = 6'b111011;
            3: an = 6'b110111;
            4: an = 6'b101111;
            5: an = 6'b011111;
            default: an = 6'b111111;
        endcase
    end

    assign digit = (sel == 0) ? d0 :
                   (sel == 1) ? d1 :
                   (sel == 2) ? d2 :
                   (sel == 3) ? d3 :
                   (sel == 4) ? d4 : d5;

    seg7_decoder dec(.digit(digit), .seg(seg));
endmodule
