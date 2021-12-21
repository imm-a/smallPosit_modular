module PositMul7_2_xor(
  input        clock,
  input        reset,
  input  [3:0] io_sigA,
  input  [3:0] io_sigB,
  output [7:0] io_sigP
);
  wire [3:0] _T; // @[PositMul.scala 51:23]
  wire [3:0] _T_1; // @[PositMul.scala 51:23]
  wire [3:0] _T_2; // @[Cat.scala 29:58]
  assign _T = $signed(io_sigA) ^ $signed(io_sigB); // @[PositMul.scala 51:23]
  assign _T_1 = $signed(_T); // @[PositMul.scala 51:23]
  assign _T_2 = $unsigned(_T_1); // @[Cat.scala 29:58]
  assign io_sigP = {_T_2,4'h0}; // @[PositMul.scala 51:9]
endmodule
