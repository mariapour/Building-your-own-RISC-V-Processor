\TLV

// If $sel is 1, $out gets $in1, otherwise $out gets $in2.

   $out[7:0] = $sel ? $in1[7:0] : $in2[7:0];
