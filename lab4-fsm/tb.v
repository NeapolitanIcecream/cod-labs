module test_top();
    reg clk, rst_n;
    wire [31:0] data1;

    top uut(
        .clk(clk),
        .rst_n(rst_n),
        .data1(data1)
    );

    always #10 clk = ~clk;

    initial begin
        $readmemh(`IM_DATA_FILE, uut.ram1.mem, 0, `NUM_IM_DATA);
        clk = 0;
        #0 $display("%5d:开始初始化。clk周期为10", $time);
        #10 rst_n = 1;
        #10 rst_n = 0;
        #10 rst_n = 1;
        $display("%5d:程序开始执行！", $time);
        #1000
        $finish;
    end

endmodule