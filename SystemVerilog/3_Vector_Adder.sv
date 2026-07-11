 // Extend each 4-bit input to 8 bits before addition.

module vector_adder(
  input  logic [3:0] in1,
  input  logic [3:0] in2,
  output logic [7:0] out
);

  assign out[7:0] = {4'b0000 , in1} + {4'b0000 , in2};

endmodule
