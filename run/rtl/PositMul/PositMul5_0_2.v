module PositMul5_0_2(
  input        clock,
  input        reset,
  input  [3:0] io_sigA,
  input  [3:0] io_sigB,
  output [7:0] io_sigP
);
  wire [1:0] _T; // @[PositMul.scala 34:28]
  wire [1:0] _T_1; // @[PositMul.scala 34:67]
  wire [1:0] _T_2; // @[PositMul.scala 34:83]
  wire [1:0] _T_3; // @[PositMul.scala 34:122]
  wire [3:0] _T_4; // @[PositMul.scala 34:74]
  wire [3:0] _T_5; // @[Cat.scala 29:58]
  assign _T = io_sigA[3:2]; // @[PositMul.scala 34:28]
  assign _T_1 = $signed(_T); // @[PositMul.scala 34:67]
  assign _T_2 = io_sigB[3:2]; // @[PositMul.scala 34:83]
  assign _T_3 = $signed(_T_2); // @[PositMul.scala 34:122]
  assign _T_4 = $signed(_T_1) * $signed(_T_3); // @[PositMul.scala 34:74]
  assign _T_5 = $unsigned(_T_4); // @[Cat.scala 29:58]
  assign io_sigP = {_T_5,4'h0}; // @[PositMul.scala 34:13]
endmodule
