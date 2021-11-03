module PositMul8_1(
  input         clock,
  input         reset,
  input  [5:0]  io_sigA,
  input  [5:0]  io_sigB,
  output [11:0] io_sigP
);
  wire [11:0] _T; // @[PositMul.scala 17:26]
  assign _T = $signed(io_sigA) * $signed(io_sigB); // @[PositMul.scala 17:26]
  assign io_sigP = $unsigned(_T); // @[PositMul.scala 17:13]
endmodule
