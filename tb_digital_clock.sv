module tb_digital_clock;
    logic clk = 0, rst;
    wire [6:0] seg;
    wire [5:0] an;

    digital_clock_top dut(.clk(clk), .rst(rst), .seg(seg), .an(an));

    always #5 clk = ~clk;

    initial begin
        rst = 1; #20; rst = 0;
        repeat (1000) @(posedge clk);
        $display("Simulation completed (short run)");
        $finish;
    end
endmodule
