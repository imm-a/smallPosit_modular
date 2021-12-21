module PositMul7_1_2(
  input        clock,
  input        reset,
  input  [4:0] io_sigA,
  input  [4:0] io_sigB,
  output [9:0] io_sigP
);
  wire [2:0] _T; // @[PositMul.scala 34:28]
  wire [2:0] _T_1; // @[PositMul.scala 34:67]
  wire [2:0] _T_2; // @[PositMul.scala 34:83]
  wire [2:0] _T_3; // @[PositMul.scala 34:122]
  wire [5:0] _T_4; // @[PositMul.scala 34:74]
  wire [5:0] _T_5; // @[Cat.scala 29:58]
  assign _T = io_sigA[4:2]; // @[PositMul.scala 34:28]
  assign _T_1 = $signed(_T); // @[PositMul.scala 34:67]
  assign _T_2 = io_sigB[4:2]; // @[PositMul.scala 34:83]
  assign _T_3 = $signed(_T_2); // @[PositMul.scala 34:122]
  assign _T_4 = $signed(_T_1) * $signed(_T_3); // @[PositMul.scala 34:74]
  assign _T_5 = $unsigned(_T_4); // @[Cat.scala 29:58]
  assign io_sigP = {_T_5,4'h0}; // @[PositMul.scala 34:13]
endmodule
