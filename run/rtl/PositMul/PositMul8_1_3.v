module PositMul8_1_3(
  input         clock,
  input         reset,
  input  [5:0]  io_sigA,
  input  [5:0]  io_sigB,
  output [11:0] io_sigP
);
  wire [2:0] _T; // @[PositMul.scala 32:20]
  wire [2:0] _T_1; // @[PositMul.scala 32:59]
  wire [2:0] _T_2; // @[PositMul.scala 33:20]
  wire [2:0] _T_3; // @[PositMul.scala 33:59]
  wire [5:0] _T_4; // @[PositMul.scala 35:23]
  wire [5:0] _T_5; // @[Cat.scala 29:58]
  assign _T = io_sigA[5:3]; // @[PositMul.scala 32:20]
  assign _T_1 = $signed(_T); // @[PositMul.scala 32:59]
  assign _T_2 = io_sigB[5:3]; // @[PositMul.scala 33:20]
  assign _T_3 = $signed(_T_2); // @[PositMul.scala 33:59]
  assign _T_4 = $signed(_T_1) * $signed(_T_3); // @[PositMul.scala 35:23]
  assign _T_5 = $unsigned(_T_4); // @[Cat.scala 29:58]
  assign io_sigP = {_T_5,6'h0}; // @[PositMul.scala 35:13]
endmodule
