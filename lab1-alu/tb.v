module alu_testbench;
   //integer [31:0] a, b;
   //integer        a, b, op;
   //reg [31:0] out;
   //reg [4:0]  op;
   reg [31:0] a, b;
   reg [4:0] op;
   wire [31:0] out;
   wire [31:0] fib;

   alu myalu(a, b, op, out);
   initial
     begin
        $dumpfile("testbench.vcd");
        $dumpvars;
        a = 32'h3;
        b = 32'h2;
        op = 5'h0;
        #100;
        op = 5'h1;
        #100;
        op = 5'h2;
        #100;
        op = 5'h3;
        #100;
        op = 5'h4;
        #100;
        op = 5'h5;
        #100;
        op = 5'h6;
        #100;
   end // initial begin
   fib myfib(b, fib);
endmodule // alu_testbench

