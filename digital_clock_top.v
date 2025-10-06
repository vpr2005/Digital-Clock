module digital_clock_top(
    input clk, rst,
    output [6:0] seg,
    output [5:0] an
);
    wire clk_1hz;
    wire [5:0] sec, min;
    wire [4:0] hour;

    clock_divider div(.clk(clk), .rst(rst), .clk_out(clk_1hz));
    time_counter counter(.clk_1hz(clk_1hz), .rst(rst), .sec(sec), .min(min), .hour(hour));

    display_mux disp(
        .clk(clk), .rst(rst),
        .d0(sec % 10), .d1(sec / 10),
        .d2(min % 10), .d3(min / 10),
        .d4(hour % 10), .d5(hour / 10),
        .an(an), .seg(seg)
    );
endmodule
