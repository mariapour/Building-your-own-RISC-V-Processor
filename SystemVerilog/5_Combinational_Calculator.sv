// op[1:0] selects the operation:
// 00 = addition
// 01 = subtraction
// 10 = multiplication
// 11 = division
// This is combinational logic, so there is no clock.
module Combinational_Calculator(
  input logic [31:0] val1,
  input logic [31:0] val2,
  input logic [1:0] op,
  output logic [31:0] out);

  logic [31:0] sum;
  logic [31:0] diff;
  logic [31:0] prod;
  logic [31:0] quot;

  assign sum = val1 + val2;
  assign diff = val1 - val2;
  assign prod = val1 * val2;
  assign quot = (val2 == 32'b0) ? 32'b0 : (val1/val2);
// Protect against division by zero.
  assign out = (op == 2'b00) ? sum :
               (op == 2'b01) ? diff :
               (op == 2'b10) ? prod :
                               quot;

endmodule
