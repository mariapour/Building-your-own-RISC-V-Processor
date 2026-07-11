// && means AND, || means OR, ^ means XOR.
// In SystemVerilog, inputs and outputs must be declared explicitly.
// For vectors, && and || are logical operators, while & and | are bitwise operators.

module two_input_gates (
   input  logic in1,
   input  logic in2,
   output logic and_out,
   output logic or_out,
   output logic xor_out
);

   assign and_out = in1 && in2;
   assign or_out  = in1 || in2;
   assign xor_out = in1 ^ in2;

endmodule
