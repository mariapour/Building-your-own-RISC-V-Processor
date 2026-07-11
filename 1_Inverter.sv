// In SystemVerilog, inputs and outputs must be declared explicitly.
// Verilog is more explicit RTL, while TL-Verilog describes pipeline timing more compactly.

module Inverter (
   input  logic in1,
   output logic out
);

   assign out = ~in1;

endmodule