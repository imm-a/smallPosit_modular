module PositMul6_1(
  input        clock,
  input        reset,
  input  [3:0] io_sigA,
  input  [3:0] io_sigB,
  output [7:0] io_sigP
);
  wire [7:0] _T; // @[PositMul.scala 17:26]
  assign _T = $signed(io_sigA) * $signed(io_sigB); // @[PositMul.scala 17:26]
  assign io_sigP = $unsigned(_T); // @[PositMul.scala 17:13]
endmodule
