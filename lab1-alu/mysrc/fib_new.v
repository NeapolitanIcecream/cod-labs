module fib(
           input [31:0]  a,
           output [31:0] fib
           );
   wire [31:0]           w1, w2, w3;
   reg [31:0]            r1, r2, r3, count;
   parameter n = 4;
   parameter op = 5'h1;

   alu myalu3(r1, r2, op, r3);

   always@(posedge clk or negedge rst_n)
     begin
        if(~rst_n)
          begin
             temp <= 0;
             count <= 0;
             r1 <= a;
             r2 <= a;
          end
        if (count < n)
          begin
             r1 = r2;
             r2 = r3;
             count = count + 1;
          end
     end // always@ (posedge clk or negedge rst_n)
endmodule // fib
