module fib(
           input [31:0]  a,
           output [31:0] fib
           );
   wire [31:0]           w1, w2, w3;
   parameter op = 5'h1;

   alu myalu1(a, a, op, w1);
   alu myalu2(a, w1, op, w2);
   alu myalu3(w1, w2, op, w3);
   alu myalu4(w2, w3, op, fib);
endmodule // fib
