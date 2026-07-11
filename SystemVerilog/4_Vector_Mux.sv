// If sel is 1, out gets in1, otherwise out gets in2.

module vector_mux (
   input  logic       sel,
   input  logic [7:0] in1,
   input  logic [7:0] in2,
   output logic [7:0] out
);

   assign out = sel ? in1 : in2;

endmodule
