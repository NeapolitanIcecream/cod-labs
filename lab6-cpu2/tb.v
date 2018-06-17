module test();

    reg clk, rst_n;
    top uut(clk, rst_n); 
    integer i;
  initial 
    begin
      rst_n = 0;
      clk = 0;
      #100
      rst_n = 1;
      $display("%5d: reset complete.", $time);
      $readmemh(`IM_DATA_FILE, uut.mem1.mem, 0, `NUM_IM_DATA-1);
      for (i = 0; i < `NUM_IM_DATA; i = i + 1)
        $display("%h", uut.mem1.mem[i]);
      $display("%5d: memory initialization finished.", $time);
      #`SIM_TIME;
      $display("%5d: simulation finished!", $time);
      $finish;


    end

  always #1 clk = ~clk;
endmodule
