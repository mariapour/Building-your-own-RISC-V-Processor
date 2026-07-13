// $op[1:0] selects the operation:
// 00 = addition, 01 = subtraction, 10 = multiplication, 11 = division.

\TLV
   $sum[31:0] = $val1[31:0] + $val2[31:0];
   $diff[31:0] = $val1[31:0] - $val2[31:0];
   $prod[31:0] = $val1[31:0] * $val2[31:0];
   $quot[31:0] = ($val1[31:0] == 32'b0) ? 32'b0 : ($val1[31:0]/$va2[31:0]);
// If $val2 is zero, return 0 to avoid division by zero.

   $out[31:0] = ($op[1:0] == 2'b00) ? $sum[31:0]  :
                ($op[1:0] == 2'b01) ? $diff[31:0] :
                ($op[1:0] == 2'b10) ? $prod[31:0] :
                                      $quot[31:0];
